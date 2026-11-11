defmodule Webmania.Model do
  @moduledoc "Typed model conversion. Serialization is an explicit disclosure of fiscal data."
  alias Webmania.{Error, JSON}

  @doc false
  def new(module, attrs, opts), do: construct(module, fn -> new_attrs(module, attrs) end, opts)

  defp new_attrs(module, attrs) when is_map(attrs) and not is_struct(attrs) do
    try do
      fields = module.__fields__()

      {values, extra} =
        Enum.reduce(attrs, {%{}, %{}}, fn {key, value}, {values, extra} ->
          Webmania.Runtime.checkpoint()

          case Enum.find(fields, fn {name, atom, _} -> key == name or key == atom end) do
            {_, atom, _} ->
              if Map.has_key?(values, atom), do: throw(:invalid)
              {Map.put(values, atom, value), extra}

            nil when key == :__extra__ ->
              if not is_map(value) or is_struct(value) or
                   Enum.any?(Map.keys(value), &Map.has_key?(extra, &1)),
                 do: throw(:invalid)

              {values, Map.merge(extra, value)}

            nil when is_binary(key) ->
              if Map.has_key?(extra, key), do: throw(:invalid)
              {values, Map.put(extra, key, value)}

            _ ->
              throw(:invalid)
          end
        end)

      value = struct(module, Map.put(values, :__extra__, extra))
      to_value(value)
    rescue
      _ -> invalid()
    catch
      :throw, {:webmania_control, error} -> {:error, error}
      _, _ -> invalid()
    end
  end

  defp new_attrs(_, _), do: invalid()

  @doc false
  def new_union(module, variant, value, opts) do
    construct(module, fn -> to_value(struct(module, variant: variant, value: value)) end, opts)
  end

  @spec from_json(module(), binary(), keyword()) :: {:ok, struct()} | {:error, Error.t()}
  def from_json(module, text, opts \\ []) do
    construct(module, fn -> JSON.decode(text) end, opts)
  end

  @spec from_value(module(), JSON.value(), keyword()) :: {:ok, struct()} | {:error, Error.t()}
  def from_value(module, value, opts \\ []) do
    construct(module, fn -> {:ok, value} end, opts)
  end

  defp construct(module, source, opts) do
    Webmania.Runtime.exchange(
      fn ->
        with {:ok, value} <- source.(),
             {:ok, encoded} <- JSON.encode(value, limit: 16 * 1024 * 1024),
             do:
               {:ok,
                %{
                  "protocol" => 1,
                  "action" => "validate",
                  "projection_hints" => true,
                  "model" => module.__model__(),
                  "value_json" => encoded
                }}
      end,
      opts,
      fn result ->
        project(module, result["value"], result["projection_hints"], result["variant"])
      end
    )
  end

  @spec validate(struct(), keyword()) :: :ok | {:error, Error.t()}
  def validate(value, opts \\ [])

  def validate(%module{} = value, opts) do
    with {:ok, _} <- construct(module, fn -> to_value(value) end, opts), do: :ok
  end

  def validate(_, _), do: invalid()

  @spec to_json(struct(), keyword()) :: {:ok, binary()} | {:error, Error.t()}
  def to_json(value, opts \\ []) do
    opts =
      if is_list(opts) and not match?([_, _, _ | _], opts) and Keyword.keyword?(opts),
        do: Keyword.put_new(opts, :limit, 16 * 1024 * 1024),
        else: :invalid

    with {:ok, raw} <- to_value(value),
         do: JSON.encode(raw, opts)
  end

  @spec to_value(struct()) :: {:ok, JSON.value()} | {:error, Error.t()}
  def to_value(%module{} = value) do
    try do
      {raw, _} = emit_type(module, value, 0, 40 * 1024 * 1024)
      {:ok, raw}
    rescue
      _ -> invalid()
    catch
      :throw, {:webmania_control, error} -> {:error, error}
      _, _ -> invalid()
    end
  end

  def to_value(_), do: invalid()

  @doc false
  def project(type, value, hints \\ nil, legacy_variant \\ nil) do
    try do
      tags = projection_tags(hints)
      {result, rest} = project_node(type, value, tags)
      if rest != <<>>, do: throw(:invalid)

      if legacy_variant && is_atom(type) && function_exported?(type, :__variants__, 0) &&
           Atom.to_string(result.variant) != legacy_variant,
         do: throw(:invalid)

      {:ok, result}
    rescue
      _ -> projection_error()
    catch
      :throw, {:webmania_control, error} -> {:error, error}
      _, _ -> projection_error()
    end
  end

  defp projection_tags(%{
         "format" => "variant-preorder-u8-hex-v1",
         "metadata_sha256" => hash,
         "indices_hex" => hex
       })
       when is_binary(hash) and is_binary(hex) and byte_size(hex) <= 40 * 1024 * 1024 do
    Webmania.Runtime.checkpoint(true)
    if hash != Webmania.Generated.metadata_sha256(), do: throw(:invalid)
    result = Base.decode16(hex, case: :lower)
    Webmania.Runtime.checkpoint(true)

    case result do
      {:ok, tags} -> tags
      _ -> throw(:invalid)
    end
  end

  defp projection_tags(_), do: throw(:invalid)

  defp project_node(type, value, tags) do
    Webmania.Runtime.checkpoint()
    project_type(type, value, tags)
  end

  defp project_type({:optional, type}, value, tags), do: project_node(type, value, tags)
  defp project_type({:nullable, _}, nil, tags), do: {nil, tags}
  defp project_type({:nullable, type}, value, tags), do: project_node(type, value, tags)

  defp project_type({:array, type}, value, tags) when is_list(value),
    do: Enum.map_reduce(value, tags, &project_node(type, &1, &2))

  defp project_type(type, value, tags)
       when type in [:string, :i64, :boolean, :number, :null, :scalar, :map, :value],
       do: {parse_type(type, value), tags}

  defp project_type(module, value, tags) when is_atom(module) do
    Code.ensure_loaded!(module)

    if function_exported?(module, :__fields__, 0) do
      if not is_map(value) or is_struct(value), do: throw(:invalid)

      {fields, remaining, tags} =
        Enum.reduce(module.__fields__(), {%{}, value, tags}, fn {name, key, type},
                                                                {attrs, rest, tags} ->
          case Map.pop(rest, name, :unset) do
            {:unset, _} ->
              case type do
                {:optional, _} -> {attrs, rest, tags}
                _ -> throw(:invalid)
              end

            {v, rest} ->
              {projected, tags} = project_node(type, v, tags)
              {Map.put(attrs, key, projected), rest, tags}
          end
        end)

      {struct(module, Map.put(fields, :__extra__, remaining)), tags}
    else
      case tags do
        <<index, tail::binary>> ->
          case Enum.at(module.__variants__(), index) do
            {variant, type} ->
              {projected, tail} = project_node(type, value, tail)
              {struct(module, variant: variant, value: projected), tail}

            nil ->
              throw(:invalid)
          end

        _ ->
          throw(:invalid)
      end
    end
  end

  defp project_type(_, _, _), do: throw(:invalid)

  defp parse_type(:string, value) when is_binary(value), do: value

  defp parse_type(:i64, value)
       when is_integer(value) and value >= -9_223_372_036_854_775_808 and
              value <= 9_223_372_036_854_775_807,
       do: value

  defp parse_type(:boolean, value) when is_boolean(value), do: value
  defp parse_type(:number, %Webmania.Number{} = value), do: value
  defp parse_type(:number, value) when is_integer(value), do: value
  defp parse_type(:null, nil), do: nil

  defp parse_type(:scalar, value)
       when is_binary(value) or is_integer(value) or is_boolean(value) or is_nil(value),
       do: value

  defp parse_type(:scalar, %Webmania.Number{} = value), do: value
  defp parse_type(:map, value) when is_map(value) and not is_struct(value), do: value
  defp parse_type(:value, value), do: value

  defp parse_type(_, _), do: throw(:invalid)

  defp take(n, budget) when n <= budget do
    Webmania.Runtime.checkpoint()
    budget - n
  end

  defp take(_, _), do: throw(:invalid)
  defp emit_type(_, _, depth, _) when depth > 64, do: throw(:invalid)
  defp emit_type({:optional, type}, value, depth, n), do: emit_type(type, value, depth, n)
  defp emit_type({:nullable, _}, nil, _, n), do: {nil, take(4, n)}
  defp emit_type({:nullable, type}, value, depth, n), do: emit_type(type, value, depth, n)

  defp emit_type({:array, type}, values, depth, n) when is_list(values) do
    Enum.map_reduce(values, take(2, n), fn value, n ->
      emit_type(type, value, depth + 1, take(1, n))
    end)
  end

  defp emit_type(type, value, _depth, n)
       when type in [:string, :i64, :boolean, :number, :scalar, :null] do
    value = parse_type(type, value)

    size =
      cond do
        is_binary(value) -> byte_size(value) + 2
        is_integer(value) -> byte_size(Integer.to_string(value))
        is_struct(value, Webmania.Number) -> byte_size(Webmania.Number.reveal(value))
        true -> 5
      end

    {value, take(size, n)}
  end

  defp emit_type(:value, value, depth, n), do: raw(value, depth, n)

  defp emit_type(:map, value, depth, n) when is_map(value) and not is_struct(value),
    do: raw(value, depth, n)

  defp emit_type(module, %module{} = value, depth, n) do
    if function_exported?(module, :__fields__, 0) do
      fields = module.__fields__()
      declared = MapSet.new(Enum.map(fields, &elem(&1, 0)))
      extra = Map.fetch!(value, :__extra__)

      if not is_map(extra) or is_struct(extra) or
           Enum.any?(extra, fn {key, _} -> not is_binary(key) or MapSet.member?(declared, key) end),
         do: throw(:invalid)

      {map, n} = raw(extra, depth, n)

      Enum.reduce(fields, {map, n}, fn {name, key, type}, {map, n} ->
        case {type, Map.fetch!(value, key)} do
          {{:optional, _}, :unset} ->
            {map, n}

          {_, :unset} ->
            throw(:invalid)

          {type, value} ->
            n = take(byte_size(name) + 4, n)
            {wire, n} = emit_type(type, value, depth + 1, n)
            {Map.put(map, name, wire), n}
        end
      end)
    else
      case List.keyfind(module.__variants__(), value.variant, 0) do
        {_, type} -> emit_type(type, value.value, depth, n)
        _ -> throw(:invalid)
      end
    end
  end

  defp emit_type(_, _, _, _), do: throw(:invalid)
  defp raw(_, depth, _) when depth > 64, do: throw(:invalid)

  defp raw(%Webmania.Number{} = value, _, n),
    do: {value, take(byte_size(Webmania.Number.reveal(value)), n)}

  defp raw(value, depth, n) when is_map(value) and not is_struct(value) do
    Enum.reduce(value, {%{}, take(2, n)}, fn {key, value}, {map, n} ->
      if not is_binary(key), do: throw(:invalid)
      {value, n} = raw(value, depth + 1, take(byte_size(key) + 4, n))
      {Map.put(map, key, value), n}
    end)
  end

  defp raw(value, depth, n) when is_list(value),
    do: Enum.map_reduce(value, take(2, n), fn v, n -> raw(v, depth + 1, take(1, n)) end)

  defp raw(value, _, n) when is_binary(value), do: {value, take(byte_size(value) + 2, n)}

  defp raw(value, _, n) when is_integer(value),
    do: {value, take(byte_size(Integer.to_string(value)), n)}

  defp raw(value, _, n) when is_boolean(value) or is_nil(value), do: {value, take(5, n)}
  defp raw(_, _, _), do: throw(:invalid)
  defp invalid, do: {:error, Error.new("validation", "Value does not fit the typed model.")}

  defp projection_error,
    do: {:error, Error.new("protocol", "Native nominal projection metadata mismatch.")}
end
