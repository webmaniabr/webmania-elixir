defmodule Webmania.Client do
  @moduledoc false
  alias Webmania.{Credentials, Error, FileAuth, Model}

  def new(module, scope, credentials, config) do
    with :ok <- credentials(scope, credentials),
         {:ok, _} <- Webmania.Config.wire(config),
         do: {:ok, struct(module, credentials: credentials, config: config)}
  end

  defp credentials(scope, %Credentials{kind: kind} = credentials) do
    expected = %{
      "Nfe" => :company,
      "Reseller" => :reseller,
      "Emitter" => :issuer,
      "Monitor" => :monitor,
      "NfeFiles" => :company,
      "EmitterFiles" => :issuer
    }

    if Map.get(expected, scope) == kind and is_map(credentials.values) and
         Enum.all?(credentials.values, fn {_, v} -> Credentials.valid_text?(v) end),
       do: :ok,
       else: {:error, Error.new("configuration", "Credential scope mismatch.")}
  end

  defp credentials(scope, nil) when scope in ["NfeFiles", "EmitterFiles"], do: :ok
  defp credentials(_, _), do: {:error, Error.new("configuration", "Credential scope mismatch.")}

  def invoke(%module{} = client, module, scope, operation, params, result_type, opts) do
    default =
      case client.config do
        %Webmania.Config{timeout_ms: n} when is_integer(n) -> n
        _ -> 30_000
      end

    opts =
      if is_list(opts) and not match?([_, _, _ | _], opts) and Keyword.keyword?(opts),
        do: Keyword.put_new(opts, :timeout_ms, default),
        else: opts

    Webmania.Runtime.exchange(
      fn ->
        with :ok <- credentials(scope, client.credentials),
             {:ok, config} <- Webmania.Config.wire(client.config),
             {:ok, payload} <- arguments(params) do
          {:ok,
           Map.merge(payload, %{
             "protocol" => 1,
             "action" => "call",
             "projection_hints" => true,
             "operation" => operation,
             "client_scope" => scope,
             "config" => config,
             "credentials" =>
               if(client.credentials,
                 do: Credentials.reveal(client.credentials),
                 else: nil
               )
           })}
        end
      end,
      opts,
      fn response -> result(result_type, response) end
    )
  end

  def invoke(_, _, _, _, _, _, _),
    do: {:error, Error.new("configuration", "Client scope mismatch.")}

  defp arguments(params) do
    Enum.reduce_while(params, {:ok, %{}}, fn
      {"file_auth", auth, :auth}, {:ok, map} ->
        case FileAuth.wire(auth) do
          {:ok, auth} -> {:cont, {:ok, Map.put(map, "file_auth", auth)}}
          error -> {:halt, error}
        end

      {name, %module{} = value, module}, {:ok, map} when name in ["body", "query"] ->
        case Model.to_json(value, limit: 8 * 1024 * 1024) do
          {:ok, json} -> {:cont, {:ok, Map.put(map, name <> "_json", json)}}
          error -> {:halt, error}
        end

      {name, value, :string}, {:ok, map} when is_binary(value) and byte_size(value) in 1..8192 ->
        {:cont, {:ok, Map.update(map, "path", %{name => value}, &Map.put(&1, name, value))}}

      {name, value, :i64}, {:ok, map}
      when is_integer(value) and value >= -9_223_372_036_854_775_808 and
             value <= 9_223_372_036_854_775_807 ->
        {:cont, {:ok, Map.update(map, "path", %{name => value}, &Map.put(&1, name, value))}}

      _, _ ->
        {:halt,
         {:error, Error.new("validation", "Operation argument does not match its nominal type.")}}
    end)
  end

  defp result(:file, %{
         "kind" => "file",
         "status" => status,
         "media_type" => media,
         "file_kind" => kind,
         "bytes_hex" => hex
       })
       when is_binary(hex) and byte_size(hex) <= 33_554_432 do
    case decode_file(hex, []) do
      {:ok, bytes} ->
        {:ok,
         %Webmania.FileResponse{status: status, media_type: media, file_kind: kind, bytes: bytes}}

      _ ->
        protocol()
    end
  end

  defp result(:file_result, %{"kind" => "file"} = value) do
    with {:ok, file} <- result(:file, value),
         do:
           {:ok,
            %Webmania.FileResult{
              kind: :file,
              file: file,
              status: file.status,
              media_type: file.media_type
            }}
  end

  defp result(:file_result, %{"kind" => "redirect", "protected_location" => location})
       when is_binary(location),
       do: {:ok, %Webmania.FileResult{kind: :redirect, protected_location: location, status: 302}}

  defp result(
         :file_result,
         %{
           "kind" => "pending",
           "status" => 200,
           "media_type" => "application/json",
           "value" => value
         } = result
       ) do
    with {:ok, pending} <-
           Model.project(
             Webmania.Models.Api2EmitterFiles.NfsePdfPending,
             value,
             result["projection_hints"]
           ),
         do:
           {:ok,
            %Webmania.FileResult{
              kind: :pending,
              pending: pending,
              status: 200,
              media_type: "application/json"
            }}
  end

  defp result(type, %{"kind" => "json", "value" => value} = result)
       when type not in [:file, :file_result],
       do: Model.project(type, value, result["projection_hints"])

  defp result(_, _), do: protocol()
  defp decode_file(<<>>, parts), do: {:ok, parts |> Enum.reverse() |> IO.iodata_to_binary()}

  defp decode_file(hex, parts) do
    Webmania.Runtime.checkpoint(true)
    size = min(byte_size(hex), 262_144)

    case Base.decode16(binary_part(hex, 0, size), case: :lower) do
      {:ok, bytes} -> decode_file(binary_part(hex, size, byte_size(hex) - size), [bytes | parts])
      :error -> :error
    end
  end

  defp protocol, do: {:error, Error.new("protocol", "Invalid native result.")}
end
