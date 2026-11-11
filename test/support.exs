{:ok, _} = Application.ensure_all_started(:webmania_sdk)

# Mix prunes applications not used by the SDK. SSL is used by this synthetic
# fixture only; the production facade delegates TLS to the pinned worker.
for app <- ["ssl", "asn1", "public_key"],
    path <-
      Path.wildcard(Path.join([List.to_string(:code.root_dir()), "lib", app <> "-*", "ebin"])) do
  :code.add_patha(String.to_charlist(path))
end

defmodule Webmania.TestSupport do
  def ok!({:ok, value}), do: value

  def ok!({:error, %Webmania.Error{kind: kind}}),
    do: raise("synthetic fixture operation failed (#{kind})")

  def ok!({:error, _}), do: raise("synthetic fixture transport failed")
  def assert!(true), do: :ok
  def assert!(_), do: raise("synthetic fixture assertion failed")
  def json!(value), do: Webmania.JSON.encode(value, limit: 40 * 1024 * 1024, depth: 68) |> ok!()
  def value!(text), do: Webmania.JSON.decode(text, limit: 40 * 1024 * 1024, depth: 68) |> ok!()
  def fixture(name), do: Path.join([__DIR__, "fixtures", name])

  def start_server(reply, tls \\ false, delay \\ 0) do
    {:ok, _} = Application.ensure_all_started(:ssl)

    listener =
      if tls do
        :ssl.listen(0, [
          :binary,
          {:active, false},
          {:reuseaddr, true},
          {:ip, {127, 0, 0, 1}},
          {:certfile, String.to_charlist(fixture("tls/leaf.pem"))},
          {:keyfile, String.to_charlist(fixture("tls/leaf.key"))}
        ])
        |> ok!()
      else
        :gen_tcp.listen(0, [:binary, {:active, false}, {:reuseaddr, true}, {:ip, {127, 0, 0, 1}}])
        |> ok!()
      end

    {_, port} =
      if tls, do: :ssl.sockname(listener) |> ok!(), else: :inet.sockname(listener) |> ok!()

    owner = self()
    ref = make_ref()

    pid =
      spawn(fn ->
        Process.flag(:sensitive, true)

        conn =
          if tls,
            do: :ssl.transport_accept(listener, 5000) |> ok!() |> :ssl.handshake(5000) |> ok!(),
            else: :gen_tcp.accept(listener, 5000) |> ok!()

        bytes = read_headers(conn, tls, <<>>)
        [header, body] = :binary.split(bytes, "\r\n\r\n")
        [first | lines] = String.split(header, "\r\n")
        [method, target, _] = String.split(first, " ")

        headers =
          Map.new(lines, fn line ->
            [k, v] = String.split(line, ":", parts: 2)
            {String.downcase(k), String.trim(v)}
          end)

        body =
          read_body(conn, tls, body, String.to_integer(Map.get(headers, "content-length", "0")))

        send(owner, {ref, :request, {method, target, headers, body}})

        if delay == :stall do
          case recv(conn, tls) do
            {:error, :closed} -> send(owner, {ref, :eof})
            _ -> send(owner, {ref, :unexpected_io})
          end
        else
          if delay > 0, do: Process.sleep(delay)
          send_bytes(conn, tls, reply)
        end

        if tls, do: :ssl.close(conn), else: :gen_tcp.close(conn)
        if tls, do: :ssl.close(listener), else: :gen_tcp.close(listener)
        send(owner, {ref, :closed})
      end)

    base = if(tls, do: "https://localhost:", else: "http://127.0.0.1:") <> Integer.to_string(port)
    {base, ref, pid}
  end

  defp recv(conn, true), do: :ssl.recv(conn, 0, 5000)
  defp recv(conn, false), do: :gen_tcp.recv(conn, 0, 5000)
  defp send_bytes(conn, true, bytes), do: :ssl.send(conn, bytes)
  defp send_bytes(conn, false, bytes), do: :gen_tcp.send(conn, bytes)

  defp read_headers(conn, tls, bytes) do
    if :binary.match(bytes, "\r\n\r\n") != :nomatch,
      do: bytes,
      else: read_headers(conn, tls, bytes <> (recv(conn, tls) |> ok!()))
  end

  defp read_body(_, _, body, length) when byte_size(body) >= length, do: body

  defp read_body(conn, tls, body, length),
    do: read_body(conn, tls, body <> (recv(conn, tls) |> ok!()), length)

  def reply(status, media, bytes, extra \\ []) do
    [
      "HTTP/1.1 #{status} OK\r\nContent-Type: #{media}\r\nContent-Length: #{byte_size(bytes)}\r\nConnection: close\r\n",
      extra,
      "\r\n",
      bytes
    ]
  end

  def config(base) do
    Webmania.Config.new(
      base_url: base,
      ca_pem: File.read!(fixture("tls/ca.pem")),
      trusted_file_origins: [base]
    )
    |> ok!()
  end

  def file("application/pdf"), do: File.read!(fixture("canonical_plain.pdf"))

  def file("application/octet-stream"), do: file("application/pdf")
  def file("text/xml"), do: "<?xml version=\"1.0\"?>\n<!-- fiscal -->\n<nfeProc><NFe/></nfeProc>"
  def file("application/xml"), do: file("text/xml")
  def file("text/csv"), do: "uuid,status\r\na1234567-1234-4234-8234-123456789abc,emitido\r\n"
  def file("application/zip"), do: <<80, 75, 5, 6, 0::144>>
end
