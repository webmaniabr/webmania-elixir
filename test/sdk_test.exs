defmodule Webmania.SDKTest do
  use ExUnit.Case, async: false
  alias Webmania.TestSupport, as: T
  alias Webmania.Models.Api1Fiscal, as: Fiscal
  @uuid "a1234567-1234-4234-8234-123456789abc"

  defp credentials,
    do:
      Webmania.Credentials.company(
        "synthetic-company-key",
        "synthetic-secret",
        "synthetic-token",
        "synthetic-secret2"
      )
      |> T.ok!()

  defp client(base), do: Webmania.NfeClient.new(credentials(), T.config(base)) |> T.ok!()

  defp closed(ref) do
    receive do
      {^ref, :closed} -> :ok
    after
      5000 -> flunk("fixture close timeout")
    end
  end

  defp request(ref) do
    receive do
      {^ref, :request, request} -> request
    after
      5000 -> flunk("missing fixture request")
    end
  end

  test "exact numbers, Unicode, duplicate keys, depth64 and finite JSON budgets" do
    number = Webmania.Number.new("12345678901234567890.00000000000000000001e-4096") |> T.ok!()
    integer = Integer.pow(2, 10_000)

    value = %{
      "decimal" => number,
      "integer" => integer,
      "unicode" => "á😀\u0000",
      "empty" => [%{}, []]
    }

    assert Webmania.JSON.encode(value) |> T.ok!() |> Webmania.JSON.decode() |> T.ok!() == value
    assert {:error, _} = Webmania.JSON.encode(%{"float" => 0.1})

    for text <- [
          "{\"a\":1,\"a\":2}",
          "{\"a\":1,\"\\u0061\":2}",
          "\"\\ud800\"",
          <<34, 255, 34>>,
          "1\u00a0",
          "1 2",
          "1e4097",
          "01",
          "[] trailing"
        ] do
      assert {:error, _} = Webmania.JSON.decode(text)
    end

    deep64 = Enum.reduce(1..64, [], fn _, acc -> [acc] end)
    assert {:ok, _} = Webmania.JSON.encode(deep64)
    assert {:ok, _} = Webmania.JSON.decode(Webmania.JSON.encode(deep64) |> T.ok!())
    assert {:error, _} = Webmania.JSON.encode([deep64])

    assert {:error, _} =
             Webmania.JSON.decode(String.duplicate("[", 65) <> "0" <> String.duplicate("]", 65))

    assert {:error, _} = Webmania.JSON.encode(%{"x" => String.duplicate("a", 1024)}, limit: 1024)
    assert {:ok, negative_zero} = Webmania.JSON.decode("-0")
    assert Webmania.Number.reveal(negative_zero) == "-0"

    for token <- ["1E+02", "-0e+2", "0e-0", "1.2300E-02"] do
      value = Webmania.JSON.decode(token) |> T.ok!()
      assert Webmania.Number.reveal(value) == token
      assert Webmania.JSON.encode(value) |> T.ok!() == token
    end
  end

  test "nominal fields, absence/null, arrays/unions, extensions, and privacy" do
    model = Fiscal.NfeLookupRequest.new(%{uuid: @uuid}) |> T.ok!()
    assert model.uuid == @uuid and model.chave == :unset
    assert {:error, _} = Fiscal.NfeLookupRequest.new(%{uuid: nil})

    assert {:error, _} =
             Fiscal.NfeLookupRequest.new(%{uuid: @uuid, __extra__: %{"uuid" => @uuid}})

    assert {:error, _} =
             Fiscal.NfeLookupRequest.new(%{uuid: @uuid, __extra__: %{unknown_atom: "private"}})

    assert {:error, _} = Fiscal.NfeLookupRequest.new(%{"uuid" => @uuid, :uuid => @uuid})
    assert {:error, _} = Fiscal.NfeLookupRequest.new(%{unknown_atom: "private"})
    request = Fiscal.FiscalCompanyUpdateRequest.from_value(%{"cnae" => nil}) |> T.ok!()
    assert request.cnae.variant == :Null and is_nil(request.cnae.value)
    assert Fiscal.FiscalCompanyUpdateRequest.to_value(request) |> T.ok!() == %{"cnae" => nil}
    private = "FISCAL_PRIVACY_SENTINEL_0123456789"

    model =
      Fiscal.NfeSefazStatus.from_value(%{
        "status" => "online",
        "future" => %{"secret" => private}
      })
      |> T.ok!()

    error = %Webmania.Error{
      kind: private,
      message: private,
      protected_location: private,
      protected_recovery: %{"uuid" => private},
      protected_result: %{"kind" => "json", "value" => private},
      sdk_call_completed: true,
      details: private
    }

    for value <- [
          model,
          error,
          credentials(),
          Webmania.FileAuth.document_token(private) |> T.ok!(),
          %Webmania.FileResponse{bytes: private},
          %Webmania.FileResult{protected_location: private},
          %Webmania.Config{base_url: private}
        ] do
      refute String.contains?(inspect(value), private)
    end

    refute String.contains?(Exception.message(error), private)
    assert Webmania.Error.reveal_location(error) == private
    assert Webmania.Error.reveal_recovery(error) == %{"uuid" => private}
    assert Webmania.Error.reveal_result(error) == %{"kind" => "json", "value" => private}
    assert Webmania.Error.sdk_call_completed?(error)
    assert String.contains?(Fiscal.NfeSefazStatus.to_json(model) |> T.ok!(), private)
    assert Fiscal.NfeSefazStatus.validate(model) == :ok
  end

  test "all 103 named exports, six scopes, blocked gate before any access" do
    assert length(Webmania.Generated.models()) == 1258
    assert length(Webmania.Generated.operations()) == 103

    Enum.each(Webmania.Generated.operations(), fn {_, module, method, arity, _} ->
      Code.ensure_loaded!(module)
      assert function_exported?(module, method, arity)
    end)

    before = {Port.list(), Process.list()}

    assert {:error, %Webmania.Error{kind: "capability"}} =
             Webmania.NfeFilesClient.download_ibs_cbs_event_xml(
               :invalid,
               :invalid,
               :invalid,
               :invalid
             )

    assert before == {Port.list(), Process.list()}
    assert {:error, _} = Webmania.EmitterClient.new(credentials())
    assert {:error, _} = Webmania.MonitorClient.new(credentials())
    assert {:error, _} = Webmania.NfeClient.new(nil)
    assert {:ok, _} = Webmania.EmitterFilesClient.new(nil)
  end

  test "native hints preserve nested Provider56 and nonfirst Monitor response variants" do
    raw = %{"descricao" => "synthetic", "tipo" => "nfse", "local_prestacao" => "1"}
    # Both anyOf branches admit the original value. Rust's declared-field score
    # canonically chooses56; this is not an assertion that55 is schema-invalid.
    assert {:ok, _} = Fiscal.NfseTaxClassProvider55.from_value(raw)
    assert {:ok, _} = Fiscal.NfseTaxClassProvider56.from_value(raw)
    direct = Fiscal.NfseServiceTaxClass.from_value(raw) |> T.ok!()
    nested = Fiscal.FiscalTaxClassRequest.from_value(raw) |> T.ok!()
    assert direct.variant == :NfseTaxClassProvider56
    assert nested.variant == :NfseServiceTaxClass
    assert nested.value.variant == :NfseTaxClassProvider56
    assert Fiscal.FiscalTaxClassRequest.to_value(nested) == {:ok, raw}
    negative55 = Map.put(raw, "codigo_tributacao_municipio", 123)

    assert {:error, %Webmania.Error{kind: "validation"}} =
             Fiscal.NfseTaxClassProvider55.from_value(negative55)

    assert {:ok, allowed56} = Fiscal.NfseTaxClassProvider56.from_value(negative55)
    assert Fiscal.NfseTaxClassProvider56.to_value(allowed56) == {:ok, negative55}
    corpus = File.read!(T.fixture("model-corpus.json")) |> T.value!()
    wire = File.read!(T.fixture("operations.json")) |> T.value!()
    operation = Enum.find(wire["cases"], &(&1["operation"] == "monitorGetDocument"))

    query =
      Webmania.Models.Api2MonitorDocuments.MonitorGetDocumentQuery.from_value(operation["query"])
      |> T.ok!()

    for tls <- [false, true],
        {name, variant} <- [
          {"MonitorDocumentNfse", :MonitorDocumentNfse},
          {"MonitorDocumentCteOs", :MonitorDocumentCteOs}
        ] do
      raw =
        Enum.find(corpus["cases"], &(&1["model"] == "api2_monitor_documents::" <> name))["value"]

      {base, ref, _} = T.start_server(T.reply(200, "application/json", T.json!(raw)), tls)
      credentials = Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!()
      client = Webmania.MonitorClient.new(credentials, T.config(base)) |> T.ok!()

      response =
        Webmania.MonitorClient.get_document(client, operation["path_params"]["fd"], query)
        |> T.ok!()

      assert response.variant == variant
      assert Webmania.Model.to_value(response) == {:ok, raw}
      request(ref)
      closed(ref)
    end
  end

  test "schema misuse and pre-cancellation accept no network I/O and leave no ports" do
    {:ok, socket} = :gen_tcp.listen(0, [:binary, active: false, ip: {127, 0, 0, 1}])
    {:ok, {_, port}} = :inet.sockname(socket)
    client = client("http://127.0.0.1:#{port}")
    token = Webmania.Cancellation.new()
    Webmania.Cancellation.cancel(token)
    baseline = Port.list() |> Enum.sort()

    assert {:error, %Webmania.Error{kind: "cancelled"}} =
             Webmania.NfeClient.get_sefaz_status(client, cancel: token)

    for _ <- 1..32 do
      assert {:error, _} =
               Webmania.NfeClient.get_document(client, %Fiscal.NfeGetDocumentQuery{
                 uuid: "invalid"
               })

      assert Port.list() |> Enum.sort() == baseline
    end

    assert {:error, :timeout} = :gen_tcp.accept(socket, 50)
    Webmania.Cancellation.close(token)
    :gen_tcp.close(socket)
  end

  test "document-token and anonymous auth do not need company credentials or fallback" do
    xml = T.file("text/xml")

    for tls <- [false, true], mode <- [:token, :anonymous] do
      {base, ref, _} = T.start_server(T.reply(200, "text/xml", xml), tls)
      files = Webmania.EmitterFilesClient.new(nil, T.config(base)) |> T.ok!()

      auth =
        if mode == :token,
          do: Webmania.FileAuth.document_token("opaqueCaseSensitiveTokenXYZ") |> T.ok!(),
          else: Webmania.FileAuth.anonymous()

      assert {:ok, %Webmania.FileResponse{bytes: ^xml}} =
               Webmania.EmitterFilesClient.get_nfse_xml(files, @uuid, auth)

      {_, target, headers, _} = request(ref)
      assert is_nil(headers["authorization"]) and is_nil(headers["x-consumer-key"])
      if mode == :token, do: assert(String.contains?(target, "opaqueCaseSensitiveTokenXYZ"))
      closed(ref)
    end
  end

  test "sent cancellation and deadlines preserve Unknown/recovery, EOF and no owned ports" do
    for tls <- [false, true], mode <- [:cancel, :close_token, :deadline] do
      body = Fiscal.NfeLookupRequest.new(%{uuid: @uuid}) |> T.ok!()
      baseline = Port.list() |> Enum.sort()
      {base, ref, _} = T.start_server([], tls, :stall)
      client = client(base)
      token = Webmania.Cancellation.new()
      owner = self()

      spawn(fn ->
        opts = if mode == :deadline, do: [timeout_ms: 700], else: [cancel: token]
        send(owner, {ref, :result, Webmania.NfeClient.query_document(client, body, opts)})
      end)

      request(ref)

      case mode do
        :cancel -> Webmania.Cancellation.cancel(token)
        :close_token -> Webmania.Cancellation.close(token)
        _ -> :ok
      end

      result =
        receive do
          {^ref, :result, result} -> result
        after
          5000 -> flunk("call cancellation timeout")
        end

      assert {:error, %Webmania.Error{outcome: "unknown"} = error} = result
      assert is_map(Webmania.Error.reveal_recovery(error))
      assert error.kind == if(mode == :deadline, do: "timeout", else: "cancelled")

      receive do
        {^ref, :eof} -> :ok
      after
        1000 -> flunk("fixture did not observe EOF")
      end

      closed(ref)
      assert Port.list() |> Enum.sort() == baseline
      Webmania.Cancellation.close(token)
    end
  end

  test "caller death cancels and reaps worker before the observer finishes" do
    body = Fiscal.NfeLookupRequest.new(%{uuid: @uuid}) |> T.ok!()
    baseline = Port.list() |> Enum.sort()
    {base, ref, _} = T.start_server([], false, :stall)
    client = client(base)
    caller = spawn(fn -> Webmania.NfeClient.query_document(client, body) end)
    request(ref)
    Process.exit(caller, :kill)

    receive do
      {^ref, :eof} -> :ok
    after
      1500 -> flunk("dead caller retained connection")
    end

    closed(ref)
    deadline = System.monotonic_time(:millisecond) + 2000

    wait = fn wait ->
      if Port.list() |> Enum.sort() != baseline and System.monotonic_time(:millisecond) < deadline do
        Process.sleep(5)
        wait.(wait)
      end
    end

    wait.(wait)
    assert Port.list() |> Enum.sort() == baseline
  end

  test "unrecognized response keys remain strings without atom growth" do
    _ = Map.new(1..5, &{"warm_#{&1}", &1}) |> T.json!() |> T.value!()
    before = :erlang.system_info(:atom_count)
    map = Map.new(1..5000, &{"unrecognized_#{&1}", &1})
    result = map |> T.json!() |> T.value!()
    assert result == map
    assert :erlang.system_info(:atom_count) == before
  end

  test "finite helpers preserve opaque IDs and cancellation; poll minimum is 5 seconds" do
    model = %Fiscal.NfeSefazStatus{status: "pending"}
    owner = self()

    fetch = fn cursor, _ ->
      send(owner, {:cursor, cursor})
      {:ok, {[model], if(is_nil(cursor), do: "OpaqueUPPERcaseID", else: nil)}}
    end

    assert {:ok, [^model, ^model]} = Webmania.Helpers.paginate(fetch)
    assert_receive {:cursor, nil}
    assert_receive {:cursor, "OpaqueUPPERcaseID"}

    late = fn _, _ ->
      Process.sleep(20)
      {:ok, {[model], nil}}
    end

    assert {:error, %Webmania.Error{kind: "timeout"}} =
             Webmania.Helpers.paginate(late, nil, timeout_ms: 1)

    assert {:error, %Webmania.Error{kind: "timeout"}} =
             Webmania.Helpers.poll(
               fn _ ->
                 Process.sleep(20)
                 {:ok, model}
               end,
               fn _ -> true end,
               timeout_ms: 1
             )

    cancelled_page = Webmania.Cancellation.new()

    fetch_cancelled = fn _, _ ->
      Webmania.Cancellation.cancel(cancelled_page)
      {:ok, {[model], nil}}
    end

    assert {:error, %Webmania.Error{kind: "cancelled"}} =
             Webmania.Helpers.paginate(fetch_cancelled, nil, cancel: cancelled_page)

    Webmania.Cancellation.close(cancelled_page)

    assert {:error, %Webmania.Error{kind: "configuration"}} =
             Webmania.Helpers.poll(fn _ -> {:ok, model} end, fn _ -> false end, interval_ms: 4999)

    assert {:error, %Webmania.Error{kind: "poll_limit"}} =
             Webmania.Helpers.poll(fn _ -> {:ok, model} end, fn _ -> false end, max_attempts: 1)

    token = Webmania.Cancellation.new()

    spawn(fn ->
      Process.sleep(100)
      Webmania.Cancellation.cancel(token)
    end)

    started = System.monotonic_time(:millisecond)

    assert {:error, %Webmania.Error{kind: "cancelled"}} =
             Webmania.Helpers.poll(fn _ -> {:ok, model} end, fn _ -> false end, cancel: token)

    assert System.monotonic_time(:millisecond) - started < 1000
    Webmania.Cancellation.close(token)

    assert {:error, %Webmania.Error{kind: "pagination_limit"}} =
             Webmania.Helpers.paginate(fetch, nil, max_result_bytes: 2)

    assert_receive {:cursor, nil}
    Process.put(:synthetic_poll_count, 0)
    started = System.monotonic_time(:millisecond)

    poll = fn _ ->
      count = Process.get(:synthetic_poll_count) + 1
      Process.put(:synthetic_poll_count, count)
      {:ok, %Fiscal.NfeSefazStatus{status: if(count == 1, do: "offline", else: "online")}}
    end

    assert {:ok, %Fiscal.NfeSefazStatus{status: "online"}} =
             Webmania.Helpers.poll(poll, &(&1.status == "online"),
               max_attempts: 2,
               timeout_ms: 12_000
             )

    assert System.monotonic_time(:millisecond) - started >= 5000
    Process.delete(:synthetic_poll_count)

    for _ <- 1..32 do
      token = Webmania.Cancellation.new()
      {pid, monitor} = spawn_monitor(fn -> Webmania.Cancellation.cancel(token) end)
      assert Webmania.Cancellation.await(token, 0) in [:ok, :cancelled]
      Webmania.Cancellation.close(token)
      assert Webmania.Cancellation.await(token, 0) == :cancelled
      assert_receive {:DOWN, ^monitor, :process, ^pid, :normal}
    end

    {:messages, messages} = Process.info(self(), :messages)

    refute Enum.any?(messages, fn message ->
             is_tuple(message) and elem(message, 0) in [:cancellation, :cancelled, :unsubscribed]
           end)
  end
end
