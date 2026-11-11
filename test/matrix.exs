Code.require_file("support.exs", __DIR__)
Code.require_file("generated_matrix.exs", __DIR__)
alias Webmania.TestSupport, as: T
meta = File.read!(Path.join(__DIR__, "../api-metadata.json")) |> T.value!()

cases =
  File.read!(T.fixture("operations.json"))
  |> T.value!()
  |> Map.fetch!("cases")
  |> Map.new(&{&1["operation"], &1})

count =
  for tls <- [false, true],
      {operation, index} <- Enum.with_index(meta["operations"]),
      reduce: 0 do
    count ->
      case = Map.fetch!(cases, operation["id"])

      if not operation["enabled"] do
        {:error, %Webmania.Error{kind: "capability"}} =
          Webmania.TestMatrix.invoke(index, :invalid)

        count
      else
        response =
          if case["binary"], do: T.file(case["media_type"]), else: T.json!(case["response"])

        {base, ref, _} =
          T.start_server(T.reply(case["status"], case["media_type"], response), tls)

        value = Webmania.TestMatrix.invoke(index, T.config(base)) |> T.ok!()

        {method, target, headers, body} =
          receive do
            {^ref, :request, request} -> request
          after
            5000 -> raise("missing synthetic request")
          end

        receive do
          {^ref, :closed} -> :ok
        after
          5000 -> raise("synthetic fixture did not close")
        end

        expected =
          Enum.reduce(case["path_params"], case["path"], fn {k, v}, path ->
            String.replace(path, "{" <> k <> "}", to_string(v))
          end)

        [path | _] = String.split(target, "?", parts: 2)
        T.assert!(method == case["http_method"] and path == expected)
        query = URI.parse(target).query
        parsed = if query, do: URI.decode_query(query), else: %{}
        Enum.each(case["query"], fn {k, v} -> T.assert!(parsed[k] == to_string(v)) end)
        T.assert!(headers["accept-encoding"] == "identity" and headers["connection"] == "close")

        if case["has_request"],
          do: T.assert!(T.value!(body) == case["request"]),
          else: T.assert!(body == "")

        case operation["scope"] do
          "Reseller" ->
            T.assert!(
              headers["x-consumer-key"] == "synthetic-reseller-key" and
                is_nil(headers["authorization"])
            )

          "Nfe" ->
            T.assert!(
              headers["x-consumer-key"] == "synthetic-company-key" and
                is_nil(headers["authorization"])
            )

          "NfeFiles" ->
            if operation["id"] == "fiscalDownloadReport",
              do:
                T.assert!(is_nil(headers["x-consumer-key"]) and is_nil(headers["authorization"])),
              else:
                T.assert!(
                  headers["x-consumer-key"] == "synthetic-company-key" and
                    is_nil(headers["authorization"])
                )

          "Emitter" ->
            T.assert!(
              headers["authorization"] == "Bearer synthetic-issuer" and
                is_nil(headers["x-consumer-key"])
            )

          "EmitterFiles" ->
            T.assert!(
              headers["authorization"] == "Bearer synthetic-issuer" and
                is_nil(headers["x-consumer-key"])
            )

          "Monitor" ->
            T.assert!(
              headers["authorization"] == "Bearer synthetic-monitor" and
                is_nil(headers["x-consumer-key"])
            )
        end

        if case["binary"] do
          file =
            case value do
              %Webmania.FileResult{file: file} -> file
              file -> file
            end

          T.assert!(Webmania.FileResponse.bytes(file) == response)
        else
          raw =
            if is_list(value),
              do: Enum.map(value, &(Webmania.Model.to_value(&1) |> T.ok!())),
              else: Webmania.Model.to_value(value) |> T.ok!()

          T.assert!(raw == case["response"])
        end

        IO.puts("#{if tls, do: "TLS", else: "HTTP"} #{operation["id"]} PASS")
        count + 1
      end
  end

T.assert!(count == 204)
IO.puts("Elixir installed typed matrix: 102 HTTP + 102 TLS, blocked gates: PASS")
