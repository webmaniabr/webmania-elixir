defmodule Webmania.HomologacaoExampleTest do
  use ExUnit.Case, async: false
  alias Webmania.TestSupport, as: T

  @script Path.expand("../examples/homologacao/main.exs", __DIR__)
  @secrets %{
    "WEBMANIA_CONSUMER_KEY" => "example-key-value",
    "WEBMANIA_CONSUMER_SECRET" => "example-secret-value",
    "WEBMANIA_ACCESS_TOKEN" => "example-access-value",
    "WEBMANIA_ACCESS_TOKEN_SECRET" => "example-access-secret-value",
    "WEBMANIA_ISSUER_TOKEN" => "example-issuer-value"
  }

  # The example halts its VM, so it runs in its own process with only these WEBMANIA_* variables.
  defp run_example(env) do
    inherited = for {name, _} <- System.get_env(), String.starts_with?(name, "WEBMANIA_"), do: {name, nil}

    System.cmd(System.find_executable("elixir"), ["-pa", Mix.Project.compile_path(), @script],
      env: inherited ++ Enum.to_list(Map.merge(@secrets, env))
    )
  end

  defp listen do
    listener = :gen_tcp.listen(0, [:binary, active: false, reuseaddr: true, ip: {127, 0, 0, 1}]) |> T.ok!()
    {:ok, port} = :inet.port(listener)
    {listener, "http://127.0.0.1:#{port}"}
  end

  # Loopback fixture: answers every request with `handler`; `:drop` closes the connection
  # after the request arrived, so a sent mutation has an unknown outcome.
  defp serve(listener, owner, handler) do
    case :gen_tcp.accept(listener, 30_000) do
      {:ok, conn} ->
        {method, path} = read_request(conn, <<>>)
        send(owner, {:request, method, path})

        case handler.(method, path) do
          :drop -> :ok
          {status, body} -> :gen_tcp.send(conn, T.reply(status, "application/json", body))
          {status, media, body} -> :gen_tcp.send(conn, T.reply(status, media, body))
        end

        :gen_tcp.close(conn)
        serve(listener, owner, handler)

      _ ->
        :ok
    end
  end

  defp read_request(conn, bytes) do
    case :binary.split(bytes, "\r\n\r\n") do
      [header, body] ->
        [first | lines] = String.split(header, "\r\n")
        [method, target, _] = String.split(first, " ")

        length =
          Enum.find_value(lines, 0, fn line ->
            case String.split(line, ":", parts: 2) do
              [name, value] -> if String.downcase(name) == "content-length", do: String.to_integer(String.trim(value))
              _ -> nil
            end
          end)

        read_body(conn, body, length)
        {method, target |> String.split("?") |> hd()}

      _ ->
        read_request(conn, bytes <> (:gen_tcp.recv(conn, 0, 5000) |> T.ok!()))
    end
  end

  defp read_body(_, body, length) when byte_size(body) >= length, do: :ok
  defp read_body(conn, body, length), do: read_body(conn, body <> (:gen_tcp.recv(conn, 0, 5000) |> T.ok!()), length)

  defp requests(acc \\ []) do
    receive do
      {:request, method, path} -> requests([{method, path} | acc])
    after
      0 -> Enum.reverse(acc)
    end
  end

  test "the origin allow-list is mandatory: absent or empty, nothing is sent" do
    {listener, origin} = listen()
    base = %{"WEBMANIA_LIVE" => "1", "WEBMANIA_API1_BASE_URL" => origin <> "/api", "WEBMANIA_FILES_BASE_URL" => origin, "WEBMANIA_API2_BASE_URL" => origin}

    for {allowed, reason} <- [
          {nil, "WEBMANIA_LIVE_ALLOWED_HOSTS not configured"},
          {"", "WEBMANIA_LIVE_ALLOWED_HOSTS not configured"},
          {" , ", "configured origin outside WEBMANIA_LIVE_ALLOWED_HOSTS"}
        ] do
      env = if allowed, do: Map.put(base, "WEBMANIA_LIVE_ALLOWED_HOSTS", allowed), else: base
      {out, code} = run_example(env)
      assert code == 77
      assert T.value!(String.trim(out)) == %{"result" => "blocked", "reason" => reason}
    end

    assert :gen_tcp.accept(listener, 0) == {:error, :timeout}
    :gen_tcp.close(listener)
  end

  # A mutation scope needs a writable ledger before any credential is read, also with the
  # credentials configured; the read-only scope makes no mutation and needs none. The fixture
  # drops every connection, so a request from a regressed guard is recorded and ends quickly.
  @tag :tmp_dir
  test "a mutation scope needs a writable ledger before any credential or request", %{tmp_dir: dir} do
    cases = fixture_cases()
    nfe = Path.join(dir, "nfe.json")
    File.write!(nfe, T.json!(Map.put(Map.fetch!(cases["nfeIssueDocument"], "request"), "ambiente", 2)))
    nfse = Path.join(dir, "nfse.json")
    File.write!(nfse, T.json!(Map.fetch!(cases["emitterIssueNfse"], "request")))
    {listener, origin} = listen()
    owner = self()
    server = spawn(fn -> serve(listener, owner, fn _, _ -> :drop end) end)
    :ok = :gen_tcp.controlling_process(listener, server)

    base = %{
      "WEBMANIA_LIVE" => "1",
      "WEBMANIA_LIVE_ALLOWED_HOSTS" => "127.0.0.1",
      "WEBMANIA_API1_BASE_URL" => origin <> "/api",
      "WEBMANIA_FILES_BASE_URL" => origin,
      "WEBMANIA_API2_BASE_URL" => origin,
      "WEBMANIA_LIVE_NFE_PAYLOAD" => nfe,
      "WEBMANIA_LIVE_NFSE_PAYLOAD" => nfse
    }

    absent = Path.join(dir, "absent")
    without_company = %{"WEBMANIA_CONSUMER_KEY" => nil}
    blocked = fn reason -> %{"result" => "blocked", "reason" => reason} end

    for scope <- ["nfe", "nfse", "all"] do
      writable = Path.join(dir, "#{scope}.ledger")

      for {env, reason} <- [
            {%{}, "WEBMANIA_LIVE_LEDGER not configured"},
            {%{"WEBMANIA_LIVE_LEDGER" => Path.join(absent, "ledger.jsonl")}, "ledger unwritable"},
            {Map.put(without_company, "WEBMANIA_LIVE_LEDGER", writable), "company credentials not configured"}
          ] do
        {out, code} = run_example(base |> Map.put("WEBMANIA_LIVE_SCOPE", scope) |> Map.merge(env))
        lines = out |> String.split("\n", trim: true) |> Enum.map(&T.value!/1)
        assert {code, lines} == {77, [blocked.(reason)]}, "#{scope}: #{out}"
      end

      assert File.exists?(writable), "#{scope}: the ledger is opened before the credential gate"
    end

    {out, code} = run_example(base |> Map.put("WEBMANIA_LIVE_SCOPE", "readonly") |> Map.merge(without_company))
    assert {code, String.split(out, "\n", trim: true) |> Enum.map(&T.value!/1)} == {77, [blocked.("company credentials not configured")]}
    refute File.exists?(absent)
    Process.exit(server, :kill)
    :gen_tcp.close(listener)
    assert requests() == []
  end

  @tag :tmp_dir
  test "an unknown NF-e issue keeps its protected recovery selector in the ledger", %{tmp_dir: dir} do
    {listener, origin} = listen()
    owner = self()
    handler = fn _, path -> if String.ends_with?(path, "/1/nfe/emissao/"), do: :drop, else: {404, "{}"} end
    server = spawn(fn -> serve(listener, owner, handler) end)
    :ok = :gen_tcp.controlling_process(listener, server)

    request =
      File.read!(T.fixture("operations.json"))
      |> T.value!()
      |> Map.fetch!("cases")
      |> Enum.find(&(&1["operation"] == "nfeIssueDocument"))
      |> Map.fetch!("request")

    payload = Path.join(dir, "nfe.json")
    File.write!(payload, T.json!(Map.put(request, "ambiente", 2)))
    ledger = Path.join(dir, "ledger.jsonl")

    {out, code} =
      run_example(%{
        "WEBMANIA_LIVE" => "1",
        "WEBMANIA_LIVE_SCOPE" => "nfe",
        "WEBMANIA_API1_BASE_URL" => origin <> "/api",
        "WEBMANIA_FILES_BASE_URL" => origin,
        "WEBMANIA_API2_BASE_URL" => origin,
        "WEBMANIA_LIVE_ALLOWED_HOSTS" => "127.0.0.1",
        "WEBMANIA_LIVE_LEDGER" => ledger,
        "WEBMANIA_LIVE_NFE_PAYLOAD" => payload
      })

    Process.exit(server, :kill)
    :gen_tcp.close(listener)
    issue = out |> String.split("\n", trim: true) |> Enum.map(&T.value!/1) |> Enum.filter(&(&1["step"] == "nfe.issue"))
    assert code == 1
    assert [%{"ok" => false, "outcome" => "unknown"}] = issue
    assert Enum.count(requests(), fn {method, path} -> method == "POST" and String.ends_with?(path, "/1/nfe/emissao/") end) == 1

    [entry] = ledger |> File.read!() |> String.split("\n", trim: true) |> Enum.map(&T.value!/1)
    assert %{"model" => "nfe", "status" => "unknown", "operation" => "nfeIssueDocument"} = entry
    assert is_map(entry["recovery"]) and map_size(entry["recovery"]) > 0

    for private <- [request["ID"] | Map.values(@secrets)] do
      refute String.contains?(out, private)
    end
  end

  # NFS-e and NF-e issue -> consult -> files -> cancel -> consult over loopback. After the
  # cancellation the example consults again (bounded, with backoff) while the document is
  # processing or cancelling, and succeeds only with "cancelado". A cancellation still
  # pending when the consults run out is recorded as "unknown" for the cancel operation;
  # an unknown cancellation stops the run. The cancel is sent once in every case.
  @tag :tmp_dir
  test "the cancellation is confirmed only by a cancelled consult, polling while pending", %{tmp_dir: dir} do
    cases = fixture_cases()

    models = [
      {"nfse", "emitterGetNfse", "emitterCancelNfse", Map.fetch!(cases["emitterIssueNfse"], "request"), "processando_cancelamento"},
      {"nfe", "nfeGetDocument", "nfeCancelDocument", Map.put(Map.fetch!(cases["nfeIssueDocument"], "request"), "ambiente", 2), "processando"}
    ]

    for {model, consult_op, cancel_op, request, pending} <- models,
        {after_cancel, attempts} <- [
          {["cancelado"], nil},
          {[pending, "cancelado"], nil},
          {[pending], "3"},
          {["aprovado"], nil},
          {:drop, nil}
        ] do
      label = inspect({model, after_cancel, attempts})
      uuid = "00000000-0000-4000-8000-000000000001"
      payload = Path.join(dir, "#{model}.json")
      File.write!(payload, T.json!(request))
      {listener, origin} = listen()
      owner = self()
      handler = cycle_handler(cases, model, uuid, after_cancel)
      server = spawn(fn -> serve(listener, owner, handler) end)
      :ok = :gen_tcp.controlling_process(listener, server)
      ledger = Path.join(dir, "#{System.unique_integer([:positive])}.ledger")

      env = %{
        "WEBMANIA_LIVE" => "1",
        "WEBMANIA_LIVE_SCOPE" => model,
        "WEBMANIA_API1_BASE_URL" => origin <> "/api",
        "WEBMANIA_FILES_BASE_URL" => origin,
        "WEBMANIA_API2_BASE_URL" => origin,
        "WEBMANIA_LIVE_ALLOWED_HOSTS" => "127.0.0.1",
        "WEBMANIA_LIVE_LEDGER" => ledger,
        "WEBMANIA_LIVE_NFE_PAYLOAD" => payload,
        "WEBMANIA_LIVE_NFSE_PAYLOAD" => payload
      }

      {out, code} = run_example(if attempts, do: Map.put(env, "WEBMANIA_LIVE_POLL_ATTEMPTS", attempts), else: env)
      Process.exit(server, :kill)
      :gen_tcp.close(listener)
      lines = out |> String.split("\n", trim: true) |> Enum.map(&T.value!/1)
      seen = requests()
      {before, after_requests} = Enum.split_while(seen, &(not cancel_request?(model, &1)))
      assert Enum.count(seen, &cancel_request?(model, &1)) == 1, label
      assert Enum.count(before, &consult_request?(model, uuid, &1)) == 1, label
      consults = Enum.count(after_requests, &consult_request?(model, uuid, &1))
      cancellation_xml = Enum.count(seen, &(&1 == {"GET", "/xmlnfe/#{uuid}/cancelamento"}))
      last = ledger |> File.read!() |> String.split("\n", trim: true) |> List.last() |> T.value!()
      cancel = Enum.filter(lines, &(&1["step"] == "#{model}.cancel"))
      verdict = lines |> Enum.filter(&(&1["step"] == "#{model}.consult_cancelled")) |> List.last()

      case after_cancel do
        :drop ->
          assert [%{"ok" => false, "outcome" => "unknown"}] = cancel, label
          assert consults == 0 and verdict == nil, label
          assert %{"model" => ^model, "identifier" => ^uuid, "status" => "unknown", "operation" => ^cancel_op} = last
          assert code == 1, label

        ["cancelado" | _] = sequence ->
          assert [%{"ok" => true, "outcome" => "success"}] = cancel, label
          assert consults == length(sequence), label
          assert %{"ok" => true, "outcome" => "success"} = verdict
          assert %{"model" => ^model, "identifier" => ^uuid, "status" => "cancelado", "operation" => ^consult_op} = last
          assert cancellation_xml == if(model == "nfe", do: 1, else: 0), label
          assert code == 0, label <> out

        [_, "cancelado"] ->
          assert consults == 2, label
          assert %{"ok" => true, "outcome" => "success"} = verdict
          assert %{"model" => ^model, "identifier" => ^uuid, "status" => "cancelado", "operation" => ^consult_op} = last
          assert cancellation_xml == if(model == "nfe", do: 1, else: 0), label
          assert code == 0, label <> out

        ["aprovado"] ->
          assert consults == 1, label
          assert %{"ok" => false, "outcome" => "not_cancelled"} = verdict
          assert %{"model" => ^model, "identifier" => ^uuid, "status" => "aprovado", "operation" => ^consult_op} = last
          assert cancellation_xml == 0 and code == 1, label

        [_pending_forever] ->
          assert consults == 3, label
          assert %{"ok" => false, "outcome" => "unknown"} = verdict
          assert %{"model" => ^model, "identifier" => ^uuid, "status" => "unknown", "operation" => ^cancel_op} = last
          assert cancellation_xml == 0 and code == 1, label
      end
    end
  end

  test "WEBMANIA_LIVE_POLL_ATTEMPTS only accepts 1 to 24" do
    {listener, origin} = listen()
    # The value is checked before the payload, so no payload is configured here.
    base = %{"WEBMANIA_LIVE" => "1", "WEBMANIA_LIVE_SCOPE" => "nfse", "WEBMANIA_LIVE_ALLOWED_HOSTS" => "127.0.0.1", "WEBMANIA_API1_BASE_URL" => origin <> "/api", "WEBMANIA_FILES_BASE_URL" => origin, "WEBMANIA_API2_BASE_URL" => origin}

    for attempts <- ["0", "25", "-1", "1.5", " 3", "abc", "100"] do
      {out, code} = run_example(Map.put(base, "WEBMANIA_LIVE_POLL_ATTEMPTS", attempts))
      assert code == 77, attempts
      assert T.value!(String.trim(out)) == %{"result" => "blocked", "reason" => "WEBMANIA_LIVE_POLL_ATTEMPTS must be an integer from 1 to 24"}
    end

    assert :gen_tcp.accept(listener, 0) == {:error, :timeout}
    :gen_tcp.close(listener)
  end

  defp cancel_request?("nfse", request), do: request == {"PUT", "/2/nfse/cancelar"}
  defp cancel_request?("nfe", request), do: request == {"PUT", "/api/1/nfe/cancelar/"}
  defp consult_request?("nfse", uuid, request), do: request == {"GET", "/2/nfse/consulta/" <> uuid}
  defp consult_request?("nfe", _uuid, request), do: request == {"GET", "/api/1/nfe/consulta/"}

  defp fixture_cases do
    File.read!(T.fixture("operations.json"))
    |> T.value!()
    |> Map.fetch!("cases")
    |> Map.new(&{&1["operation"], &1})
  end

  # Runs in the server process; the process dictionary remembers the cancellation and the
  # statuses still to answer after it (the last one repeats).
  defp cycle_handler(cases, model, uuid, after_cancel) do
    reads = %{
      "/api/1/nfe/sefaz/" => "nfeGetSefazStatus",
      "/api/1/nfe/certificado/" => "nfeGetCertificateValidity",
      "/api/1/nfe/classe-imposto/" => "nfeListTaxClasses",
      "/2/nfse/status" => "emitterGetNfseProviderStatus"
    }

    status = fn ->
      case Process.get(:after_cancel) do
        nil -> "aprovado"
        [last] -> last
        [next | rest] -> Process.put(:after_cancel, rest); next
      end
    end

    cancelled = fn reply ->
      Process.put(:after_cancel, if(after_cancel == :drop, do: ["cancelado"], else: after_cancel))
      if after_cancel == :drop, do: :drop, else: reply
    end

    fn method, path ->
      cond do
        Map.has_key?(reads, path) ->
          {200, T.json!(cases[reads[path]]["response"])}

        model == "nfse" and {method, path} == {"POST", "/2/nfse/emissao"} ->
          {200, T.json!(%{"uuid" => uuid, "modelo" => "nfse", "status" => "processando"})}

        model == "nfse" and path == "/2/nfse/consulta/" <> uuid ->
          {200, T.json!(Map.merge(cases["emitterGetNfse"]["response"], %{"uuid" => uuid, "status" => status.()}))}

        model == "nfse" and {method, path} == {"PUT", "/2/nfse/cancelar"} ->
          cancelled.({200, T.json!(%{"uuid" => uuid, "modelo" => "nfse", "status" => "processando_cancelamento"})})

        model == "nfe" and {method, path} == {"POST", "/api/1/nfe/emissao/"} ->
          {200, T.json!(%{"uuid" => uuid, "status" => "processando"})}

        model == "nfe" and {method, path} == {"GET", "/api/1/nfe/consulta/"} ->
          {200, T.json!(%{"uuid" => uuid, "status" => status.()})}

        model == "nfe" and {method, path} == {"POST", "/api/1/nfe/consulta/"} ->
          {200, T.json!(%{"uuid" => uuid, "status" => "aprovado"})}

        model == "nfe" and {method, path} == {"PUT", "/api/1/nfe/cancelar/"} ->
          cancelled.({200, T.json!(%{"status" => "processando"})})

        path == "/xmlnfse/" <> uuid ->
          {200, "text/xml", T.file("text/xml")}

        path in ["/xmlnfe/#{uuid}/", "/xmlnfe/#{uuid}/cancelamento"] ->
          {200, "application/xml", T.file("application/xml")}

        path in ["/nfse/" <> uuid, "/darps/" <> uuid, "/danfe/#{uuid}/", "/danfe/simples/#{uuid}/"] ->
          {200, "application/pdf", T.file("application/pdf")}

        true ->
          {404, "{}"}
      end
    end
  end
end
