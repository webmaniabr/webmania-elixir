defmodule Webmania.NfeClient do
  @moduledoc "Nfe credential scope. Named operations use the pinned native backend."
  @derive {Inspect, only: []}
  defstruct [:credentials, :config]
  @opaque t :: %__MODULE__{credentials: Webmania.Credentials.t() | nil, config: Webmania.Config.t()}
  @spec new(Webmania.Credentials.t() | nil, Webmania.Config.t()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(credentials, config \\ %Webmania.Config{}), do: Webmania.Client.new(__MODULE__, "Nfe", credentials, config)
  @doc "nfeGetCertificateValidity; GET /1/nfe/certificado/."
  @spec get_certificate_validity(t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeCertificateValidity.t()} | {:error, Webmania.Error.t()}
  def get_certificate_validity(client, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeGetCertificateValidity", [], Webmania.Models.Api1Fiscal.NfeCertificateValidity, opts)
  end
  @doc "nfeGetSefazStatus; GET /1/nfe/sefaz/."
  @spec get_sefaz_status(t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeSefazStatus.t()} | {:error, Webmania.Error.t()}
  def get_sefaz_status(client, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeGetSefazStatus", [], Webmania.Models.Api1Fiscal.NfeSefazStatus, opts)
  end
  @doc "nfeGetDocument; GET /1/nfe/consulta/."
  @spec get_document(t(), Webmania.Models.Api1Fiscal.NfeGetDocumentQuery.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeGetDocumentResponse.t()} | {:error, Webmania.Error.t()}
  def get_document(client, query, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeGetDocument", [{"query", query, Webmania.Models.Api1Fiscal.NfeGetDocumentQuery}], Webmania.Models.Api1Fiscal.NfeGetDocumentResponse, opts)
  end
  @doc "nfeQueryDocument; POST /1/nfe/consulta/."
  @spec query_document(t(), Webmania.Models.Api1Fiscal.NfeLookupRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeQueryDocumentResponse.t()} | {:error, Webmania.Error.t()}
  def query_document(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeQueryDocument", [{"body", body, Webmania.Models.Api1Fiscal.NfeLookupRequest}], Webmania.Models.Api1Fiscal.NfeQueryDocumentResponse, opts)
  end
  @doc "nfeCreateCorrection; POST /1/nfe/cartacorrecao/."
  @spec create_correction(t(), Webmania.Models.Api1Fiscal.NfeCorrectionRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeEventResult.t()} | {:error, Webmania.Error.t()}
  def create_correction(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeCreateCorrection", [{"body", body, Webmania.Models.Api1Fiscal.NfeCorrectionRequest}], Webmania.Models.Api1Fiscal.NfeEventResult, opts)
  end
  @doc "nfeCreateManifestation; POST /1/nfe/manifesta/."
  @spec create_manifestation(t(), Webmania.Models.Api1Fiscal.NfeManifestationRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeEventResult.t()} | {:error, Webmania.Error.t()}
  def create_manifestation(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeCreateManifestation", [{"body", body, Webmania.Models.Api1Fiscal.NfeManifestationRequest}], Webmania.Models.Api1Fiscal.NfeEventResult, opts)
  end
  @doc "nfeCancelDocument; PUT /1/nfe/cancelar/."
  @spec cancel_document(t(), Webmania.Models.Api1Fiscal.NfeCancelRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeCancelResult.t()} | {:error, Webmania.Error.t()}
  def cancel_document(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeCancelDocument", [{"body", body, Webmania.Models.Api1Fiscal.NfeCancelRequest}], Webmania.Models.Api1Fiscal.NfeCancelResult, opts)
  end
  @doc "nfeVoidNumbering; PUT /1/nfe/inutilizar/."
  @spec void_numbering(t(), Webmania.Models.Api1Fiscal.NfeVoidRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeVoidResult.t()} | {:error, Webmania.Error.t()}
  def void_numbering(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeVoidNumbering", [{"body", body, Webmania.Models.Api1Fiscal.NfeVoidRequest}], Webmania.Models.Api1Fiscal.NfeVoidResult, opts)
  end
  @doc "nfeCreatePaymentEvent; POST /1/nfe/conciliacao/."
  @spec create_payment_event(t(), Webmania.Models.Api1Fiscal.NfePaymentEventRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeEventResult.t()} | {:error, Webmania.Error.t()}
  def create_payment_event(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeCreatePaymentEvent", [{"body", body, Webmania.Models.Api1Fiscal.NfePaymentEventRequest}], Webmania.Models.Api1Fiscal.NfeEventResult, opts)
  end
  @doc "nfeCancelPaymentEvent; PUT /1/nfe/conciliacao/cancelar/."
  @spec cancel_payment_event(t(), Webmania.Models.Api1Fiscal.NfePaymentEventCancelRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeEventResult.t()} | {:error, Webmania.Error.t()}
  def cancel_payment_event(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeCancelPaymentEvent", [{"body", body, Webmania.Models.Api1Fiscal.NfePaymentEventCancelRequest}], Webmania.Models.Api1Fiscal.NfeEventResult, opts)
  end
  @doc "nfeCancelIbsCbsEvent; PUT /1/nfe/evento-ibs-cbs/cancelar/."
  @spec cancel_ibs_cbs_event(t(), Webmania.Models.Api1Fiscal.NfeIbsCbsEventCancelRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeEventResult.t()} | {:error, Webmania.Error.t()}
  def cancel_ibs_cbs_event(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeCancelIbsCbsEvent", [{"body", body, Webmania.Models.Api1Fiscal.NfeIbsCbsEventCancelRequest}], Webmania.Models.Api1Fiscal.NfeEventResult, opts)
  end
  @doc "nfeListTaxClasses; GET /1/nfe/classe-imposto/."
  @spec list_tax_classes(t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeListTaxClassesResponse.t()} | {:error, Webmania.Error.t()}
  def list_tax_classes(client, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeListTaxClasses", [], Webmania.Models.Api1Fiscal.NfeListTaxClassesResponse, opts)
  end
  @doc "nfeDeleteTaxClasses; DELETE /1/nfe/classe-imposto/."
  @spec delete_tax_classes(t(), Webmania.Models.Api1Fiscal.TaxClassDeleteRequest.t(), keyword()) :: {:ok, [Webmania.Models.Api1Fiscal.TaxClassDeleteItem.t()]} | {:error, Webmania.Error.t()}
  def delete_tax_classes(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeDeleteTaxClasses", [{"body", body, Webmania.Models.Api1Fiscal.TaxClassDeleteRequest}], {:array, Webmania.Models.Api1Fiscal.TaxClassDeleteItem}, opts)
  end
  @doc "nfeSaveTaxClasses; POST /1/nfe/classe-imposto/."
  @spec save_tax_classes(t(), Webmania.Models.Api1Fiscal.FiscalTaxClassRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.TaxClassCreatedResult.t()} | {:error, Webmania.Error.t()}
  def save_tax_classes(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeSaveTaxClasses", [{"body", body, Webmania.Models.Api1Fiscal.FiscalTaxClassRequest}], Webmania.Models.Api1Fiscal.TaxClassCreatedResult, opts)
  end
  @doc "nfeIssueDocument; POST /1/nfe/emissao/."
  @spec issue_document(t(), Webmania.Models.Api1Fiscal.NfeIssueRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeIssueResult.t()} | {:error, Webmania.Error.t()}
  def issue_document(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeIssueDocument", [{"body", body, Webmania.Models.Api1Fiscal.NfeIssueRequest}], Webmania.Models.Api1Fiscal.NfeIssueResult, opts)
  end
  @doc "nfeIssueReturn; POST /1/nfe/devolucao/."
  @spec issue_return(t(), Webmania.Models.Api1Fiscal.NfeReturnRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeDocument.t()} | {:error, Webmania.Error.t()}
  def issue_return(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeIssueReturn", [{"body", body, Webmania.Models.Api1Fiscal.NfeReturnRequest}], Webmania.Models.Api1Fiscal.NfeDocument, opts)
  end
  @doc "nfeIssueAdjustment; POST /1/nfe/ajuste/."
  @spec issue_adjustment(t(), Webmania.Models.Api1Fiscal.NfeAdjustmentRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeDocument.t()} | {:error, Webmania.Error.t()}
  def issue_adjustment(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeIssueAdjustment", [{"body", body, Webmania.Models.Api1Fiscal.NfeAdjustmentRequest}], Webmania.Models.Api1Fiscal.NfeDocument, opts)
  end
  @doc "nfeIssueComplement; POST /1/nfe/complementar/."
  @spec issue_complement(t(), Webmania.Models.Api1Fiscal.NfeComplementRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeDocument.t()} | {:error, Webmania.Error.t()}
  def issue_complement(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeIssueComplement", [{"body", body, Webmania.Models.Api1Fiscal.NfeComplementRequest}], Webmania.Models.Api1Fiscal.NfeDocument, opts)
  end
  @doc "fiscalUpdateCompany; POST /1/nfe/empresa/."
  @spec update_company(t(), Webmania.Models.Api1Fiscal.FiscalCompanyUpdateRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.FiscalCompanyUpdateResult.t()} | {:error, Webmania.Error.t()}
  def update_company(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "fiscalUpdateCompany", [{"body", body, Webmania.Models.Api1Fiscal.FiscalCompanyUpdateRequest}], Webmania.Models.Api1Fiscal.FiscalCompanyUpdateResult, opts)
  end
  @doc "fiscalCreateOrPollReport; POST /1/nfe/relatorios/."
  @spec create_or_poll_report(t(), Webmania.Models.Api1Fiscal.FiscalReportRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.FiscalReportResult.t()} | {:error, Webmania.Error.t()}
  def create_or_poll_report(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "fiscalCreateOrPollReport", [{"body", body, Webmania.Models.Api1Fiscal.FiscalReportRequest}], Webmania.Models.Api1Fiscal.FiscalReportResult, opts)
  end
  @doc "nfeCreateIbsCbsEvent; POST /1/nfe/evento-ibs-cbs/."
  @spec create_ibs_cbs_event(t(), Webmania.Models.Api1Fiscal.NfeIbsCbsEventRequest.t(), keyword()) :: {:ok, Webmania.Models.Api1Fiscal.NfeEventResult.t()} | {:error, Webmania.Error.t()}
  def create_ibs_cbs_event(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Nfe", "nfeCreateIbsCbsEvent", [{"body", body, Webmania.Models.Api1Fiscal.NfeIbsCbsEventRequest}], Webmania.Models.Api1Fiscal.NfeEventResult, opts)
  end
end
defmodule Webmania.ResellerClient do
  @moduledoc "Reseller credential scope. Named operations use the pinned native backend."
  @derive {Inspect, only: []}
  defstruct [:credentials, :config]
  @opaque t :: %__MODULE__{credentials: Webmania.Credentials.t() | nil, config: Webmania.Config.t()}
  @spec new(Webmania.Credentials.t() | nil, Webmania.Config.t()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(credentials, config \\ %Webmania.Config{}), do: Webmania.Client.new(__MODULE__, "Reseller", credentials, config)
  @doc "b2bV1CreateCompanies; POST /api/1/b2b/empresas/."
  @spec create_companies(t(), Webmania.Models.Api1B2b.ResellerCreateCompaniesRequest.t(), keyword()) :: {:ok, [Webmania.Models.Api1B2b.ResellerCreatedCompany.t()]} | {:error, Webmania.Error.t()}
  def create_companies(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Reseller", "b2bV1CreateCompanies", [{"body", body, Webmania.Models.Api1B2b.ResellerCreateCompaniesRequest}], {:array, Webmania.Models.Api1B2b.ResellerCreatedCompany}, opts)
  end
  @doc "b2bV1ListCompanies; GET /api/1/b2b/empresas/."
  @spec list_companies(t(), keyword()) :: {:ok, [Webmania.Models.Api1B2b.ResellerCompany.t()]} | {:error, Webmania.Error.t()}
  def list_companies(client, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Reseller", "b2bV1ListCompanies", [], {:array, Webmania.Models.Api1B2b.ResellerCompany}, opts)
  end
  @doc "b2bV1GetProcessedRequests; GET /api/1/b2b/requests/."
  @spec get_processed_requests(t(), Webmania.Models.Api1B2b.B2bV1GetProcessedRequestsQuery.t(), keyword()) :: {:ok, Webmania.Models.Api1B2b.ResellerProcessedRequests.t()} | {:error, Webmania.Error.t()}
  def get_processed_requests(client, query, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Reseller", "b2bV1GetProcessedRequests", [{"query", query, Webmania.Models.Api1B2b.B2bV1GetProcessedRequestsQuery}], Webmania.Models.Api1B2b.ResellerProcessedRequests, opts)
  end
end
defmodule Webmania.EmitterClient do
  @moduledoc "Emitter credential scope. Named operations use the pinned native backend."
  @derive {Inspect, only: []}
  defstruct [:credentials, :config]
  @opaque t :: %__MODULE__{credentials: Webmania.Credentials.t() | nil, config: Webmania.Config.t()}
  @spec new(Webmania.Credentials.t() | nil, Webmania.Config.t()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(credentials, config \\ %Webmania.Config{}), do: Webmania.Client.new(__MODULE__, "Emitter", credentials, config)
  @doc "emitterIssueCte; POST /2/cte/emissao."
  @spec issue_cte(t(), Webmania.Models.Api2CteIssuance.EmitterIssueCtePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2CteIssuance.CteFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def issue_cte(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterIssueCte", [{"body", body, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayload}], Webmania.Models.Api2CteIssuance.CteFiscalResponse, opts)
  end
  @doc "emitterIssueSimplifiedCte; POST /2/cte/emissao/simplificada."
  @spec issue_simplified_cte(t(), Webmania.Models.Api2CteIssuance.EmitterIssueSimplifiedCtePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2CteIssuance.CteFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def issue_simplified_cte(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterIssueSimplifiedCte", [{"body", body, Webmania.Models.Api2CteIssuance.EmitterIssueSimplifiedCtePayload}], Webmania.Models.Api2CteIssuance.CteFiscalResponse, opts)
  end
  @doc "emitterCancelCte; PUT /2/cte/cancelar."
  @spec cancel_cte(t(), Webmania.Models.Api2CteIssuance.EmitterCancelCtePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2CteIssuance.FiscalEventResponse.t()} | {:error, Webmania.Error.t()}
  def cancel_cte(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterCancelCte", [{"body", body, Webmania.Models.Api2CteIssuance.EmitterCancelCtePayload}], Webmania.Models.Api2CteIssuance.FiscalEventResponse, opts)
  end
  @doc "emitterCorrectCte; POST /2/cte/correcao."
  @spec correct_cte(t(), Webmania.Models.Api2CteIssuance.EmitterCorrectCtePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2CteIssuance.FiscalEventResponse.t()} | {:error, Webmania.Error.t()}
  def correct_cte(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterCorrectCte", [{"body", body, Webmania.Models.Api2CteIssuance.EmitterCorrectCtePayload}], Webmania.Models.Api2CteIssuance.FiscalEventResponse, opts)
  end
  @doc "emitterConfirmCteDelivery; POST /2/cte/entrega."
  @spec confirm_cte_delivery(t(), Webmania.Models.Api2CteIssuance.EmitterConfirmCteDeliveryPayload.t(), keyword()) :: {:ok, Webmania.Models.Api2CteIssuance.FiscalEventResponse.t()} | {:error, Webmania.Error.t()}
  def confirm_cte_delivery(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterConfirmCteDelivery", [{"body", body, Webmania.Models.Api2CteIssuance.EmitterConfirmCteDeliveryPayload}], Webmania.Models.Api2CteIssuance.FiscalEventResponse, opts)
  end
  @doc "emitterCancelCteDelivery; PUT /2/cte/entrega/cancelar."
  @spec cancel_cte_delivery(t(), Webmania.Models.Api2CteIssuance.EmitterCancelCteDeliveryPayload.t(), keyword()) :: {:ok, Webmania.Models.Api2CteIssuance.FiscalEventResponse.t()} | {:error, Webmania.Error.t()}
  def cancel_cte_delivery(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterCancelCteDelivery", [{"body", body, Webmania.Models.Api2CteIssuance.EmitterCancelCteDeliveryPayload}], Webmania.Models.Api2CteIssuance.FiscalEventResponse, opts)
  end
  @doc "emitterLinkCtePayment; POST /2/cte/evento."
  @spec link_cte_payment(t(), Webmania.Models.Api2CteIssuance.EmitterLinkCtePaymentPayload.t(), keyword()) :: {:ok, Webmania.Models.Api2CteIssuance.FiscalEventResponse.t()} | {:error, Webmania.Error.t()}
  def link_cte_payment(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterLinkCtePayment", [{"body", body, Webmania.Models.Api2CteIssuance.EmitterLinkCtePaymentPayload}], Webmania.Models.Api2CteIssuance.FiscalEventResponse, opts)
  end
  @doc "emitterCancelCtePaymentLink; PUT /2/cte/evento/cancelar."
  @spec cancel_cte_payment_link(t(), Webmania.Models.Api2CteIssuance.EmitterCancelCtePaymentLinkPayload.t(), keyword()) :: {:ok, Webmania.Models.Api2CteIssuance.FiscalEventResponse.t()} | {:error, Webmania.Error.t()}
  def cancel_cte_payment_link(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterCancelCtePaymentLink", [{"body", body, Webmania.Models.Api2CteIssuance.EmitterCancelCtePaymentLinkPayload}], Webmania.Models.Api2CteIssuance.FiscalEventResponse, opts)
  end
  @doc "emitterGetCte; GET /2/cte/consulta/{identifier}."
  @spec get_cte(t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2CteIssuance.CteFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def get_cte(client, identifier, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterGetCte", [{"identifier", identifier, :string}], Webmania.Models.Api2CteIssuance.CteFiscalResponse, opts)
  end
  @doc "emitterGetCtePaymentEvents; GET /2/cte/consulta/evento/{identifier}."
  @spec get_cte_payment_events(t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2CteIssuance.CtePaymentEvents.t()} | {:error, Webmania.Error.t()}
  def get_cte_payment_events(client, identifier, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterGetCtePaymentEvents", [{"identifier", identifier, :string}], Webmania.Models.Api2CteIssuance.CtePaymentEvents, opts)
  end
  @doc "emitterIssueDce; POST /2/dce/emissao."
  @spec issue_dce(t(), Webmania.Models.Api2DceIssuance.EmitterIssueDcePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2DceIssuance.DceFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def issue_dce(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterIssueDce", [{"body", body, Webmania.Models.Api2DceIssuance.EmitterIssueDcePayload}], Webmania.Models.Api2DceIssuance.DceFiscalResponse, opts)
  end
  @doc "emitterCancelDce; PUT /2/dce/cancelar."
  @spec cancel_dce(t(), Webmania.Models.Api2DceIssuance.EmitterCancelDcePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2DceIssuance.FiscalEventResponse.t()} | {:error, Webmania.Error.t()}
  def cancel_dce(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterCancelDce", [{"body", body, Webmania.Models.Api2DceIssuance.EmitterCancelDcePayload}], Webmania.Models.Api2DceIssuance.FiscalEventResponse, opts)
  end
  @doc "emitterGetDce; GET /2/dce/consulta/{identifier}."
  @spec get_dce(t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2DceIssuance.DceFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def get_dce(client, identifier, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterGetDce", [{"identifier", identifier, :string}], Webmania.Models.Api2DceIssuance.DceFiscalResponse, opts)
  end
  @doc "emitterGetNfseProviderStatus; GET /2/nfse/status."
  @spec get_nfse_provider_status(t(), Webmania.Models.Api2EmitterReads.EmitterGetNfseProviderStatusQuery.t(), keyword()) :: {:ok, Webmania.Models.Api2EmitterReads.NfseProviderStatus.t()} | {:error, Webmania.Error.t()}
  def get_nfse_provider_status(client, query, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterGetNfseProviderStatus", [{"query", query, Webmania.Models.Api2EmitterReads.EmitterGetNfseProviderStatusQuery}], Webmania.Models.Api2EmitterReads.NfseProviderStatus, opts)
  end
  @doc "emitterGetNfcomServiceStatus; GET /2/nfcom/status."
  @spec get_nfcom_service_status(t(), keyword()) :: {:ok, Webmania.Models.Api2EmitterReads.NfcomServiceStatus.t()} | {:error, Webmania.Error.t()}
  def get_nfcom_service_status(client, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterGetNfcomServiceStatus", [], Webmania.Models.Api2EmitterReads.NfcomServiceStatus, opts)
  end
  @doc "emitterGetNfse; GET /2/nfse/consulta/{identifier}."
  @spec get_nfse(t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2EmitterReads.NfseFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def get_nfse(client, identifier, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterGetNfse", [{"identifier", identifier, :string}], Webmania.Models.Api2EmitterReads.NfseFiscalResponse, opts)
  end
  @doc "emitterGetNfcom; GET /2/nfcom/consulta/{identifier}."
  @spec get_nfcom(t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2EmitterReads.NfcomFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def get_nfcom(client, identifier, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterGetNfcom", [{"identifier", identifier, :string}], Webmania.Models.Api2EmitterReads.NfcomFiscalResponse, opts)
  end
  @doc "emitterGetNfcomPaymentEvents; GET /2/nfcom/consulta/evento/{identifier}."
  @spec get_nfcom_payment_events(t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2EmitterReads.NfcomPaymentEvents.t()} | {:error, Webmania.Error.t()}
  def get_nfcom_payment_events(client, identifier, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterGetNfcomPaymentEvents", [{"identifier", identifier, :string}], Webmania.Models.Api2EmitterReads.NfcomPaymentEvents, opts)
  end
  @doc "emitterManifestNfse; PUT /2/nfse/manifestar."
  @spec manifest_nfse(t(), Webmania.Models.Api2EmitterReads.NfseManifestationRequest.t(), keyword()) :: {:ok, Webmania.Models.Api2EmitterReads.NfseFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def manifest_nfse(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterManifestNfse", [{"body", body, Webmania.Models.Api2EmitterReads.NfseManifestationRequest}], Webmania.Models.Api2EmitterReads.NfseFiscalResponse, opts)
  end
  @doc "emitterIssueMdfe; POST /2/mdfe/emissao."
  @spec issue_mdfe(t(), Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2MdfeIssuance.MdfeFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def issue_mdfe(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterIssueMdfe", [{"body", body, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayload}], Webmania.Models.Api2MdfeIssuance.MdfeFiscalResponse, opts)
  end
  @doc "emitterCloseMdfe; PUT /2/mdfe/encerrar."
  @spec close_mdfe(t(), Webmania.Models.Api2MdfeIssuance.EmitterCloseMdfePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2MdfeIssuance.FiscalEventResponse.t()} | {:error, Webmania.Error.t()}
  def close_mdfe(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterCloseMdfe", [{"body", body, Webmania.Models.Api2MdfeIssuance.EmitterCloseMdfePayload}], Webmania.Models.Api2MdfeIssuance.FiscalEventResponse, opts)
  end
  @doc "emitterCancelMdfe; PUT /2/mdfe/cancelar."
  @spec cancel_mdfe(t(), Webmania.Models.Api2MdfeIssuance.EmitterCancelMdfePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2MdfeIssuance.FiscalEventResponse.t()} | {:error, Webmania.Error.t()}
  def cancel_mdfe(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterCancelMdfe", [{"body", body, Webmania.Models.Api2MdfeIssuance.EmitterCancelMdfePayload}], Webmania.Models.Api2MdfeIssuance.FiscalEventResponse, opts)
  end
  @doc "emitterAddMdfeConductor; PUT /2/mdfe/condutor."
  @spec add_mdfe_conductor(t(), Webmania.Models.Api2MdfeIssuance.EmitterAddMdfeConductorPayload.t(), keyword()) :: {:ok, Webmania.Models.Api2MdfeIssuance.FiscalEventResponse.t()} | {:error, Webmania.Error.t()}
  def add_mdfe_conductor(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterAddMdfeConductor", [{"body", body, Webmania.Models.Api2MdfeIssuance.EmitterAddMdfeConductorPayload}], Webmania.Models.Api2MdfeIssuance.FiscalEventResponse, opts)
  end
  @doc "emitterGetMdfe; GET /2/mdfe/consulta/{key}."
  @spec get_mdfe(t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2MdfeIssuance.MdfeFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def get_mdfe(client, key, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterGetMdfe", [{"key", key, :string}], Webmania.Models.Api2MdfeIssuance.MdfeFiscalResponse, opts)
  end
  @doc "emitterIssueNfcom; POST /2/nfcom/emissao."
  @spec issue_nfcom(t(), Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayload.t(), keyword()) :: {:ok, Webmania.Models.Api2NfcomIssuance.NfcomFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def issue_nfcom(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterIssueNfcom", [{"body", body, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayload}], Webmania.Models.Api2NfcomIssuance.NfcomFiscalResponse, opts)
  end
  @doc "emitterCancelNfcom; PUT /2/nfcom/cancelar."
  @spec cancel_nfcom(t(), Webmania.Models.Api2NfcomIssuance.EmitterCancelNfcomPayload.t(), keyword()) :: {:ok, Webmania.Models.Api2NfcomIssuance.FiscalEventResponse.t()} | {:error, Webmania.Error.t()}
  def cancel_nfcom(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterCancelNfcom", [{"body", body, Webmania.Models.Api2NfcomIssuance.EmitterCancelNfcomPayload}], Webmania.Models.Api2NfcomIssuance.FiscalEventResponse, opts)
  end
  @doc "emitterIssueNfse; POST /2/nfse/emissao."
  @spec issue_nfse(t(), Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2NfseIssuance.NfseFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def issue_nfse(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterIssueNfse", [{"body", body, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayload}], Webmania.Models.Api2NfseIssuance.NfseFiscalResponse, opts)
  end
  @doc "emitterCancelNfse; PUT /2/nfse/cancelar."
  @spec cancel_nfse(t(), Webmania.Models.Api2NfseIssuance.EmitterCancelNfsePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2NfseIssuance.NfseFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def cancel_nfse(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterCancelNfse", [{"body", body, Webmania.Models.Api2NfseIssuance.EmitterCancelNfsePayload}], Webmania.Models.Api2NfseIssuance.NfseFiscalResponse, opts)
  end
  @doc "emitterReplaceNfse; POST /2/nfse/substituir."
  @spec replace_nfse(t(), Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayload.t(), keyword()) :: {:ok, Webmania.Models.Api2NfseIssuance.NfseFiscalResponse.t()} | {:error, Webmania.Error.t()}
  def replace_nfse(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Emitter", "emitterReplaceNfse", [{"body", body, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayload}], Webmania.Models.Api2NfseIssuance.NfseFiscalResponse, opts)
  end
end
defmodule Webmania.MonitorClient do
  @moduledoc "Monitor credential scope. Named operations use the pinned native backend."
  @derive {Inspect, only: []}
  defstruct [:credentials, :config]
  @opaque t :: %__MODULE__{credentials: Webmania.Credentials.t() | nil, config: Webmania.Config.t()}
  @spec new(Webmania.Credentials.t() | nil, Webmania.Config.t()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(credentials, config \\ %Webmania.Config{}), do: Webmania.Client.new(__MODULE__, "Monitor", credentials, config)
  @doc "monitorSearchDocuments; POST /2/monitor/documentos."
  @spec search_documents(t(), Webmania.Models.Api2MonitorDocuments.MonitorSearchRequest.t(), Webmania.Models.Api2MonitorDocuments.MonitorSearchDocumentsQuery.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorDocuments.MonitorSearchDocumentsResponse.t()} | {:error, Webmania.Error.t()}
  def search_documents(client, body, query, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorSearchDocuments", [{"body", body, Webmania.Models.Api2MonitorDocuments.MonitorSearchRequest}, {"query", query, Webmania.Models.Api2MonitorDocuments.MonitorSearchDocumentsQuery}], Webmania.Models.Api2MonitorDocuments.MonitorSearchDocumentsResponse, opts)
  end
  @doc "monitorGetDocument; GET /2/monitor/documentos/{fd}."
  @spec get_document(t(), String.t(), Webmania.Models.Api2MonitorDocuments.MonitorGetDocumentQuery.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorDocuments.MonitorDocument.t()} | {:error, Webmania.Error.t()}
  def get_document(client, fd, query, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorGetDocument", [{"fd", fd, :string}, {"query", query, Webmania.Models.Api2MonitorDocuments.MonitorGetDocumentQuery}], Webmania.Models.Api2MonitorDocuments.MonitorDocument, opts)
  end
  @doc "monitorListDocumentEvents; GET /2/monitor/documentos/{fd}/eventos."
  @spec list_document_events(t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorDocuments.MonitorListDocumentEventsResponse.t()} | {:error, Webmania.Error.t()}
  def list_document_events(client, fd, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorListDocumentEvents", [{"fd", fd, :string}], Webmania.Models.Api2MonitorDocuments.MonitorListDocumentEventsResponse, opts)
  end
  @doc "monitorManifestDocument; POST /2/monitor/documentos/{fd}/eventos."
  @spec manifest_document(t(), String.t(), Webmania.Models.Api2MonitorDocuments.MonitorManifestationRequest.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorDocuments.MonitorEvent.t()} | {:error, Webmania.Error.t()}
  def manifest_document(client, fd, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorManifestDocument", [{"fd", fd, :string}, {"body", body, Webmania.Models.Api2MonitorDocuments.MonitorManifestationRequest}], Webmania.Models.Api2MonitorDocuments.MonitorEvent, opts)
  end
  @doc "monitorListReports; GET /2/monitor/documentos/relatorios."
  @spec list_reports(t(), Webmania.Models.Api2MonitorDocuments.MonitorListReportsQuery.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorDocuments.MonitorReportPage.t()} | {:error, Webmania.Error.t()}
  def list_reports(client, query, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorListReports", [{"query", query, Webmania.Models.Api2MonitorDocuments.MonitorListReportsQuery}], Webmania.Models.Api2MonitorDocuments.MonitorReportPage, opts)
  end
  @doc "monitorDownloadReport; GET /2/monitor/documentos/relatorios/{report}."
  @spec download_report(t(), String.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_report(client, report, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorDownloadReport", [{"report", report, :string}], :file, opts)
  end
  @doc "monitorImportDocument; POST /2/monitor/documentos/importacoes."
  @spec import_document(t(), Webmania.Models.Api2MonitorDocuments.MonitorImportRequest.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorDocuments.MonitorImportDocumentResponse.t()} | {:error, Webmania.Error.t()}
  def import_document(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorImportDocument", [{"body", body, Webmania.Models.Api2MonitorDocuments.MonitorImportRequest}], Webmania.Models.Api2MonitorDocuments.MonitorImportDocumentResponse, opts)
  end
  @doc "monitorGetImportStatus; GET /2/monitor/documentos/importacoes/{uuid}."
  @spec get_import_status(t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorDocuments.MonitorImportStatus.t()} | {:error, Webmania.Error.t()}
  def get_import_status(client, uuid, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorGetImportStatus", [{"uuid", uuid, :string}], Webmania.Models.Api2MonitorDocuments.MonitorImportStatus, opts)
  end
  @doc "monitorCreateCompany; POST /2/monitor/empresas."
  @spec create_company(t(), Webmania.Models.Api2MonitorManagement.MonitorCreateCompanyRequest.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorManagement.MonitorCompany.t()} | {:error, Webmania.Error.t()}
  def create_company(client, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorCreateCompany", [{"body", body, Webmania.Models.Api2MonitorManagement.MonitorCreateCompanyRequest}], Webmania.Models.Api2MonitorManagement.MonitorCompany, opts)
  end
  @doc "monitorUpdateCompany; PUT /2/monitor/empresas/{company}."
  @spec update_company(t(), String.t(), Webmania.Models.Api2MonitorManagement.MonitorUpdateCompanyRequest.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorManagement.MonitorCompany.t()} | {:error, Webmania.Error.t()}
  def update_company(client, company, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorUpdateCompany", [{"company", company, :string}, {"body", body, Webmania.Models.Api2MonitorManagement.MonitorUpdateCompanyRequest}], Webmania.Models.Api2MonitorManagement.MonitorCompany, opts)
  end
  @doc "monitorCreateCompanyMunicipality; POST /2/monitor/empresas/{company}/municipios-nfse."
  @spec create_company_municipality(t(), String.t(), Webmania.Models.Api2MonitorManagement.MonitorCreateMunicipalityRequest.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorManagement.MonitorMunicipalityRegistration.t()} | {:error, Webmania.Error.t()}
  def create_company_municipality(client, company, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorCreateCompanyMunicipality", [{"company", company, :string}, {"body", body, Webmania.Models.Api2MonitorManagement.MonitorCreateMunicipalityRequest}], Webmania.Models.Api2MonitorManagement.MonitorMunicipalityRegistration, opts)
  end
  @doc "monitorUpdateCompanyMunicipality; PUT /2/monitor/empresas/{company}/municipios-nfse/{download}."
  @spec update_company_municipality(t(), String.t(), String.t(), Webmania.Models.Api2MonitorManagement.MonitorUpdateMunicipalityRequest.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorManagement.MonitorMunicipalityRegistration.t()} | {:error, Webmania.Error.t()}
  def update_company_municipality(client, company, download, body, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorUpdateCompanyMunicipality", [{"company", company, :string}, {"download", download, :string}, {"body", body, Webmania.Models.Api2MonitorManagement.MonitorUpdateMunicipalityRequest}], Webmania.Models.Api2MonitorManagement.MonitorMunicipalityRegistration, opts)
  end
  @doc "monitorDeleteCompanyMunicipality; DELETE /2/monitor/empresas/{company}/municipios-nfse/{download}."
  @spec delete_company_municipality(t(), String.t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorManagement.MonitorDeleteCompanyMunicipalityResponse.t()} | {:error, Webmania.Error.t()}
  def delete_company_municipality(client, company, download, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorDeleteCompanyMunicipality", [{"company", company, :string}, {"download", download, :string}], Webmania.Models.Api2MonitorManagement.MonitorDeleteCompanyMunicipalityResponse, opts)
  end
  @doc "monitorListCompanies; GET /2/monitor/empresas."
  @spec list_companies(t(), Webmania.Models.Api2MonitorReads.MonitorListCompaniesQuery.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorReads.MonitorCompanyPage.t()} | {:error, Webmania.Error.t()}
  def list_companies(client, query, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorListCompanies", [{"query", query, Webmania.Models.Api2MonitorReads.MonitorListCompaniesQuery}], Webmania.Models.Api2MonitorReads.MonitorCompanyPage, opts)
  end
  @doc "monitorGetCompany; GET /2/monitor/empresas/{company}."
  @spec get_company(t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorReads.MonitorCompany.t()} | {:error, Webmania.Error.t()}
  def get_company(client, company, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorGetCompany", [{"company", company, :string}], Webmania.Models.Api2MonitorReads.MonitorCompany, opts)
  end
  @doc "monitorListCompanyMunicipalities; GET /2/monitor/empresas/{company}/municipios-nfse."
  @spec list_company_municipalities(t(), String.t(), Webmania.Models.Api2MonitorReads.MonitorListCompanyMunicipalitiesQuery.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorReads.MonitorMunicipalityPage.t()} | {:error, Webmania.Error.t()}
  def list_company_municipalities(client, company, query, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorListCompanyMunicipalities", [{"company", company, :string}, {"query", query, Webmania.Models.Api2MonitorReads.MonitorListCompanyMunicipalitiesQuery}], Webmania.Models.Api2MonitorReads.MonitorMunicipalityPage, opts)
  end
  @doc "monitorGetCompanyMunicipality; GET /2/monitor/empresas/{company}/municipios-nfse/{download}."
  @spec get_company_municipality(t(), String.t(), String.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorReads.MonitorMunicipalityRegistration.t()} | {:error, Webmania.Error.t()}
  def get_company_municipality(client, company, download, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorGetCompanyMunicipality", [{"company", company, :string}, {"download", download, :string}], Webmania.Models.Api2MonitorReads.MonitorMunicipalityRegistration, opts)
  end
  @doc "monitorListAvailableMunicipalities; GET /2/monitor/municipios-nfse."
  @spec list_available_municipalities(t(), Webmania.Models.Api2MonitorReads.MonitorListAvailableMunicipalitiesQuery.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorReads.MonitorListAvailableMunicipalitiesResponse.t()} | {:error, Webmania.Error.t()}
  def list_available_municipalities(client, query, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorListAvailableMunicipalities", [{"query", query, Webmania.Models.Api2MonitorReads.MonitorListAvailableMunicipalitiesQuery}], Webmania.Models.Api2MonitorReads.MonitorListAvailableMunicipalitiesResponse, opts)
  end
  @doc "monitorGetDownloadStatistics; GET /2/monitor/estatisticas/downloads."
  @spec get_download_statistics(t(), Webmania.Models.Api2MonitorReads.MonitorGetDownloadStatisticsQuery.t(), keyword()) :: {:ok, Webmania.Models.Api2MonitorReads.MonitorDownloadStatistics.t()} | {:error, Webmania.Error.t()}
  def get_download_statistics(client, query, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "Monitor", "monitorGetDownloadStatistics", [{"query", query, Webmania.Models.Api2MonitorReads.MonitorGetDownloadStatisticsQuery}], Webmania.Models.Api2MonitorReads.MonitorDownloadStatistics, opts)
  end
end
defmodule Webmania.NfeFilesClient do
  @moduledoc "NfeFiles credential scope. Named operations use the pinned native backend."
  @derive {Inspect, only: []}
  defstruct [:credentials, :config]
  @opaque t :: %__MODULE__{credentials: Webmania.Credentials.t() | nil, config: Webmania.Config.t()}
  @spec new(Webmania.Credentials.t() | nil, Webmania.Config.t()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(credentials, config \\ %Webmania.Config{}), do: Webmania.Client.new(__MODULE__, "NfeFiles", credentials, config)
  @doc "nfeDownloadDanfe; GET /danfe/{identifier}/."
  @spec download_danfe(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_danfe(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadDanfe", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadSimpleDanfe; GET /danfe/simples/{identifier}/."
  @spec download_simple_danfe(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_simple_danfe(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadSimpleDanfe", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadLabelDanfe; GET /danfe/etiqueta/{identifier}/."
  @spec download_label_danfe(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_label_danfe(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadLabelDanfe", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadCorrectionPdf; GET /dacce/{identifier}/."
  @spec download_correction_pdf(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_correction_pdf(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadCorrectionPdf", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadCorrectionPdfSequence; GET /dacce/{identifier}/{event}/."
  @spec download_correction_pdf_sequence(t(), String.t(), integer(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_correction_pdf_sequence(client, identifier, event, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadCorrectionPdfSequence", [{"identifier", identifier, :string}, {"event", event, :i64}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadXml; GET /xmlnfe/{identifier}/."
  @spec download_xml(t(), String.t(), Webmania.Models.Api1Files.NfeDownloadXmlQuery.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_xml(client, identifier, query, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadXml", [{"identifier", identifier, :string}, {"query", query, Webmania.Models.Api1Files.NfeDownloadXmlQuery}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadCancellationXml; GET /xmlnfe/{identifier}/cancelamento."
  @spec download_cancellation_xml(t(), String.t(), Webmania.Models.Api1Files.NfeDownloadCancellationXmlQuery.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_cancellation_xml(client, identifier, query, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadCancellationXml", [{"identifier", identifier, :string}, {"query", query, Webmania.Models.Api1Files.NfeDownloadCancellationXmlQuery}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadCorrectionXml; GET /xmlcce/{identifier}/."
  @spec download_correction_xml(t(), String.t(), Webmania.Models.Api1Files.NfeDownloadCorrectionXmlQuery.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_correction_xml(client, identifier, query, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadCorrectionXml", [{"identifier", identifier, :string}, {"query", query, Webmania.Models.Api1Files.NfeDownloadCorrectionXmlQuery}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadCorrectionXmlSequence; GET /xmlcce/{identifier}/{event}/."
  @spec download_correction_xml_sequence(t(), String.t(), integer(), Webmania.Models.Api1Files.NfeDownloadCorrectionXmlSequenceQuery.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_correction_xml_sequence(client, identifier, event, query, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadCorrectionXmlSequence", [{"identifier", identifier, :string}, {"event", event, :i64}, {"query", query, Webmania.Models.Api1Files.NfeDownloadCorrectionXmlSequenceQuery}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadManifestationXml; GET /xmlmde/{uuid}/."
  @spec download_manifestation_xml(t(), String.t(), Webmania.Models.Api1Files.NfeDownloadManifestationXmlQuery.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_manifestation_xml(client, uuid, query, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadManifestationXml", [{"uuid", uuid, :string}, {"query", query, Webmania.Models.Api1Files.NfeDownloadManifestationXmlQuery}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadPaymentEventXml; GET /xmleconf/{identifier}/."
  @spec download_payment_event_xml(t(), String.t(), Webmania.Models.Api1Files.NfeDownloadPaymentEventXmlQuery.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_payment_event_xml(client, identifier, query, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadPaymentEventXml", [{"identifier", identifier, :string}, {"query", query, Webmania.Models.Api1Files.NfeDownloadPaymentEventXmlQuery}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadPaymentEventXmlSequence; GET /xmleconf/{identifier}/{event}/."
  @spec download_payment_event_xml_sequence(t(), String.t(), integer(), Webmania.Models.Api1Files.NfeDownloadPaymentEventXmlSequenceQuery.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_payment_event_xml_sequence(client, identifier, event, query, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "nfeDownloadPaymentEventXmlSequence", [{"identifier", identifier, :string}, {"event", event, :i64}, {"query", query, Webmania.Models.Api1Files.NfeDownloadPaymentEventXmlSequenceQuery}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "nfeDownloadIbsCbsEventXml; GET /xmlevento/{uuid}/. Blocked before inspecting client, arguments or configuration."
  @spec download_ibs_cbs_event_xml(t(), String.t(), Webmania.Models.Api1Files.NfeDownloadIbsCbsEventXmlQuery.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_ibs_cbs_event_xml(_client, _uuid, _query, _auth, _opts \\ []) do
    {:error, Webmania.Error.new("capability", "Operation not available in this SDK release; no request was sent.")}
  end
  @doc "fiscalDownloadReport; GET /relatorio/{uuid}/."
  @spec download_report(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_report(client, uuid, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "NfeFiles", "fiscalDownloadReport", [{"uuid", uuid, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
end
defmodule Webmania.EmitterFilesClient do
  @moduledoc "EmitterFiles credential scope. Named operations use the pinned native backend."
  @derive {Inspect, only: []}
  defstruct [:credentials, :config]
  @opaque t :: %__MODULE__{credentials: Webmania.Credentials.t() | nil, config: Webmania.Config.t()}
  @spec new(Webmania.Credentials.t() | nil, Webmania.Config.t()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(credentials, config \\ %Webmania.Config{}), do: Webmania.Client.new(__MODULE__, "EmitterFiles", credentials, config)
  @doc "fileGetNfseXml; GET /xmlnfse/{identifier}."
  @spec get_nfse_xml(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_nfse_xml(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetNfseXml", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetNfsePdf; GET /nfse/{identifier}."
  @spec get_nfse_pdf(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResult.t()} | {:error, Webmania.Error.t()}
  def get_nfse_pdf(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetNfsePdf", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file_result, opts)
  end
  @doc "fileGetNfseRpsPdf; GET /darps/{identifier}."
  @spec get_nfse_rps_pdf(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_nfse_rps_pdf(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetNfseRpsPdf", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetCteXml; GET /xmlcte/{identifier}."
  @spec get_cte_xml(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_cte_xml(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetCteXml", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetCteCancelXml; GET /xmlcte/{identifier}/cancelamento."
  @spec get_cte_cancel_xml(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_cte_cancel_xml(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetCteCancelXml", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetCtePdf; GET /dacte/{identifier}."
  @spec get_cte_pdf(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_cte_pdf(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetCtePdf", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetCteCorrectionXml; GET /xmlcce/{identifier}."
  @spec get_cte_correction_xml(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_cte_correction_xml(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetCteCorrectionXml", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetCteCorrectionPdf; GET /dacce/{identifier}."
  @spec get_cte_correction_pdf(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_cte_correction_pdf(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetCteCorrectionPdf", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetMdfeXml; GET /xmlmdfe/{identifier}."
  @spec get_mdfe_xml(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_mdfe_xml(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetMdfeXml", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetMdfePdf; GET /damdfe/{identifier}."
  @spec get_mdfe_pdf(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_mdfe_pdf(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetMdfePdf", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetNfcomXml; GET /xmlnfcom/{identifier}."
  @spec get_nfcom_xml(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_nfcom_xml(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetNfcomXml", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetNfcomCancelXml; GET /xmlnfcom/{identifier}/cancelamento."
  @spec get_nfcom_cancel_xml(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_nfcom_cancel_xml(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetNfcomCancelXml", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetNfcomPdf; GET /danfecom/{identifier}."
  @spec get_nfcom_pdf(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_nfcom_pdf(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetNfcomPdf", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetDceXml; GET /xmldce/{identifier}."
  @spec get_dce_xml(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_dce_xml(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetDceXml", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetDceCancelXml; GET /xmldce/{identifier}/cancelamento."
  @spec get_dce_cancel_xml(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_dce_cancel_xml(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetDceCancelXml", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fileGetDcePdf; GET /dace/{identifier}."
  @spec get_dce_pdf(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def get_dce_pdf(client, identifier, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fileGetDcePdf", [{"identifier", identifier, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
  @doc "fiscalDownloadReportV2; GET /relatorios/{uuid}."
  @spec download_report_v2(t(), String.t(), Webmania.FileAuth.t(), keyword()) :: {:ok, Webmania.FileResponse.t()} | {:error, Webmania.Error.t()}
  def download_report_v2(client, uuid, auth, opts \\ []) do
    Webmania.Client.invoke(client, __MODULE__, "EmitterFiles", "fiscalDownloadReportV2", [{"uuid", uuid, :string}, {"file_auth", auth, :auth}], :file, opts)
  end
end
