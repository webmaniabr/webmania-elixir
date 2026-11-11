Code.require_file("support.exs", __DIR__)
alias Webmania.TestSupport, as: T
marker = "Native006OrdinaryCapability"

body =
  Webmania.Models.Api1Fiscal.NfeCancelRequest.new(%{
    uuid: "00000000-0000-4000-8000-000000000006",
    motivo: "Ordinary native006 cancellation qualification."
  })
  |> T.ok!()

credentials =
  Webmania.Credentials.company("InertKey", "InertSecret", "InertAccess", "InertSecond") |> T.ok!()

cases =
  [
    {"early-chunk-budget",
     "200\r\n" <>
       String.duplicate("a", 512) <> "\r\n0\r\nLocation: /download?token=#{marker}\r\n\r\n", nil,
     false, false, "body_limit"},
    {"split-chunk-budget",
     "60\r\n" <>
       String.duplicate("a", 96) <> "\r\n60\r\n" <> String.duplicate("b", 96) <> "\r\n0\r\n\r\n",
     nil, false, false, "body_limit"},
    {"forbidden-trailer", "2\r\n{}\r\n0\r\nLocation: /download?token=#{marker}\r\n\r\n", nil,
     false, false, "protocol"},
    {"complete-chunk", "2\r\n{}\r\n0\r\n\r\n", nil, true, false, "http"},
    {"complete-length-budget", String.duplicate("a", 512), nil, true, false, "body_limit"}
  ] ++
    for {name, location} <- [
          {"encoded-query", "/download%3ftoken%3d#{marker}"},
          {"encoded-matrix", "/download;token=#{marker}"},
          {"encoded-fragment", "/download##{marker}"}
        ],
        do: {name, "{\"error\":\"#{marker}\",\"safe\":false}", location, true, true, "http"}

for {name, frame, location, complete, redacted, kind} <- cases do
  chunked = is_nil(location) and name != "complete-length-budget"
  corr = if redacted, do: marker, else: "Native006PublicCorrelation"

  header =
    "HTTP/1.1 503 Busy\r\nContent-Type: application/json\r\nX-Request-ID: #{corr}\r\nConnection: close\r\n" <>
      if(location, do: "Location: #{location}\r\n", else: "") <>
      if(chunked, do: "Transfer-Encoding: chunked", else: "Content-Length: #{byte_size(frame)}") <>
      "\r\n\r\n"

  {base, ref, _} = T.start_server(header <> frame)
  config = Webmania.Config.new(base_url: base, max_response_bytes: 128) |> T.ok!()
  client = Webmania.NfeClient.new(credentials, config) |> T.ok!()
  {:error, e} = Webmania.NfeClient.cancel_document(client, body)

  T.assert!(
    e.kind == kind and e.status == 503 and e.operation == "nfeCancelDocument" and
      e.outcome == "unknown"
  )

  T.assert!(
    if complete,
      do:
        e.correlation_id == if(redacted, do: "[redacted]", else: corr) and
          not is_nil(Webmania.Error.reveal_recovery(e)),
      else: is_nil(e.correlation_id) and is_nil(Webmania.Error.reveal_recovery(e))
  )

  T.assert!(not String.contains?(inspect(e), marker))

  receive do
    {^ref, :request, _} -> :ok
  after
    1000 -> raise "missing normal HTTP request"
  end

  receive do
    {^ref, :closed} -> :ok
  after
    1000 -> raise "missing normal HTTP close"
  end

  IO.puts("NATIVE006 #{name} PASS kind=#{kind} unknown=true complete=#{complete}")
end

IO.puts("NATIVE006 8 ordinary public observation controls PASS")
xml = "<nfeProc><NFe/></nfeProc>"

for mode <- [:normal, :deadline, :cancel] do
  {base, ref, _} =
    T.start_server(
      T.reply(200, "application/xml", xml),
      false,
      if(mode == :normal, do: 0, else: 500)
    )

  config = Webmania.Config.new(base_url: base, trusted_file_origins: [base]) |> T.ok!()
  client = Webmania.NfeFilesClient.new(credentials, config) |> T.ok!()
  query = Webmania.Models.Api1Files.NfeDownloadXmlQuery.new(%{}) |> T.ok!()
  token = Webmania.Cancellation.new()

  task =
    Task.async(fn ->
      Webmania.NfeFilesClient.download_xml(
        client,
        "00000000-0000-4000-8000-000000000006",
        query,
        Webmania.FileAuth.company(),
        timeout_ms: if(mode == :deadline, do: 250, else: 3000),
        cancel: token
      )
    end)

  receive do
    {^ref, :request, _} -> :ok
  after
    1000 -> raise "missing ordinary XML request"
  end

  if mode == :cancel, do: Webmania.Cancellation.cancel(token)
  result = Task.await(task, 5000)

  T.assert!(
    case {mode, result} do
      {:normal, {:ok, %Webmania.FileResponse{bytes: ^xml}}} -> true
      {:deadline, {:error, %Webmania.Error{kind: "timeout"}}} -> true
      {:cancel, {:error, %Webmania.Error{kind: "cancelled"}}} -> true
      _ -> false
    end
  )

  Webmania.Cancellation.close(token)

  receive do
    {^ref, :closed} -> :ok
  after
    1500 -> raise "missing XML fixture close"
  end

  IO.puts("NATIVE006 small-xml-#{mode} PASS; inspection-phase timing not isolated")
end

IO.puts("NATIVE006 11 ordinary public controls PASS")
