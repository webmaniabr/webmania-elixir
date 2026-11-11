Code.require_file("support.exs", __DIR__)
alias Webmania.TestSupport, as: T
uuid = "a1234567-1234-4234-8234-123456789abc"

close = fn ref ->
  receive do
    {^ref, :request, _} -> :ok
  after
    1000 -> raise("missing file request")
  end

  receive do
    {^ref, :closed} -> :ok
  after
    1000 -> raise("missing file close")
  end
end

for tls <- [false, true] do
  for {media, bytes, kind} <- [
        {"application/pdf", T.file("application/pdf"), "Pdf"},
        {"application/pdf", File.read!(T.fixture("canonical_protected.pdf")), "ProtectedPdf"},
        {"application/zip", T.file("application/zip"), "Zip"},
        {"text/csv", T.file("text/csv"), "Csv"},
        {"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
         File.read!(T.fixture("minimal.xlsx")), "Xlsx"}
      ] do
    {base, ref, _} = T.start_server(T.reply(200, media, bytes), tls)
    client = Webmania.NfeFilesClient.new(nil, T.config(base)) |> T.ok!()

    result =
      Webmania.NfeFilesClient.download_report(client, uuid, Webmania.FileAuth.public_report())
      |> T.ok!()

    T.assert!(result.file_kind == kind and Webmania.FileResponse.bytes(result) == bytes)
    close.(ref)
    IO.puts("#{if tls, do: "TLS", else: "HTTP"} #{kind} file PASS")
  end

  # Legacy reports: CSV and XLSX labeled text/xml are identified by their bytes on this
  # route only; a real XML document with the same label is never a report.
  for {bytes, expected} <- [
        {T.file("text/csv"), "Csv"},
        {File.read!(T.fixture("minimal.xlsx")), "Xlsx"},
        {T.file("text/xml"), :refused}
      ] do
    {base, ref, _} = T.start_server(T.reply(200, "text/xml", bytes), tls)
    client = Webmania.NfeFilesClient.new(nil, T.config(base)) |> T.ok!()
    result = Webmania.NfeFilesClient.download_report(client, uuid, Webmania.FileAuth.public_report())

    case expected do
      :refused ->
        T.assert!(match?({:error, %Webmania.Error{kind: "protocol"}}, result))

      kind ->
        {:ok, file} = result
        T.assert!(file.file_kind == kind and file.media_type == "text/xml" and Webmania.FileResponse.bytes(file) == bytes)
    end

    close.(ref)
    IO.puts("#{if tls, do: "TLS", else: "HTTP"} legacy report text/xml #{expected} PASS")
  end

  html = "<!doctype html><html><body>opaque\0" <> <<255>> <> "</body></html>"

  for method <- [:get_nfse_pdf, :get_nfse_rps_pdf] do
    {base, ref, _} = T.start_server(T.reply(200, "text/html", html), tls)
    client = Webmania.EmitterFilesClient.new(nil, T.config(base)) |> T.ok!()

    result =
      apply(Webmania.EmitterFilesClient, method, [client, uuid, Webmania.FileAuth.anonymous()])
      |> T.ok!()

    file =
      case result do
        %Webmania.FileResult{kind: :file, file: file} -> file
        file -> file
      end

    T.assert!(file.file_kind == "Html" and Webmania.FileResponse.bytes(file) == html)
    close.(ref)
    IO.puts("#{if tls, do: "TLS", else: "HTTP"} opaque Html #{method} PASS")
  end

  pending = %{"msg" => "PDF municipal pendente", "future" => nil}
  {base, ref, _} = T.start_server(T.reply(200, "application/json", T.json!(pending)), tls)
  client = Webmania.EmitterFilesClient.new(nil, T.config(base)) |> T.ok!()

  result =
    Webmania.EmitterFilesClient.get_nfse_pdf(client, uuid, Webmania.FileAuth.anonymous())
    |> T.ok!()

  T.assert!(
    result.kind == :pending and
      is_struct(result.pending, Webmania.Models.Api2EmitterFiles.NfsePdfPending) and
      is_nil(result.file) and is_nil(result.protected_location)
  )

  T.assert!(Webmania.Model.to_value(result.pending) |> T.ok!() == pending)
  close.(ref)

  IO.puts(
    "#{if tls, do: "TLS", else: "HTTP"} exact nominal NfsePdfPending without bytes or Location PASS"
  )

  location = "https://example.invalid/private/PDF?token=REDACTED_LOCATION_SENTINEL"

  {base, ref, _} =
    T.start_server(T.reply(302, "text/html", "", ["Location: ", location, "\r\n"]), tls)

  client = Webmania.EmitterFilesClient.new(nil, T.config(base)) |> T.ok!()

  result =
    Webmania.EmitterFilesClient.get_nfse_pdf(client, uuid, Webmania.FileAuth.anonymous())
    |> T.ok!()

  T.assert!(
    result.kind == :redirect and Webmania.FileResult.reveal_location(result) == location and
      not String.contains?(inspect(result), "REDACTED_LOCATION_SENTINEL")
  )

  close.(ref)
  IO.puts("#{if tls, do: "TLS", else: "HTTP"} protected redirect, no transfer PASS")
end
