defmodule Webmania.TestMatrix do
  alias Webmania.TestSupport, as: T
  def invoke(0, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    Webmania.NfeClient.get_certificate_validity(client)
  end
  def invoke(1, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    Webmania.NfeClient.get_sefaz_status(client)
  end
  def invoke(2, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api1Fiscal.NfeGetDocumentQuery.from_json(Base.decode64!("eyJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAxIn0=")) |> T.ok!()
    Webmania.NfeClient.get_document(client, query)
  end
  def invoke(3, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfeLookupRequest.from_json(Base.decode64!("eyJjaGF2ZSI6IjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIn0=")) |> T.ok!()
    Webmania.NfeClient.query_document(client, body)
  end
  def invoke(4, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfeCorrectionRequest.from_json(Base.decode64!("eyJjaGF2ZSI6IjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIiwiY29ycmVjYW8iOiIwMDAwMDAwMC0wMDAwLTQwMDAtODAwMC0wMDAwMDAwMDAwMDEifQ==")) |> T.ok!()
    Webmania.NfeClient.create_correction(client, body)
  end
  def invoke(5, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfeManifestationRequest.from_json(Base.decode64!("eyJjaGF2ZSI6IjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIiwiYW1iaWVudGUiOjIsImV2ZW50byI6IjIxMDI0MCIsImp1c3RpZmljYXRpdmEiOiJUaGUgZ29vZHMgd2VyZSBuZXZlciBkZWxpdmVyZWQuIn0=")) |> T.ok!()
    Webmania.NfeClient.create_manifestation(client, body)
  end
  def invoke(6, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfeCancelRequest.from_json(Base.decode64!("eyJjaGF2ZSI6IjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIiwibW90aXZvIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAxIn0=")) |> T.ok!()
    Webmania.NfeClient.cancel_document(client, body)
  end
  def invoke(7, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfeVoidRequest.from_json(Base.decode64!("eyJzZXF1ZW5jaWEiOiIwMDAwMDAwMCIsIm1vdGl2byI6IjAwMDAwMDAwLTAwMDAtNDAwMC04MDAwLTAwMDAwMDAwMDAwMSIsImFtYmllbnRlIjoxLCJzZXJpZSI6IjAiLCJtb2RlbG8iOiIxIn0=")) |> T.ok!()
    Webmania.NfeClient.void_numbering(client, body)
  end
  def invoke(8, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfePaymentEventRequest.from_json(Base.decode64!("eyJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAwIiwicGFnYW1lbnRvIjp7ImZvcm1hX3BhZ2FtZW50byI6IjAxIiwidmFsb3JfcGFnYW1lbnRvIjoiMC4wMCIsImRhdGFfcGFnYW1lbnRvIjoiMjAyNi0xMC0yNSJ9fQ==")) |> T.ok!()
    Webmania.NfeClient.create_payment_event(client, body)
  end
  def invoke(9, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfePaymentEventCancelRequest.from_json(Base.decode64!("eyJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAxIn0=")) |> T.ok!()
    Webmania.NfeClient.cancel_payment_event(client, body)
  end
  def invoke(10, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfeIbsCbsEventCancelRequest.from_json(Base.decode64!("eyJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAxIn0=")) |> T.ok!()
    Webmania.NfeClient.cancel_ibs_cbs_event(client, body)
  end
  def invoke(11, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    Webmania.NfeClient.list_tax_classes(client)
  end
  def invoke(12, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.TaxClassDeleteRequest.from_json(Base.decode64!("eyJyZWZlcmVuY2lhIjoic3ludGhldGljIn0=")) |> T.ok!()
    Webmania.NfeClient.delete_tax_classes(client, body)
  end
  def invoke(13, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.FiscalTaxClassRequest.from_json(Base.decode64!("eyJkZXNjcmljYW8iOiJzeW50aGV0aWMiLCJpY21zIjpbeyJ0aXBvX3RyaWJ1dGFjYW8iOiJzeW50aGV0aWMiLCJjZW5hcmlvIjoic3ludGhldGljIiwidGlwb19wZXNzb2EiOiJzeW50aGV0aWMiLCJjb2RpZ29fY2ZvcCI6InN5bnRoZXRpYyIsInNpdHVhY2FvX3RyaWJ1dGFyaWEiOiJzeW4ifV0sImlwaSI6W3siY2VuYXJpbyI6InN5bnRoZXRpYyIsInRpcG9fcGVzc29hIjoic3ludGhldGljIiwic2l0dWFjYW9fdHJpYnV0YXJpYSI6InN5IiwiY29kaWdvX2VucXVhZHJhbWVudG8iOiJzeW4iLCJhbGlxdW90YSI6IjAifV0sInBpcyI6W3siY2VuYXJpbyI6InN5bnRoZXRpYyIsInRpcG9fcGVzc29hIjoic3ludGhldGljIiwic2l0dWFjYW9fdHJpYnV0YXJpYSI6InN5IiwiYWxpcXVvdGEiOiIwIn1dLCJjb2ZpbnMiOlt7ImNlbmFyaW8iOiJzeW50aGV0aWMiLCJ0aXBvX3Blc3NvYSI6InN5bnRoZXRpYyIsInNpdHVhY2FvX3RyaWJ1dGFyaWEiOiJzeSIsImFsaXF1b3RhIjoiMCJ9XX0=")) |> T.ok!()
    Webmania.NfeClient.save_tax_classes(client, body)
  end
  def invoke(14, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfeIssueRequest.from_json(Base.decode64!("eyJJRCI6ImNvbnRyb2xsZWQtMDAxIiwibW9kZWxvIjoiMSIsIm9wZXJhY2FvIjoxLCJuYXR1cmV6YV9vcGVyYWNhbyI6IlN5bnRoZXRpYyBzYWxlIiwiZmluYWxpZGFkZSI6MSwiYW1iaWVudGUiOjIsImNsaWVudGUiOnsiY3BmIjoiMDAwLjAwMC4wMDAtMDAiLCJub21lX2NvbXBsZXRvIjoiU3ludGhldGljIHBlcnNvbiIsImVuZGVyZWNvIjoiU3ludGhldGljIHN0cmVldCIsIm51bWVybyI6IjEiLCJiYWlycm8iOiJTeW50aGV0aWMgZGlzdHJpY3QiLCJjaWRhZGUiOiJTeW50aGV0aWMgY2l0eSIsInVmIjoiU1AiLCJjZXAiOiIwMTAwMS0wMDAifSwicHJvZHV0b3MiOlt7Im5vbWUiOiJTeW50aGV0aWMgaXRlbSIsImNvZGlnbyI6IjAwMDEiLCJuY20iOiIwMDAwLjAwLjAwIiwicXVhbnRpZGFkZSI6IjEuMDAwMCIsInVuaWRhZGUiOiJVTiIsInN1YnRvdGFsIjoiMC4xMCIsInRvdGFsIjoiMC4xMCIsIm9yaWdlbSI6MCwiaW1wb3N0b3MiOnsiaWNtcyI6eyJjb2RpZ29fY2ZvcCI6IjUxMDIiLCJzaXR1YWNhb190cmlidXRhcmlhIjoiMTAyIn19fV0sInBlZGlkbyI6eyJwcmVzZW5jYSI6MSwibW9kYWxpZGFkZV9mcmV0ZSI6OSwicGFnYW1lbnRvIjowLCJmb3JtYV9wYWdhbWVudG8iOiIwMSIsInZhbG9yX3BhZ2FtZW50byI6IjAuMTAifX0=")) |> T.ok!()
    Webmania.NfeClient.issue_document(client, body)
  end
  def invoke(15, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfeReturnRequest.from_json(Base.decode64!("eyJjbGFzc2VfaW1wb3N0byI6InN5bnRoZXRpYyIsImNoYXZlIjoiMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAiLCJhbWJpZW50ZSI6MSwibmF0dXJlemFfb3BlcmFjYW8iOiJzeW50aGV0aWMifQ==")) |> T.ok!()
    Webmania.NfeClient.issue_return(client, body)
  end
  def invoke(16, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfeAdjustmentRequest.from_json(Base.decode64!("eyJvcGVyYWNhbyI6MCwibmF0dXJlemFfb3BlcmFjYW8iOiJzeW50aGV0aWMiLCJjb2RpZ29fY2ZvcCI6IjUxMDIiLCJhbWJpZW50ZSI6MSwiY2xpZW50ZSI6e319")) |> T.ok!()
    Webmania.NfeClient.issue_adjustment(client, body)
  end
  def invoke(17, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfeComplementRequest.from_json(Base.decode64!("eyJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAxIiwib3BlcmFjYW8iOjEsIm5hdHVyZXphX29wZXJhY2FvIjoiU3ludGhldGljIGNvbXBsZW1lbnQiLCJhbWJpZW50ZSI6MiwiY2xpZW50ZSI6eyJjcGYiOiIwMDAuMDAwLjAwMC0wMCIsIm5vbWVfY29tcGxldG8iOiJTeW50aGV0aWMgcGVyc29uIiwiZW5kZXJlY28iOiJTeW50aGV0aWMgc3RyZWV0IiwibnVtZXJvIjoiMSIsImJhaXJybyI6IlN5bnRoZXRpYyBkaXN0cmljdCIsImNpZGFkZSI6IlN5bnRoZXRpYyBjaXR5IiwidWYiOiJTUCIsImNlcCI6IjAxMDAxLTAwMCJ9LCJpbXBvc3RvcyI6eyJpYnNfY2JzIjp7InNpdHVhY2FvX3RyaWJ1dGFyaWEiOiIwMDAiLCJjbGFzc2lmaWNhY2FvX3RyaWJ1dGFyaWEiOiIwMDAwMDEiLCJiYXNlX2NhbGN1bG8iOjB9fX0=")) |> T.ok!()
    Webmania.NfeClient.issue_complement(client, body)
  end
  def invoke(18, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.FiscalCompanyUpdateRequest.from_json(Base.decode64!("eyJjbmFlIjpudWxsfQ==")) |> T.ok!()
    Webmania.NfeClient.update_company(client, body)
  end
  def invoke(19, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.FiscalReportRequest.from_json(Base.decode64!("eyJtb2RlbG8iOiJuZmUiLCJyZWxhdG9yaW8iOiJkYW5mZSIsIm51bWVyb19pbmljaW8iOiIxIiwibnVtZXJvX2ZpbmFsIjoiNSJ9")) |> T.ok!()
    Webmania.NfeClient.create_or_poll_report(client, body)
  end
  def invoke(20, config) do
    client = Webmania.NfeClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1Fiscal.NfeIbsCbsEventRequest.from_json(Base.decode64!("eyJjaGF2ZSI6IjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIiwiYW1iaWVudGUiOjIsImNvZF9ldmVudG8iOiIxMTIxMTAifQ==")) |> T.ok!()
    Webmania.NfeClient.create_ibs_cbs_event(client, body)
  end
  def invoke(21, config) do
    client = Webmania.ResellerClient.new(Webmania.Credentials.reseller("synthetic-reseller-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api1B2b.ResellerCreateCompaniesRequest.from_json(Base.decode64!("eyJxdWFudGlkYWRlIjoxfQ==")) |> T.ok!()
    Webmania.ResellerClient.create_companies(client, body)
  end
  def invoke(22, config) do
    client = Webmania.ResellerClient.new(Webmania.Credentials.reseller("synthetic-reseller-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    Webmania.ResellerClient.list_companies(client)
  end
  def invoke(23, config) do
    client = Webmania.ResellerClient.new(Webmania.Credentials.reseller("synthetic-reseller-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api1B2b.B2bV1GetProcessedRequestsQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.ResellerClient.get_processed_requests(client, query)
  end
  def invoke(24, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2CteIssuance.EmitterIssueCtePayload.from_json(Base.decode64!("eyJhbWJpZW50ZSI6MiwibW9kZWxvIjoiY3RlX29zIiwibmF0dXJlemFfb3BlcmFjYW8iOiJTeW50aGV0aWMgcGFzc2VuZ2VyIHRyYW5zcG9ydCIsIm1vZGFsaWRhZGUiOjEsImZpbmFsaWRhZGUiOiIwIiwiY29udHJpYnVpY2FvX3RvbWFkb3IiOjksImluZGljYWRvcl90b21hZG9yIjo0LCJsb2NhbF9pbmljaW9fcHJlc3RhY2FvIjp7ImNpZGFkZSI6IlN5bnRoZXRpYyBvcmlnaW4iLCJ1ZiI6IlNQIn0sImxvY2FsX3Rlcm1pbm9fcHJlc3RhY2FvIjp7ImNpZGFkZSI6IlN5bnRoZXRpYyBkZXN0aW5hdGlvbiIsInVmIjoiUkoifSwidG9tYWRvciI6eyJjbnBqIjoiMDAwMDAwMDAwMDAwMDAiLCJub21lX3JhemFvIjoiU3ludGhldGljIGNvbXBhbnkiLCJlbmRlcmVjbyI6IlN5bnRoZXRpYyBzdHJlZXQiLCJudW1lcm8iOiIwMDEiLCJiYWlycm8iOiJTeW50aGV0aWMiLCJjaWRhZGUiOiJTeW50aGV0aWMgY2l0eSIsInVmIjoiU1AifSwic2VydmljbyI6eyJ0aXBvIjo2LCJkZXNjcmljYW8iOiJTeW50aGV0aWMgcGFzc2VuZ2VyIHRyYW5zcG9ydCIsInZhbG9yX3RvdGFsIjoiMTAwLjAwIiwidmFsb3JfcmVjZWJpZG8iOiIxMDAuMDAifSwiY2FyZ2EiOnsicHJvZHV0b19wcmVkb21pbmFudGUiOiJTeW50aGV0aWMgc2VydmljZSIsInZhbG9yX3RvdGFsIjoiMTAwLjAwIiwicXVhbnRpZGFkZXMiOlt7InF1YW50aWRhZGUiOiIxLjAwMDAifV19LCJpbXBvc3RvcyI6eyJjZm9wIjoiNjM1MyIsImNsYXNzaWZpY2FjYW9fdHJpYnV0YXJpYSI6IlNOIn0sImRvY3VtZW50b3NfZmlzY2FpcyI6W3sibnVtZXJvIjoiMDAxIiwiZGF0YV9lbWlzc2FvIjoiMjAyNi0wMS0wMSIsInZhbG9yX2RvY3VtZW50byI6IjEwMC4wMCJ9XSwicm9kb3ZpYXJpbyI6eyJ0YWZfY3RlX29zIjoiMDAwMDAwMDAwMDAwIiwidGlwb19mcmV0YW1lbnRvIjoiMiJ9fQ==")) |> T.ok!()
    Webmania.EmitterClient.issue_cte(client, body)
  end
  def invoke(25, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2CteIssuance.EmitterIssueSimplifiedCtePayload.from_json(Base.decode64!("eyJhbWJpZW50ZSI6IjEiLCJtb2RlbG8iOiJjdGUiLCJuZmVfeG1sIjoic3ludGhldGljIn0=")) |> T.ok!()
    Webmania.EmitterClient.issue_simplified_cte(client, body)
  end
  def invoke(26, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2CteIssuance.EmitterCancelCtePayload.from_json(Base.decode64!("eyJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAwIiwianVzdGlmaWNhdGl2YSI6IlN5bnRoZXRpYyBjYW5jZWxsYXRpb24ganVzdGlmaWNhdGlvbiJ9")) |> T.ok!()
    Webmania.EmitterClient.cancel_cte(client, body)
  end
  def invoke(27, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2CteIssuance.EmitterCorrectCtePayload.from_json(Base.decode64!("eyJhbHRlcmFjb2VzIjpbeyJjYW1wbyI6InN5bnRoZXRpYyIsImdydXBvIjoic3ludGhldGljIiwidmFsb3IiOiJzeW50aGV0aWMifV0sInV1aWQiOiIwMDAwMDAwMC0wMDAwLTQwMDAtODAwMC0wMDAwMDAwMDAwMDEifQ==")) |> T.ok!()
    Webmania.EmitterClient.correct_cte(client, body)
  end
  def invoke(28, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2CteIssuance.EmitterConfirmCteDeliveryPayload.from_json(Base.decode64!("eyJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAxIiwibm90YXNfZmlzY2FpcyI6WyIxMjM0NTZhYjEyY2QzNGVmNTYwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMCJdLCJjb21wcm92YW50ZSI6IlNZTlRIRVRJQ19JTUFHRV9QTEFDRUhPTERFUiJ9")) |> T.ok!()
    Webmania.EmitterClient.confirm_cte_delivery(client, body)
  end
  def invoke(29, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2CteIssuance.EmitterCancelCteDeliveryPayload.from_json(Base.decode64!("eyJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAxIiwicHJvdG9jb2xvIjoic3ludGhldGljIiwic2VxdWVuY2lhIjoic3ludGhldGljIn0=")) |> T.ok!()
    Webmania.EmitterClient.cancel_cte_delivery(client, body)
  end
  def invoke(30, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2CteIssuance.EmitterLinkCtePaymentPayload.from_json(Base.decode64!("eyJwYWdhbWVudG8iOnsiY25wal9iYXNlX3BzcCI6IjAwMDAwMDAwIiwiY25wal9yZWNlYmVkb3IiOiIwMDAwMDAwMDAwMDAwMCIsImlkX3RyYW5zYWNhbyI6InN5bnRoZXRpYyIsIm5fcGFnIjoxLCJ0cF9tZWlvX3BhZ2FtZW50byI6InN5bnRoZXRpYyJ9LCJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAxIn0=")) |> T.ok!()
    Webmania.EmitterClient.link_cte_payment(client, body)
  end
  def invoke(31, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2CteIssuance.EmitterCancelCtePaymentLinkPayload.from_json(Base.decode64!("eyJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAxIiwicHJvdG9jb2xvX3ZpbmN1bGFjYW8iOiIwMDAwMDAwMDAwMDAwMDAiLCJzZXF1ZW5jaWFfdmluY3VsYWNhbyI6MX0=")) |> T.ok!()
    Webmania.EmitterClient.cancel_cte_payment_link(client, body)
  end
  def invoke(32, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterClient.get_cte(client, "synthetic")
  end
  def invoke(33, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterClient.get_cte_payment_events(client, "synthetic")
  end
  def invoke(34, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2DceIssuance.EmitterIssueDcePayload.from_json(Base.decode64!("eyJhbWJpZW50ZSI6IjEiLCJpdGVucyI6W3siZGVzY3JpY2FvIjoic3ludGhldGljIiwibmNtIjoiMDAwMDAwMDAiLCJxdWFudGlkYWRlIjowLjAsInZhbG9yX3VuaXRhcmlvIjowLjB9XSwiY2xpZW50ZSI6eyJjbnBqIjoiMDAwMDAwMDAwMDAwMDAiLCJjcGYiOiIwMDAwMDAwMDAwMCIsImlkZW50aWZpY2FjYW9fYWx0ZXJuYXRpdmEiOiJzeW50aGV0aWMiLCJub21lX2NvbXBsZXRvIjoic3ludGhldGljIiwicmF6YW9fc29jaWFsIjoic3ludGhldGljIn0sImVtaXRlbnRlIjp7ImNucGoiOiIwMDAwMDAwMDAwMDAwMCIsImNwZiI6IjAwMDAwMDAwMDAwIiwiaWRlbnRpZmljYWNhb19hbHRlcm5hdGl2YSI6InN5bnRoZXRpYyIsIm5vbWVfY29tcGxldG8iOiJzeW50aGV0aWMiLCJyYXphb19zb2NpYWwiOiJzeW50aGV0aWMifX0=")) |> T.ok!()
    Webmania.EmitterClient.issue_dce(client, body)
  end
  def invoke(35, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2DceIssuance.EmitterCancelDcePayload.from_json(Base.decode64!("eyJjaGF2ZSI6IjEyMzQ1NmFiMTJjZDM0ZWY1NjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIiwianVzdGlmaWNhdGl2YSI6IlN5bnRoZXRpYyBzY2hlbWEgZXhhbXBsZSBvbmx5In0=")) |> T.ok!()
    Webmania.EmitterClient.cancel_dce(client, body)
  end
  def invoke(36, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterClient.get_dce(client, "synthetic")
  end
  def invoke(37, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api2EmitterReads.EmitterGetNfseProviderStatusQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.EmitterClient.get_nfse_provider_status(client, query)
  end
  def invoke(38, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterClient.get_nfcom_service_status(client)
  end
  def invoke(39, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterClient.get_nfse(client, "synthetic")
  end
  def invoke(40, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterClient.get_nfcom(client, "00000000-0000-4000-8000-000000000001")
  end
  def invoke(41, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterClient.get_nfcom_payment_events(client, "00000000-0000-4000-8000-000000000001")
  end
  def invoke(42, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2EmitterReads.NfseManifestationRequest.from_json(Base.decode64!("eyJhbWJpZW50ZSI6MiwiY2hhdmUiOiIwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMCIsIm1hbmlmZXN0YWRvciI6MSwiZXZlbnRvIjoxfQ==")) |> T.ok!()
    Webmania.EmitterClient.manifest_nfse(client, body)
  end
  def invoke(43, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayload.from_json(Base.decode64!("eyJhbWJpZW50ZSI6IjEiLCJjYXJyZWdhbWVudG8iOlt7Im5vbWVfbXVuaWNpcGlvIjoic3ludGhldGljIn1dLCJkZXNjYXJyZWdhbWVudG8iOlt7ImRvY3VtZW50b3NfZmlzY2FpcyI6W3siY2hhdmUiOiIwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMCJ9XSwibm9tZV9tdW5pY2lwaW8iOiJzeW50aGV0aWMifV0sImVtaXRlbnRlIjoiMSIsIm1vZGFsaWRhZGUiOiIxIiwicGVzb19icnV0byI6InN5bnRoZXRpYyIsInVmX2NhcnJlZ2FtZW50byI6InN5bnRoZXRpYyIsInVmX2Rlc2NhcnJlZ2FtZW50byI6InN5bnRoZXRpYyIsInVuaWRhZGUiOiIwMSIsInZhbG9yX2NhcmdhIjoic3ludGhldGljIiwicm9kb3ZpYXJpbyI6e319")) |> T.ok!()
    Webmania.EmitterClient.issue_mdfe(client, body)
  end
  def invoke(44, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2MdfeIssuance.EmitterCloseMdfePayload.from_json(Base.decode64!("eyJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAxIiwiY29kaWdvX211bmljaXBpbyI6IjAwMDAwMDAiLCJtdW5pY2lwaW8iOiJzeW50aGV0aWMiLCJ1ZiI6InN5bnRoZXRpYyJ9")) |> T.ok!()
    Webmania.EmitterClient.close_mdfe(client, body)
  end
  def invoke(45, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2MdfeIssuance.EmitterCancelMdfePayload.from_json(Base.decode64!("eyJjaGF2ZSI6IjEyMzQ1NmFiMTJjZDM0ZWY1NjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIiwianVzdGlmaWNhdGl2YSI6IlN5bnRoZXRpYyBzY2hlbWEgZXhhbXBsZSBvbmx5In0=")) |> T.ok!()
    Webmania.EmitterClient.cancel_mdfe(client, body)
  end
  def invoke(46, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2MdfeIssuance.EmitterAddMdfeConductorPayload.from_json(Base.decode64!("eyJjcGYiOiJzeW50aGV0aWMiLCJub21lIjoic3ludGhldGljIiwidXVpZCI6IjAwMDAwMDAwLTAwMDAtNDAwMC04MDAwLTAwMDAwMDAwMDAwMSJ9")) |> T.ok!()
    Webmania.EmitterClient.add_mdfe_conductor(client, body)
  end
  def invoke(47, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterClient.get_mdfe(client, "synthetic")
  end
  def invoke(48, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayload.from_json(Base.decode64!("eyJhbWJpZW50ZSI6MiwibmF0dXJlemFfb3BlcmFjYW8iOiJTeW50aGV0aWMgY29tbXVuaWNhdGlvbiIsInRpcG9fb3BlcmFjYW8iOjEsImZpbmFsaWRhZGUiOjEsInRpcG9fZmF0dXJhbWVudG8iOjAsImNsaWVudGUiOnsiY25waiI6IjAwMDAwMDAwMDAwMDAwIiwicmF6YW9fc29jaWFsIjoiU3ludGhldGljIGNvbXBhbnkiLCJpbmRpY2Fkb3JfaWUiOjksImVuZGVyZWNvIjp7ImxvZ3JhZG91cm8iOiJTeW50aGV0aWMgc3RyZWV0IiwibnVtZXJvIjoiMDAxIiwiYmFpcnJvIjoiU3ludGhldGljIiwiY29kaWdvX211bmljaXBpbyI6IjM1NTAzMDgiLCJtdW5pY2lwaW8iOiJTeW50aGV0aWMgbXVuaWNpcGFsaXR5IiwidWYiOiJTUCIsImNlcCI6IjAwMDAwMDAwIn19LCJhc3NpbmFudGUiOnsiY29kaWdvIjoiU1lOVEhFVElDIiwidGlwbyI6MSwidGlwb19zZXJ2aWNvIjo0LCJjb250cmF0byI6eyJudW1lcm8iOiJTWU5USEVUSUMiLCJkYXRhX2luaWNpbyI6IjIwMjYtMDEtMDEiLCJkYXRhX2ZpbSI6IjIwMjYtMTItMzEifX0sIml0ZW5zIjpbeyJkZXNjcmljYW8iOiJTeW50aGV0aWMgY29tbXVuaWNhdGlvbiBzZXJ2aWNlIiwidW5pZGFkZSI6Ik1FUyIsInF1YW50aWRhZGUiOiIxLjAwMDAiLCJ2YWxvcl91bml0YXJpbyI6Ijk5LjkwIiwidmFsb3JfdG90YWwiOiI5OS45MCIsImluZGljYWRvcl90b3RhbCI6MSwiY2xhc3NlX2ltcG9zdG8iOiJSRUYxMjM0NTYifV19")) |> T.ok!()
    Webmania.EmitterClient.issue_nfcom(client, body)
  end
  def invoke(49, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2NfcomIssuance.EmitterCancelNfcomPayload.from_json(Base.decode64!("eyJjaGF2ZSI6IjEyMzQ1NmFiMTJjZDM0ZWY1NjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIiwianVzdGlmaWNhdGl2YSI6IlN5bnRoZXRpYyBzY2hlbWEgZXhhbXBsZSBvbmx5In0=")) |> T.ok!()
    Webmania.EmitterClient.cancel_nfcom(client, body)
  end
  def invoke(50, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayload.from_json(Base.decode64!("eyJhbWJpZW50ZSI6MiwicnBzIjpbeyJzZXJ2aWNvIjp7ImRpc2NyaW1pbmFjYW8iOiJTeW50aGV0aWMgc2VydmljZSIsInZhbG9yX3NlcnZpY29zIjoiMTAwLjAwIiwiaXNzX3JldGlkbyI6Mn19XX0=")) |> T.ok!()
    Webmania.EmitterClient.issue_nfse(client, body)
  end
  def invoke(51, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2NfseIssuance.EmitterCancelNfsePayload.from_json(Base.decode64!("eyJ1dWlkIjoiMDAwMDAwMDAtMDAwMC00MDAwLTgwMDAtMDAwMDAwMDAwMDAxIn0=")) |> T.ok!()
    Webmania.EmitterClient.cancel_nfse(client, body)
  end
  def invoke(52, config) do
    client = Webmania.EmitterClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayload.from_json(Base.decode64!("eyJhbWJpZW50ZSI6MiwibW90aXZvIjoxLCJjaGF2ZSI6IjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIiwicnBzIjpbeyJzZXJ2aWNvIjp7ImNsYXNzZV9pbXBvc3RvIjoiU1lOVEhFVElDIiwiZGlzY3JpbWluYWNhbyI6IlN5bnRoZXRpYyBzZXJ2aWNlIiwidmFsb3Jfc2Vydmljb3MiOiIxLjAwIn19XX0=")) |> T.ok!()
    Webmania.EmitterClient.replace_nfse(client, body)
  end
  def invoke(53, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2MonitorDocuments.MonitorSearchRequest.from_json(Base.decode64!("eyJtb2RlbG8iOiJuZmUiLCJmaWx0cm9zIjp7ImVtcHJlc2FfdXVpZCI6WyIwMDAwMDAwMC0wMDAwLTAwMDAtMDAwMC0wMDAwMDAwMDAwMDAiXSwiY2F0ZWdvcmlhIjpbInJlY2ViaWRhcyJdLCJzdGF0dXMiOlsiYXByb3ZhZG8iXX0sImZpbHRyb3NfbW9kZWxvIjp7Im9wZXJhY2FvIjpbIjAiLDFdfSwicGFnaW5hY2FvIjoiY3Vyc29yIn0=")) |> T.ok!()
    query = Webmania.Models.Api2MonitorDocuments.MonitorSearchDocumentsQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.MonitorClient.search_documents(client, body, query)
  end
  def invoke(54, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api2MonitorDocuments.MonitorGetDocumentQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.MonitorClient.get_document(client, "00000000-0000-4000-8000-000000000001", query)
  end
  def invoke(55, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    Webmania.MonitorClient.list_document_events(client, "00000000-0000-4000-8000-000000000001")
  end
  def invoke(56, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2MonitorDocuments.MonitorManifestationRequest.from_json(Base.decode64!("eyJldmVudG8iOjEsIm1hbmlmZXN0YWNhbyI6MywianVzdGlmaWNhdGl2YSI6IlN5bnRoZXRpYyBqdXN0aWZpZWQgb3BlcmF0aW9uIn0=")) |> T.ok!()
    Webmania.MonitorClient.manifest_document(client, "00000000-0000-4000-8000-000000000001", body)
  end
  def invoke(57, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api2MonitorDocuments.MonitorListReportsQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.MonitorClient.list_reports(client, query)
  end
  def invoke(58, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    Webmania.MonitorClient.download_report(client, "00000000-0000-4000-8000-000000000001")
  end
  def invoke(59, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2MonitorDocuments.MonitorImportRequest.from_json(Base.decode64!("eyJlbXByZXNhX3V1aWQiOiIwMDAwMDAwMC0wMDAwLTQwMDAtODAwMC0wMDAwMDAwMDAwMDAiLCJjaGF2ZSI6IjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIn0=")) |> T.ok!()
    Webmania.MonitorClient.import_document(client, body)
  end
  def invoke(60, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    Webmania.MonitorClient.get_import_status(client, "00000000-0000-4000-8000-000000000001")
  end
  def invoke(61, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2MonitorManagement.MonitorCreateCompanyRequest.from_json(Base.decode64!("eyJjbnBqIjoiMDAwMDAwMDAwMDAwMDAiLCJyYXphb19zb2NpYWwiOiJTeW50aGV0aWMgY29tcGFueSIsImNlcCI6IjAxMDAxMDAwIiwiY2VydGlmaWNhZG9fYmFzZTY0IjoiUEhSbGMzUXZQZz09IiwiY2VydGlmaWNhZG9fc2VuaGEiOiJzeW50aGV0aWMtcGxhY2Vob2xkZXIifQ==")) |> T.ok!()
    Webmania.MonitorClient.create_company(client, body)
  end
  def invoke(62, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2MonitorManagement.MonitorUpdateCompanyRequest.from_json(Base.decode64!("eyJtb2RlbG9zX2Rvd25sb2FkIjpbXX0=")) |> T.ok!()
    Webmania.MonitorClient.update_company(client, "00000000-0000-4000-8000-000000000001", body)
  end
  def invoke(63, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2MonitorManagement.MonitorCreateMunicipalityRequest.from_json(Base.decode64!("eyJjb2RpZ29faWJnZSI6IjM1NTAzMDgifQ==")) |> T.ok!()
    Webmania.MonitorClient.create_company_municipality(client, "00000000-0000-4000-8000-000000000001", body)
  end
  def invoke(64, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    body = Webmania.Models.Api2MonitorManagement.MonitorUpdateMunicipalityRequest.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.MonitorClient.update_company_municipality(client, "00000000-0000-4000-8000-000000000001", "00000000-0000-4000-8000-000000000001", body)
  end
  def invoke(65, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    Webmania.MonitorClient.delete_company_municipality(client, "00000000-0000-4000-8000-000000000001", "00000000-0000-4000-8000-000000000001")
  end
  def invoke(66, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api2MonitorReads.MonitorListCompaniesQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.MonitorClient.list_companies(client, query)
  end
  def invoke(67, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    Webmania.MonitorClient.get_company(client, "00000000-0000-4000-8000-000000000001")
  end
  def invoke(68, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api2MonitorReads.MonitorListCompanyMunicipalitiesQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.MonitorClient.list_company_municipalities(client, "00000000-0000-4000-8000-000000000001", query)
  end
  def invoke(69, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    Webmania.MonitorClient.get_company_municipality(client, "00000000-0000-4000-8000-000000000001", "00000000-0000-4000-8000-000000000001")
  end
  def invoke(70, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api2MonitorReads.MonitorListAvailableMunicipalitiesQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.MonitorClient.list_available_municipalities(client, query)
  end
  def invoke(71, config) do
    client = Webmania.MonitorClient.new(Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api2MonitorReads.MonitorGetDownloadStatisticsQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.MonitorClient.get_download_statistics(client, query)
  end
  def invoke(72, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    Webmania.NfeFilesClient.download_danfe(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.company())
  end
  def invoke(73, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    Webmania.NfeFilesClient.download_simple_danfe(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.company())
  end
  def invoke(74, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    Webmania.NfeFilesClient.download_label_danfe(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.company())
  end
  def invoke(75, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    Webmania.NfeFilesClient.download_correction_pdf(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.company())
  end
  def invoke(76, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    Webmania.NfeFilesClient.download_correction_pdf_sequence(client, "00000000-0000-4000-8000-000000000001", 1, Webmania.FileAuth.company())
  end
  def invoke(77, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api1Files.NfeDownloadXmlQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.NfeFilesClient.download_xml(client, "00000000-0000-4000-8000-000000000001", query, Webmania.FileAuth.company())
  end
  def invoke(78, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api1Files.NfeDownloadCancellationXmlQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.NfeFilesClient.download_cancellation_xml(client, "00000000-0000-4000-8000-000000000001", query, Webmania.FileAuth.company())
  end
  def invoke(79, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api1Files.NfeDownloadCorrectionXmlQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.NfeFilesClient.download_correction_xml(client, "00000000-0000-4000-8000-000000000001", query, Webmania.FileAuth.company())
  end
  def invoke(80, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api1Files.NfeDownloadCorrectionXmlSequenceQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.NfeFilesClient.download_correction_xml_sequence(client, "00000000-0000-4000-8000-000000000001", 1, query, Webmania.FileAuth.company())
  end
  def invoke(81, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api1Files.NfeDownloadManifestationXmlQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.NfeFilesClient.download_manifestation_xml(client, "00000000-0000-4000-8000-000000000001", query, Webmania.FileAuth.company())
  end
  def invoke(82, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api1Files.NfeDownloadPaymentEventXmlQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.NfeFilesClient.download_payment_event_xml(client, "00000000-0000-4000-8000-000000000001", query, Webmania.FileAuth.company())
  end
  def invoke(83, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    query = Webmania.Models.Api1Files.NfeDownloadPaymentEventXmlSequenceQuery.from_json(Base.decode64!("e30=")) |> T.ok!()
    Webmania.NfeFilesClient.download_payment_event_xml_sequence(client, "00000000-0000-4000-8000-000000000001", 1, query, Webmania.FileAuth.company())
  end
  def invoke(84, config) do
    Webmania.NfeFilesClient.download_ibs_cbs_event_xml(:invalid, :invalid, :invalid, :invalid)
  end
  def invoke(85, config) do
    client = Webmania.NfeFilesClient.new(Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!(), config) |> T.ok!()
    Webmania.NfeFilesClient.download_report(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.public_report())
  end
  def invoke(86, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_nfse_xml(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(87, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_nfse_pdf(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(88, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_nfse_rps_pdf(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(89, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_cte_xml(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(90, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_cte_cancel_xml(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(91, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_cte_pdf(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(92, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_cte_correction_xml(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(93, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_cte_correction_pdf(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(94, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_mdfe_xml(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(95, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_mdfe_pdf(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(96, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_nfcom_xml(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(97, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_nfcom_cancel_xml(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(98, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_nfcom_pdf(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(99, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_dce_xml(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(100, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_dce_cancel_xml(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(101, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.get_dce_pdf(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
  def invoke(102, config) do
    client = Webmania.EmitterFilesClient.new(Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!(), config) |> T.ok!()
    Webmania.EmitterFilesClient.download_report_v2(client, "00000000-0000-4000-8000-000000000001", Webmania.FileAuth.issuer())
  end
end
