Code.require_file("support.exs", __DIR__)
alias Webmania.TestSupport, as: T
alias Webmania.Models.Api1Fiscal, as: Fiscal

company =
  Webmania.Credentials.company(
    "synthetic-key",
    "synthetic-secret",
    "synthetic-token",
    "synthetic-second"
  )
  |> T.ok!()

json_limit = 16 * 1024 * 1024
overhead = byte_size(T.json!(%{"status" => "online", "x" => ""}))
raw = %{"status" => "online", "x" => String.duplicate("a", json_limit - overhead)}
reply = T.json!(raw)
T.assert!(byte_size(reply) == json_limit)
{base, ref, _} = T.start_server(T.reply(200, "application/json", reply))
client = Webmania.NfeClient.new(company, T.config(base)) |> T.ok!()
result = Webmania.NfeClient.get_sefaz_status(client) |> T.ok!()
T.assert!(Fiscal.NfeSefazStatus.to_value(result) |> T.ok!() == raw)
T.assert!(byte_size(Fiscal.NfeSefazStatus.to_json(result) |> T.ok!()) == json_limit)

receive do
  {^ref, :request, _} -> :ok
after
  1000 -> raise("missing request")
end

receive do
  {^ref, :closed} -> :ok
after
  1000 -> raise("missing close")
end

IO.puts("Actual16MiB JSON through ordinary typed model serialization PASS")

file = File.read!(T.fixture("exact-16MiB-stream.pdf"))
T.assert!(byte_size(file) == json_limit and binary_part(file, 4096, 2) == <<0, 255>>)

{base, ref, _} = T.start_server(T.reply(200, "application/pdf", file))
client = Webmania.NfeFilesClient.new(company, T.config(base)) |> T.ok!()

result =
  Webmania.NfeFilesClient.download_danfe(
    client,
    "a1234567-1234-4234-8234-123456789abc",
    Webmania.FileAuth.company()
  )
  |> T.ok!()

T.assert!(Webmania.FileResponse.bytes(result) == file)

receive do
  {^ref, :request, _} -> :ok
after
  1000 -> raise("missing request")
end

receive do
  {^ref, :closed} -> :ok
after
  1000 -> raise("missing close")
end

IO.puts("Actual16MiB file preserves NUL/FF and full bytes via normal file helper PASS")

for token <- ["a", "\"\\", "é", "\u0000"] do
  empty = %{"x" => ""}
  overhead = byte_size(T.json!(empty))
  unit = byte_size(T.json!(token)) - 2
  length = div(8 * 1024 * 1024 - overhead, unit)
  raw = %{"x" => String.duplicate(token, length)}
  remaining = 8 * 1024 * 1024 - byte_size(T.json!(raw))
  raw = Map.update!(raw, "x", &(&1 <> String.duplicate("a", remaining)))
  encoded = T.json!(raw)
  T.assert!(byte_size(encoded) == 8 * 1024 * 1024)
  request = Fiscal.FiscalCompanyUpdateRequest.from_value(raw) |> T.ok!()
  {base, ref, _} = T.start_server(T.reply(200, "application/json", "{\"success\":\"synthetic\"}"))
  client = Webmania.NfeClient.new(company, T.config(base)) |> T.ok!()
  _ = Webmania.NfeClient.update_company(client, request) |> T.ok!()

  receive do
    {^ref, :request, {"POST", "/1/nfe/empresa/", _, bytes}} ->
      T.assert!(byte_size(bytes) == 8 * 1024 * 1024 and T.value!(bytes) == raw)
  after
    1000 -> raise("missing exact request")
  end

  receive do
    {^ref, :closed} -> :ok
  after
    1000 -> raise("missing close")
  end

  IO.puts("Actual8MiB request exact escaped-byte budget token_bytes=#{byte_size(token)} PASS")
end

{:ok, listener} = :gen_tcp.listen(0, [:binary, active: false, ip: {127, 0, 0, 1}])
{:ok, {_, port}} = :inet.sockname(listener)
client = Webmania.NfeClient.new(company, T.config("http://127.0.0.1:#{port}")) |> T.ok!()

request = %Fiscal.FiscalCompanyUpdateRequest{
  __extra__: %{"x" => String.duplicate("a", 8 * 1024 * 1024 - 7)}
}

T.assert!(
  match?(
    {:error, %Webmania.Error{kind: "body_limit"}},
    Webmania.NfeClient.update_company(client, request)
  )
)

T.assert!(:gen_tcp.accept(listener, 50) == {:error, :timeout})
:gen_tcp.close(listener)
IO.puts("Request8MiB+1 rejected before I/O PASS")

{base, ref, _} = T.start_server(T.reply(200, "application/json", reply <> " "))
client = Webmania.NfeClient.new(company, T.config(base)) |> T.ok!()

T.assert!(
  match?(
    {:error, %Webmania.Error{kind: "body_limit"}},
    Webmania.NfeClient.get_sefaz_status(client)
  )
)

receive do
  {^ref, :request, _} -> :ok
after
  1000 -> raise("missing bounded response request")
end

receive do
  {^ref, :closed} -> :ok
after
  1000 -> raise("missing bounded response close")
end

IO.puts("Response16MiB+1 rejected PASS")
