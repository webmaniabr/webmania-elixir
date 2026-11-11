# Optional homologation run (ambiente 2) of this Elixir SDK: read-only checks,
# then NF-e and NFS-e issue -> consult -> files -> cancel -> consult.
#
# Configuration comes only from environment variables (README, "Teste em
# homologação"). Without WEBMANIA_LIVE=1 it prints {"result":"blocked"} and
# exits 77 before any network work. Output is one JSON line per step with a
# short reference (sha256 prefix) instead of identifiers; files appear as size,
# sha256 and detected format. Credentials, payloads and bytes are never
# printed. A mutation is never resent: an unknown outcome stops the run with
# exit code 1 and stays in the ledger for reconciliation by consult; the nfe,
# nfse and all scopes therefore need a writable WEBMANIA_LIVE_LEDGER before any
# credential is read. Consults
# are bounded, with backoff; a cancellation is confirmed only by the status
# "cancelado", and one still pending when they run out is ledgered "unknown".
# Exit codes: 0 all steps succeeded, 1 a step failed or is unknown, 77 not
# enabled or not configured.
defmodule Webmania.Examples.Homologacao do
  alias Webmania.Models.{Api1Files, Api1Fiscal, Api2EmitterReads, Api2NfseIssuance}

  @reason "Cancelamento de teste em homologacao"

  def env(name) do
    case System.get_env(name) do
      nil -> nil
      "" -> nil
      value -> value
    end
  end

  def sha256(bytes), do: :crypto.hash(:sha256, bytes) |> Base.encode16(case: :lower)
  def ref(nil), do: nil
  def ref(""), do: nil
  def ref(identifier), do: binary_part(sha256(identifier), 0, 12)

  def emit(map) do
    {:ok, json} = Webmania.JSON.encode(map)
    IO.puts(json)
  end

  def blocked(reason) do
    emit(%{"result" => "blocked", "reason" => reason})
    System.halt(77)
  end

  def line(step, op, ok, http, outcome, kind, identifier, extra \\ %{}) do
    unless ok, do: Process.put(:failed, true)

    emit(
      Map.merge(
        %{"step" => step, "operation" => op, "ok" => ok, "http_status" => http, "outcome" => outcome,
          "kind" => kind, "ref" => ref(identifier)},
        extra
      )
    )
  end

  def note(step, op, ok, outcome, identifier \\ nil), do: line(step, op, ok, nil, outcome, nil, identifier)

  # Records an SDK failure; returns true when the outcome is unknown (stop).
  def fail(step, op, error, identifier \\ nil) do
    unknown = match?(%Webmania.Error{outcome: "unknown"}, error)
    {status, kind} = if is_struct(error, Webmania.Error), do: {error.status, error.kind}, else: {nil, "local"}
    line(step, op, false, status, if(unknown, do: "unknown", else: "failed"), kind, identifier)
    unknown
  end

  def file_line(step, op, %Webmania.FileResponse{} = file, identifier) do
    bytes = Webmania.FileResponse.bytes(file)
    line(step, op, true, file.status, "success", file.file_kind, identifier, %{"size" => byte_size(bytes), "sha256" => sha256(bytes)})
  end

  # `recovery` is the protected selector of an unknown outcome
  # (Webmania.Error.reveal_recovery/1); nil, written as null, means the SDK
  # returned none and reconciliation relies on the identifier alone.
  def record(model, identifier, status, op, recovery \\ nil) do
    case Process.get(:ledger) do
      nil -> :ok
      ledger ->
        {:ok, json} =
          Webmania.JSON.encode(%{"model" => model, "identifier" => identifier || "", "status" => status || "", "operation" => op, "recovery" => recovery})

        IO.binwrite(ledger, json <> "\n")
    end
  end

  @processing ["processando", "processamento", "pendente"]
  # After a cancellation the document can still be processing, or cancelling: an NFS-e can
  # stay in processando_cancelamento until a later consult completes it.
  @cancelling ["processando", "processamento", "contingencia", "pendente", "processando_cancelamento"]
  @poll_attempts 24

  # WEBMANIA_LIVE_POLL_ATTEMPTS can only lower the number of consults (1 to 24).
  def poll_attempts do
    case env("WEBMANIA_LIVE_POLL_ATTEMPTS") do
      nil -> @poll_attempts
      text ->
        if text =~ ~r/\A[0-9]{1,2}\z/ and String.to_integer(text) in 1..@poll_attempts,
          do: String.to_integer(text),
          else: blocked("WEBMANIA_LIVE_POLL_ATTEMPTS must be an integer from 1 to 24")
    end
  end

  # Waits 1 s before the second consult, doubling up to 10 s.
  def backoff(attempt), do: min(1000 * Integer.pow(2, attempt - 2), 10_000)

  def host_of(origin), do: (URI.parse(origin).host || "") |> String.downcase()

  def origin_only(base) do
    uri = URI.parse(base)
    port = if uri.port in [nil, URI.default_port(uri.scheme)], do: "", else: ":#{uri.port}"
    "#{uri.scheme}://#{uri.host}#{port}"
  end

  def payload(variable) do
    path = env(variable) || blocked("payload not configured")

    with {:ok, bytes} <- File.read(path),
         {:ok, %{"ambiente" => 2}} <- Webmania.JSON.decode(bytes) do
      bytes
    else
      {:ok, _} -> blocked("payload ambiente must be 2")
      _ -> blocked("payload unreadable or not JSON")
    end
  end

  def config(base, files) do
    opts = [base_url: base, timeout_ms: 60_000] ++ if(files, do: [trusted_file_origins: [origin_only(base)]], else: [])

    case Webmania.Config.new(opts) do
      {:ok, config} -> config
      _ -> blocked("invalid base URL configuration")
    end
  end

  def nfe_status(nfe, uuid) do
    {:ok, query} = Api1Fiscal.NfeGetDocumentQuery.from_value(%{"uuid" => uuid})

    case Webmania.NfeClient.get_document(nfe, query) do
      {:ok, %{variant: :NfeDocument, value: doc}} -> {:ok, doc.status}
      {:ok, %{variant: :List, value: [doc | _]}} -> {:ok, doc.status}
      {:ok, _} -> {:ok, ""}
      error -> error
    end
  end

  # Bounded consult with backoff: at least one, then again only while the status is pending
  # (empty or in `pending`). Returns the last status, {:ok, ""} after a failed consult, or
  # :stop when a consult outcome is unknown.
  def poll(fetch, step, op, uuid, pending \\ @processing) do
    attempts = Process.get(:poll_attempts, @poll_attempts)

    Enum.reduce_while(1..attempts, {:ok, ""}, fn attempt, _ ->
      if attempt > 1, do: Process.sleep(backoff(attempt))

      case fetch.() do
        {:ok, status} ->
          status = if is_binary(status), do: status, else: ""
          if status != "" and status not in pending, do: {:halt, {:ok, status}}, else: {:cont, {:ok, status}}

        {:error, error} ->
          if fail(step, op, error, uuid), do: {:halt, :stop}, else: {:halt, {:ok, ""}}
      end
    end)
  end

  # The cancellation is confirmed only by a consult with status "cancelado". A document
  # still pending when the consults run out, or whose consult failed, has an unknown
  # cancellation: the ledger records "unknown" for the cancel operation, the run is not a
  # success and the cancel is never resent. Returns true only when cancelled.
  def confirm_cancel(fetch, model, step, op, cancel_op, uuid) do
    case poll(fetch, step, op, uuid, @cancelling) do
      {:ok, "cancelado"} ->
        record(model, uuid, "cancelado", op)
        note(step, op, true, "success", uuid)
        true

      {:ok, status} when status != "" and status not in @cancelling ->
        record(model, uuid, status, op)
        note(step, op, false, "not_cancelled", uuid)
        false

      _pending_or_unknown ->
        record(model, uuid, "unknown", cancel_op)
        note(step, op, false, "unknown", uuid)
        false
    end
  end

  def download(step, op, result, uuid) do
    case result do
      {:ok, file} -> file_line(step, op, file, uuid)
      {:error, error} -> fail(step, op, error, uuid)
    end
  end

  # Returns false when an unknown outcome stopped the run.
  def nfe_cycle(nfe, files, json) do
    case Api1Fiscal.NfeIssueRequest.from_json(json) do
      {:error, _} -> note("nfe.issue", "nfeIssueDocument", false, "invalid_payload"); true
      {:ok, body} ->
        case Webmania.NfeClient.issue_document(nfe, body) do
          {:ok, %{variant: :NfeDocument, value: doc}} ->
            record("nfe", doc.uuid, doc.status, "nfeIssueDocument")
            note("nfe.issue", "nfeIssueDocument", true, "success", doc.uuid)
            nfe_after_issue(nfe, files, doc.uuid)

          {:ok, _} -> note("nfe.issue", "nfeIssueDocument", false, "not_a_document"); true

          {:error, error} ->
            if fail("nfe.issue", "nfeIssueDocument", error) do
              record("nfe", "", "unknown", "nfeIssueDocument", Webmania.Error.reveal_recovery(error))
              false
            else
              true
            end
        end
    end
  end

  defp nfe_after_issue(nfe, files, uuid) do
    case poll(fn -> nfe_status(nfe, uuid) end, "nfe.consult", "nfeGetDocument", uuid) do
      :stop -> false
      {:ok, status} ->
        record("nfe", uuid, status, "nfeGetDocument")

        if status != "aprovado" do
          # Still processing: reconciliation consults it later, never a blind
          # cancel or resend. Rejected or denied documents need no cancellation.
          note("nfe.consult", "nfeGetDocument", false, "not_approved", uuid)
          true
        else
          note("nfe.consult", "nfeGetDocument", true, "success", uuid)
          {:ok, lookup} = Api1Fiscal.NfeLookupRequest.from_value(%{"uuid" => uuid})

          case Webmania.NfeClient.query_document(nfe, lookup) do
            {:ok, _} -> note("nfe.query", "nfeQueryDocument", true, "success", uuid)
            {:error, error} -> fail("nfe.query", "nfeQueryDocument", error, uuid)
          end

          auth = Webmania.FileAuth.company()
          download("nfe.danfe", "nfeDownloadDanfe", Webmania.NfeFilesClient.download_danfe(files, uuid, auth), uuid)
          download("nfe.danfe_simple", "nfeDownloadSimpleDanfe", Webmania.NfeFilesClient.download_simple_danfe(files, uuid, auth), uuid)
          {:ok, xml_query} = Api1Files.NfeDownloadXmlQuery.from_value(%{})
          download("nfe.xml", "nfeDownloadXml", Webmania.NfeFilesClient.download_xml(files, uuid, xml_query, auth), uuid)
          nfe_cancel(nfe, files, uuid, auth)
        end
    end
  end

  # Cancellation is attempted for every approved document, even after a failed read.
  defp nfe_cancel(nfe, files, uuid, auth) do
    {:ok, cancel} = Api1Fiscal.NfeCancelRequest.from_value(%{"uuid" => uuid, "motivo" => @reason})

    case Webmania.NfeClient.cancel_document(nfe, cancel) do
      {:error, error} ->
        if fail("nfe.cancel", "nfeCancelDocument", error, uuid) do
          record("nfe", uuid, "unknown", "nfeCancelDocument", Webmania.Error.reveal_recovery(error))
          false
        else
          true
        end

      {:ok, result} ->
        record("nfe", uuid, result.status, "nfeCancelDocument")
        note("nfe.cancel", "nfeCancelDocument", true, "success", uuid)

        if confirm_cancel(fn -> nfe_status(nfe, uuid) end, "nfe", "nfe.consult_cancelled", "nfeGetDocument", "nfeCancelDocument", uuid) do
          {:ok, cancel_query} = Api1Files.NfeDownloadCancellationXmlQuery.from_value(%{})
          download("nfe.cancellation_xml", "nfeDownloadCancellationXml",
            Webmania.NfeFilesClient.download_cancellation_xml(files, uuid, cancel_query, auth), uuid)
        end

        true
    end
  end

  # Returns false when an unknown outcome stopped the run.
  def nfse_cycle(emitter, files, json) do
    case Api2NfseIssuance.EmitterIssueNfsePayload.from_json(json) do
      {:error, _} -> note("nfse.issue", "emitterIssueNfse", false, "invalid_payload"); true
      {:ok, body} ->
        case Webmania.EmitterClient.issue_nfse(emitter, body) do
          {:ok, issued} ->
            record("nfse", issued.uuid, issued.status, "emitterIssueNfse")
            note("nfse.issue", "emitterIssueNfse", true, "success", issued.uuid)
            nfse_after_issue(emitter, files, issued.uuid)

          {:error, error} ->
            if fail("nfse.issue", "emitterIssueNfse", error) do
              record("nfse", "", "unknown", "emitterIssueNfse", Webmania.Error.reveal_recovery(error))
              false
            else
              true
            end
        end
    end
  end

  defp nfse_status(emitter, uuid) do
    case Webmania.EmitterClient.get_nfse(emitter, uuid) do
      {:ok, response} -> {:ok, response.status}
      error -> error
    end
  end

  defp nfse_after_issue(emitter, files, uuid) do
    case poll(fn -> nfse_status(emitter, uuid) end, "nfse.consult", "emitterGetNfse", uuid) do
      :stop -> false
      {:ok, status} ->
        record("nfse", uuid, status, "emitterGetNfse")

        if status != "aprovado" do
          note("nfse.consult", "emitterGetNfse", false, "not_approved", uuid)
          true
        else
          note("nfse.consult", "emitterGetNfse", true, "success", uuid)
          auth = Webmania.FileAuth.issuer()
          download("nfse.xml", "fileGetNfseXml", Webmania.EmitterFilesClient.get_nfse_xml(files, uuid, auth), uuid)

          case Webmania.EmitterFilesClient.get_nfse_pdf(files, uuid, auth) do
            {:ok, %Webmania.FileResult{kind: :file, file: file}} -> file_line("nfse.pdf", "fileGetNfsePdf", file, uuid)
            {:ok, _} -> note("nfse.pdf", "fileGetNfsePdf", true, "pending_or_redirect", uuid)
            {:error, error} -> fail("nfse.pdf", "fileGetNfsePdf", error, uuid)
          end

          download("nfse.rps_pdf", "fileGetNfseRpsPdf", Webmania.EmitterFilesClient.get_nfse_rps_pdf(files, uuid, auth), uuid)
          {:ok, cancel} = Api2NfseIssuance.EmitterCancelNfsePayload.from_value(%{"uuid" => uuid, "motivo" => 1, "justificativa" => @reason})

          case Webmania.EmitterClient.cancel_nfse(emitter, cancel) do
            {:error, error} ->
              if fail("nfse.cancel", "emitterCancelNfse", error, uuid) do
                record("nfse", uuid, "unknown", "emitterCancelNfse", Webmania.Error.reveal_recovery(error))
                false
              else
                true
              end

            {:ok, result} ->
              record("nfse", uuid, result.status, "emitterCancelNfse")
              note("nfse.cancel", "emitterCancelNfse", true, "success", uuid)
              confirm_cancel(fn -> nfse_status(emitter, uuid) end, "nfse", "nfse.consult_cancelled", "emitterGetNfse", "emitterCancelNfse", uuid)
              true
          end
        end
    end
  end

  def run do
    if System.get_env("WEBMANIA_LIVE") != "1", do: blocked("WEBMANIA_LIVE is not 1")
    scope = env("WEBMANIA_LIVE_SCOPE") || "readonly"
    nfe? = scope in ["nfe", "all"]
    nfse? = scope in ["nfse", "all"]
    unless nfe? or nfse? or scope == "readonly", do: blocked("unsupported WEBMANIA_LIVE_SCOPE")
    Process.put(:poll_attempts, poll_attempts())
    api1 = env("WEBMANIA_API1_BASE_URL") || "https://webmania.com.br/api"
    files_base = env("WEBMANIA_FILES_BASE_URL") || "https://nfe.webmania.com.br"
    api2 = env("WEBMANIA_API2_BASE_URL") || "https://api.webmania.com.br"

    # The allow-list is mandatory: without it no origin is trusted (fail closed).
    allowed = env("WEBMANIA_LIVE_ALLOWED_HOSTS") || blocked("WEBMANIA_LIVE_ALLOWED_HOSTS not configured")
    hosts = allowed |> String.split(",") |> Enum.map(&(&1 |> String.trim() |> String.downcase())) |> Enum.reject(&(&1 == ""))

    for origin <- [api1, files_base, api2], host_of(origin) not in hosts do
      blocked("configured origin outside WEBMANIA_LIVE_ALLOWED_HOSTS")
    end

    nfe_json = if nfe?, do: payload("WEBMANIA_LIVE_NFE_PAYLOAD")
    nfse_json = if nfse?, do: payload("WEBMANIA_LIVE_NFSE_PAYLOAD")
    # An unknown outcome is recorded only in the ledger: a mutation scope needs it writable before any credential.
    ledger_path = env("WEBMANIA_LIVE_LEDGER")
    if (nfe? or nfse?) and is_nil(ledger_path), do: blocked("WEBMANIA_LIVE_LEDGER not configured")

    if ledger_path do
      case File.open(ledger_path, [:append, :binary]) do
        {:ok, ledger} -> File.chmod(ledger_path, 0o600); Process.put(:ledger, ledger)
        _ -> blocked("ledger unwritable")
      end
    end

    names = ~w(WEBMANIA_CONSUMER_KEY WEBMANIA_CONSUMER_SECRET WEBMANIA_ACCESS_TOKEN WEBMANIA_ACCESS_TOKEN_SECRET)
    values = Enum.map(names, &env/1)
    if Enum.any?(values, &is_nil/1), do: blocked("company credentials not configured")
    issuer_token = env("WEBMANIA_ISSUER_TOKEN") || blocked("issuer token not configured")

    with {:ok, company} <- apply(Webmania.Credentials, :company, values),
         {:ok, issuer} <- Webmania.Credentials.issuer(issuer_token),
         {:ok, nfe} <- Webmania.NfeClient.new(company, config(api1, false)),
         {:ok, nfe_files} <- Webmania.NfeFilesClient.new(company, config(files_base, true)),
         {:ok, emitter} <- Webmania.EmitterClient.new(issuer, config(api2, false)),
         {:ok, emitter_files} <- Webmania.EmitterFilesClient.new(issuer, config(api2, true)) do
      {:ok, provider_query} = Api2EmitterReads.EmitterGetNfseProviderStatusQuery.from_value(%{})

      for {step, op, call} <- [
            {"readonly.sefaz_status", "nfeGetSefazStatus", fn -> Webmania.NfeClient.get_sefaz_status(nfe) end},
            {"readonly.certificate", "nfeGetCertificateValidity", fn -> Webmania.NfeClient.get_certificate_validity(nfe) end},
            {"readonly.tax_classes", "nfeListTaxClasses", fn -> Webmania.NfeClient.list_tax_classes(nfe) end},
            {"readonly.nfse_provider", "emitterGetNfseProviderStatus", fn -> Webmania.EmitterClient.get_nfse_provider_status(emitter, provider_query) end}
          ] do
        case call.() do
          {:ok, _} -> note(step, op, true, "success")
          {:error, error} -> fail(step, op, error)
        end
      end

      continue = if nfe_json, do: nfe_cycle(nfe, nfe_files, nfe_json), else: true
      continue = if continue and nfse_json, do: nfse_cycle(emitter, emitter_files, nfse_json), else: continue
      if ledger = Process.get(:ledger), do: File.close(ledger)
      System.halt(if(not continue or Process.get(:failed, false), do: 1, else: 0))
    else
      _ -> blocked("invalid credentials or base URL configuration")
    end
  end
end

Webmania.Examples.Homologacao.run()
