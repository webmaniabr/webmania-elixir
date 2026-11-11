Code.require_file("support.exs", __DIR__)
alias Webmania.TestSupport, as: T
old = "%PDF-1.4\n1 0 obj\n<< /Type /Catalog >>\nendobj\ntrailer\n<< /Root 1 0 R >>\n%%EOF\n"

for tls <- [false, true] do
  {base, ref, _} = T.start_server(T.reply(200, "application/pdf", old), tls)
  client = Webmania.NfeFilesClient.new(nil, T.config(base)) |> T.ok!()

  result =
    Webmania.NfeFilesClient.download_report(
      client,
      "a1234567-1234-4234-8234-123456789abc",
      Webmania.FileAuth.public_report()
    )

  T.assert!(match?({:error, %Webmania.Error{kind: "protocol"}}, result))

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

  IO.puts("#{if tls, do: "TLS", else: "HTTP"} old incoherent PDF Protocol refusal PASS")
end
