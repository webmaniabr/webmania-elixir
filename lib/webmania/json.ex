defmodule Webmania.JSON do
  @moduledoc "Bounded exact JSON. Input keys remain strings; duplicates and floats are rejected."
  @type value ::
          nil
          | boolean()
          | integer()
          | Webmania.Number.t()
          | String.t()
          | [value()]
          | %{String.t() => value()}

  @spec decode(binary(), keyword()) :: {:ok, value()} | {:error, Webmania.Error.t()}
  def decode(bytes, opts \\ []) do
    if valid_options?(opts), do: decode_checked(bytes, opts), else: invalid()
  end

  defp decode_checked(bytes, opts) do
    limit = Keyword.get(opts, :limit, 16 * 1024 * 1024)
    depth = Keyword.get(opts, :depth, 64)

    if is_binary(bytes) and byte_size(bytes) <= limit do
      cursor = {__MODULE__, make_ref()}
      Process.put(cursor, 0)

      try do
        Webmania.Runtime.checkpoint(true)

        start = fn {level, _, _} ->
          Webmania.Runtime.checkpoint()
          if level > depth, do: throw(:invalid)
          {level + 1, :object, %{}}
        end

        callbacks = %{
          null: nil,
          # OTP normalizes -0 and exponent-only numbers before callbacks. Read
          # each original numeric token with a single forward cursor instead.
          integer: fn _ -> original_number(bytes, cursor) end,
          float: fn _ -> original_number(bytes, cursor) end,
          string: fn value ->
            Webmania.Runtime.checkpoint()
            value
          end,
          object_start: start,
          object_push: fn key, value, {level, :object, map} ->
            Webmania.Runtime.checkpoint()
            if level > depth or Map.has_key?(map, key), do: throw(:invalid)
            {level, :object, Map.put(map, key, value)}
          end,
          object_finish: fn {_, :object, map}, old -> {map, old} end,
          array_start: fn {level, _, _} ->
            Webmania.Runtime.checkpoint()
            if level > depth, do: throw(:invalid)
            {level + 1, :array, []}
          end,
          array_push: fn value, {level, :array, list} ->
            Webmania.Runtime.checkpoint()
            if level > depth, do: throw(:invalid)
            {level, :array, [value | list]}
          end,
          array_finish: fn {_, :array, list}, old -> {Enum.reverse(list), old} end
        }

        {value, _, rest} = :json.decode(bytes, {0, :root, nil}, callbacks)
        Webmania.Runtime.checkpoint(true)
        if whitespace?(rest), do: {:ok, value}, else: invalid()
      rescue
        _ -> invalid()
      catch
        :throw, {:webmania_control, error} -> {:error, error}
        _, _ -> invalid()
      after
        Process.delete(cursor)
      end
    else
      {:error, Webmania.Error.new("body_limit", "JSON byte limit exceeded.")}
    end
  end

  defp original_number(bytes, cursor) do
    Webmania.Runtime.checkpoint()
    offset = Process.get(cursor)
    {text, next} = seek_number(binary_part(bytes, offset, byte_size(bytes) - offset), offset)
    Process.put(cursor, next)

    result = Webmania.Number.new(text)
    Webmania.Runtime.checkpoint(true)

    case result do
      {:ok, value} ->
        if text != "-0" and :binary.match(text, [".", "e", "E"]) == :nomatch,
          do: String.to_integer(text),
          else: value

      _ ->
        throw(:invalid)
    end
  end

  defp seek_number(<<34, rest::binary>>, offset) do
    {rest, offset} = skip_string(rest, offset + 1)
    seek_number(rest, offset)
  end

  defp seek_number(<<c, _::binary>> = rest, offset) when c == 45 or c in 48..57 do
    length = numeric_length(rest, 0)
    {binary_part(rest, 0, length), offset + length}
  end

  defp seek_number(<<_, rest::binary>>, offset), do: seek_number(rest, offset + 1)
  defp seek_number(_, _), do: throw(:invalid)
  defp skip_string(<<92, _, rest::binary>>, offset), do: skip_string(rest, offset + 2)
  defp skip_string(<<34, rest::binary>>, offset), do: {rest, offset + 1}

  defp skip_string(<<_, rest::binary>>, offset) do
    if rem(offset, 65_536) == 0, do: Webmania.Runtime.checkpoint(true)
    skip_string(rest, offset + 1)
  end

  defp skip_string(_, _), do: throw(:invalid)

  defp numeric_length(<<c, rest::binary>>, n) when c in 48..57 or c in [45, 43, 46, 69, 101],
    do:
      (
        if rem(n, 65_536) == 0, do: Webmania.Runtime.checkpoint(true)
        numeric_length(rest, n + 1)
      )

  defp numeric_length(_, n), do: n
  defp whitespace?(<<>>), do: true
  defp whitespace?(<<c, rest::binary>>) when c in [9, 10, 13, 32], do: whitespace?(rest)
  defp whitespace?(_), do: false

  @spec encode(value(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def encode(value, opts \\ []) do
    try do
      if not valid_options?(opts), do: throw(:invalid)

      {parts, _} =
        encode_node(
          value,
          0,
          Keyword.get(opts, :depth, 64),
          Keyword.get(opts, :limit, 8 * 1024 * 1024)
        )

      Webmania.Runtime.checkpoint(true)
      {:ok, IO.iodata_to_binary(parts)}
    rescue
      _ -> invalid()
    catch
      :throw, {:webmania_control, error} -> {:error, error}
      :limit -> {:error, Webmania.Error.new("body_limit", "JSON byte limit exceeded.")}
      _, _ -> invalid()
    end
  end

  defp valid_options?(opts) when is_list(opts) do
    not match?([_, _, _ | _], opts) and Keyword.keyword?(opts) and length(opts) <= 2 and
      length(Keyword.keys(opts)) == length(Enum.uniq(Keyword.keys(opts))) and
      Enum.all?(Keyword.keys(opts), &(&1 in [:depth, :limit])) and
      is_integer(Keyword.get(opts, :depth, 64)) and Keyword.get(opts, :depth, 64) in 0..68 and
      is_integer(Keyword.get(opts, :limit, 1)) and Keyword.get(opts, :limit, 1) in 1..41_943_040
  end

  defp valid_options?(_), do: false

  defp spend(bytes, remaining) when bytes <= remaining, do: remaining - bytes
  defp spend(_, _), do: throw(:limit)
  defp raw(bytes, remaining), do: {bytes, spend(byte_size(bytes), remaining)}

  defp encode_node(value, depth, max, n) do
    Webmania.Runtime.checkpoint()
    encode_value(value, depth, max, n)
  end

  defp encode_value(_, depth, max, _) when depth > max, do: throw(:invalid)
  defp encode_value(nil, _, _, n), do: raw("null", n)
  defp encode_value(true, _, _, n), do: raw("true", n)
  defp encode_value(false, _, _, n), do: raw("false", n)

  defp encode_value(%Webmania.Number{lexeme: text}, _, _, n) do
    case Webmania.Number.new(text) do
      {:ok, _} -> raw(text, n)
      _ -> throw(:invalid)
    end
  end

  defp encode_value(value, _, _, n) when is_integer(value) do
    text = Integer.to_string(value)

    case Webmania.Number.new(text) do
      {:ok, _} -> raw(text, n)
      _ -> throw(:invalid)
    end
  end

  defp encode_value(value, _, _, n) when is_binary(value) do
    if byte_size(value) > n, do: throw(:limit)
    if not String.valid?(value), do: throw(:invalid)
    n = spend(2, n)
    n = string_cost(value, n)
    {:json.encode_binary(value), n}
  end

  defp encode_value(list, depth, max, n) when is_list(list) do
    {rev, n, _} =
      Enum.reduce(list, {[], spend(2, n), true}, fn value, {acc, n, first} ->
        n = if first, do: n, else: spend(1, n)
        {part, n} = encode_node(value, depth + 1, max, n)
        {[part, if(first, do: [], else: ",") | acc], n, false}
      end)

    {["[", Enum.reverse(rev), "]"], n}
  end

  defp encode_value(map, depth, max, n) when is_map(map) and not is_struct(map) do
    {rev, n, _} =
      Enum.reduce(map, {[], spend(2, n), true}, fn {key, value}, {acc, n, first} ->
        if not is_binary(key), do: throw(:invalid)
        n = spend(if(first, do: 1, else: 2), n)
        {k, n} = encode_node(key, depth + 1, max, n)
        {v, n} = encode_node(value, depth + 1, max, n)
        {[[k, ":", v], if(first, do: [], else: ",") | acc], n, false}
      end)

    {["{", Enum.reverse(rev), "}"], n}
  end

  defp encode_value(_, _, _, _), do: throw(:invalid)
  defp string_cost(bytes, n), do: string_cost(bytes, n, 0)

  defp string_cost(bytes, n, 65_536) do
    Webmania.Runtime.checkpoint(true)
    string_cost(bytes, n, 0)
  end

  defp string_cost(<<>>, n, _), do: n

  defp string_cost(<<c, rest::binary>>, n, count) when c in [34, 92, 8, 9, 10, 12, 13],
    do: string_cost(rest, spend(2, n), count + 1)

  defp string_cost(<<c, rest::binary>>, n, count) when c < 32,
    do: string_cost(rest, spend(6, n), count + 1)

  defp string_cost(<<_, rest::binary>>, n, count), do: string_cost(rest, spend(1, n), count + 1)

  defp invalid,
    do:
      {:error,
       Webmania.Error.new("validation", "Expected bounded exact JSON without duplicate keys.")}
end
