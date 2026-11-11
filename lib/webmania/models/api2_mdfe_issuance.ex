# Generated. Run scripts/generate.py in the pinned Docker toolchain.
defmodule Webmania.Models.Api2MdfeIssuance.EmitterError do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:status, :unset}, {:configured, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => (String.t() | :unset), :message => (String.t() | :unset), :status => (boolean() | :unset), :configured => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, {:optional, :string}}, {"message", :message, {:optional, :string}}, {"status", :status, {:optional, :boolean}}, {"configured", :configured, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterError"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfseServiceCode do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:descricao, :unset}, {:id_cnae, :unset}, {:codigo_tributacao, :unset}, {:aliquota_sugerida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :descricao => String.t(), :id_cnae => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_tributacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_sugerida => (Webmania.Models.Api2MdfeIssuance.NfseServiceCodeAliquotaSugerida.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, :scalar}, {"descricao", :descricao, :string}, {"id_cnae", :id_cnae, {:optional, :scalar}}, {"codigo_tributacao", :codigo_tributacao, {:optional, :scalar}}, {"aliquota_sugerida", :aliquota_sugerida, {:optional, Webmania.Models.Api2MdfeIssuance.NfseServiceCodeAliquotaSugerida}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfseServiceCode"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfseServiceCodeAliquotaSugerida do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:iss, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"iss", :iss, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfseServiceCodeAliquotaSugerida"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfseProviderStatus do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:modelo, :unset}, {:versao, :unset}, {:ambientes, :unset}, {:autenticacao, :unset}, {:emissao, :unset}, {:funcoes, :unset}, {:pdf_nfse, :unset}, {:pdf_sincrono, :unset}, {:codigo_servico, :unset}, {:parametros_disponiveis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => boolean(), :modelo => (String.t() | :unset), :versao => (String.t() | :unset), :ambientes => [integer()], :autenticacao => [String.t()], :emissao => [String.t()], :funcoes => [String.t()], :pdf_nfse => boolean(), :pdf_sincrono => boolean(), :codigo_servico => ([Webmania.Models.Api2MdfeIssuance.NfseServiceCode.t()] | :unset), :parametros_disponiveis => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, :boolean}, {"modelo", :modelo, {:optional, :string}}, {"versao", :versao, {:optional, :string}}, {"ambientes", :ambientes, {:array, :i64}}, {"autenticacao", :autenticacao, {:array, :string}}, {"emissao", :emissao, {:array, :string}}, {"funcoes", :funcoes, {:array, :string}}, {"pdf_nfse", :pdf_nfse, :boolean}, {"pdf_sincrono", :pdf_sincrono, :boolean}, {"codigo_servico", :codigo_servico, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.NfseServiceCode}}}, {"parametros_disponiveis", :parametros_disponiveis, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfseProviderStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfcomServiceStatus do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:operacional, :unset}, {:mensagem, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:operacional => boolean(), :mensagem => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"operacional", :operacional, :boolean}, {"mensagem", :mensagem, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfcomServiceStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfseFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:chave, :unset}, {:numero_lote, :unset}, {:serie_lote, :unset}, {:protocolo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:serie_rps, :unset}, {:numero_rps, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:atualizado_em, :unset}, {:motivo, :unset}, {:quantidade_rps, :unset}, {:nfse_substituida, :unset}, {:info_nfse, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :uuid => String.t(), :modelo => String.t(), :status => String.t(), :chave => (String.t() | :unset), :numero_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :serie_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :xml => (String.t() | :unset), :xml_cancelamento => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :atualizado_em => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfse_substituida => (Webmania.Models.Api2MdfeIssuance.NfseFiscalResponseNfseSubstituida.t() | :unset), :info_nfse => ([Webmania.Models.Api2MdfeIssuance.NfseFiscalResponseInfoNfseItem.t()] | :unset), :log => (Webmania.Models.Api2MdfeIssuance.NfseFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"uuid", :uuid, :string}, {"modelo", :modelo, :string}, {"status", :status, :string}, {"chave", :chave, {:optional, :string}}, {"numero_lote", :numero_lote, {:optional, :scalar}}, {"serie_lote", :serie_lote, {:optional, :scalar}}, {"protocolo", :protocolo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"serie_rps", :serie_rps, {:optional, :scalar}}, {"numero_rps", :numero_rps, {:optional, :scalar}}, {"xml", :xml, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}, {"atualizado_em", :atualizado_em, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"quantidade_rps", :quantidade_rps, {:optional, :scalar}}, {"nfse_substituida", :nfse_substituida, {:optional, Webmania.Models.Api2MdfeIssuance.NfseFiscalResponseNfseSubstituida}}, {"info_nfse", :info_nfse, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.NfseFiscalResponseInfoNfseItem}}}, {"log", :log, {:optional, Webmania.Models.Api2MdfeIssuance.NfseFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfseFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfseFiscalResponseNfseSubstituida do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfseFiscalResponseNfseSubstituida"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfseFiscalResponseInfoNfseItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:motivo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:xml, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :modelo => (String.t() | :unset), :status => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :xml => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfseFiscalResponseInfoNfseItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfseFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfseFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfcomPaymentEvent do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_nfcom, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => ((String.t() | nil) | :unset), :codigo => ((String.t() | nil) | :unset), :motivo => ((String.t() | nil) | :unset), :protocolo_evento => ((String.t() | nil) | :unset), :protocolo_nfcom => ((String.t() | nil) | :unset), :protocolo_vinculacao => ((String.t() | nil) | :unset), :data_evento => ((String.t() | nil) | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pagamento => ((Webmania.Models.Api2MdfeIssuance.NfcomPaymentEventPagamentoVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, {:nullable, :string}}}, {"codigo", :codigo, {:optional, {:nullable, :string}}}, {"motivo", :motivo, {:optional, {:nullable, :string}}}, {"protocolo_evento", :protocolo_evento, {:optional, {:nullable, :string}}}, {"protocolo_nfcom", :protocolo_nfcom, {:optional, {:nullable, :string}}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, {:nullable, :string}}}, {"data_evento", :data_evento, {:optional, {:nullable, :string}}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}, {"pagamento", :pagamento, {:optional, {:nullable, Webmania.Models.Api2MdfeIssuance.NfcomPaymentEventPagamentoVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfcomPaymentEvent"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfcomPaymentEventPagamentoVariant0 do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nPag, :unset}, {:idTransacao, :unset}, {:tpMeioPgto, :unset}, {:CNPJReceb, :unset}, {:CNPJBasePSP, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nPag => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :idTransacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tpMeioPgto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJReceb => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJBasePSP => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nPag", :nPag, {:optional, :scalar}}, {"idTransacao", :idTransacao, {:optional, :scalar}}, {"tpMeioPgto", :tpMeioPgto, {:optional, :scalar}}, {"CNPJReceb", :CNPJReceb, {:optional, :scalar}}, {"CNPJBasePSP", :CNPJBasePSP, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfcomPaymentEventPagamentoVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfcomFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:nfcom, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:contingencia, :unset}, {:xml, :unset}, {:danfecom, :unset}, {:xml_cancelamento, :unset}, {:protocolo, :unset}, {:data_autorizacao, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:consulta_eventos_pagamento, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfcom => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (String.t() | :unset), :modelo => String.t(), :contingencia => (boolean() | :unset), :xml => (String.t() | :unset), :danfecom => (String.t() | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :protocolo => (String.t() | :unset), :data_autorizacao => ((String.t() | nil) | :unset), :eventos_pagamento => ([Webmania.Models.Api2MdfeIssuance.NfcomPaymentEvent.t()] | :unset), :total_eventos => (integer() | :unset), :consulta_eventos_pagamento => (String.t() | :unset), :log => (Webmania.Models.Api2MdfeIssuance.NfcomFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"nfcom", :nfcom, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :string}}, {"modelo", :modelo, :string}, {"contingencia", :contingencia, {:optional, :boolean}}, {"xml", :xml, {:optional, :string}}, {"danfecom", :danfecom, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"protocolo", :protocolo, {:optional, :string}}, {"data_autorizacao", :data_autorizacao, {:optional, {:nullable, :string}}}, {"eventos_pagamento", :eventos_pagamento, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.NfcomPaymentEvent}}}, {"total_eventos", :total_eventos, {:optional, :i64}}, {"consulta_eventos_pagamento", :consulta_eventos_pagamento, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api2MdfeIssuance.NfcomFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfcomFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfcomFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfcomFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfcomPaymentEvents do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:status, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :status => String.t(), :eventos_pagamento => [Webmania.Models.Api2MdfeIssuance.NfcomPaymentEvent.t()], :total_eventos => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"status", :status, :string}, {"eventos_pagamento", :eventos_pagamento, {:array, Webmania.Models.Api2MdfeIssuance.NfcomPaymentEvent}}, {"total_eventos", :total_eventos, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfcomPaymentEvents"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.NfseManifestationRequest do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:chave, :unset}, {:manifestador, :unset}, {:evento, :unset}, {:motivo_rejeicao, :unset}, {:justificativa_rejeicao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :chave => String.t(), :manifestador => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :evento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :motivo_rejeicao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :justificativa_rejeicao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, :scalar}, {"chave", :chave, :string}, {"manifestador", :manifestador, :scalar}, {"evento", :evento, :scalar}, {"motivo_rejeicao", :motivo_rejeicao, {:optional, :scalar}}, {"justificativa_rejeicao", :justificativa_rejeicao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::NfseManifestationRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.CteFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:cte, :unset}, {:epec, :unset}, {:dacte, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:consulta_eventos_pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2MdfeIssuance.CteFiscalResponseLog.t() | :unset), :cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :epec => (boolean() | :unset), :dacte => ((String.t() | nil) | :unset), :eventos_pagamento => ([Webmania.Models.Api2MdfeIssuance.CteFiscalResponseEventosPagamentoItem.t()] | :unset), :total_eventos => (integer() | :unset), :consulta_eventos_pagamento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2MdfeIssuance.CteFiscalResponseLog}}, {"cte", :cte, {:optional, :scalar}}, {"epec", :epec, {:optional, :boolean}}, {"dacte", :dacte, {:optional, {:nullable, :string}}}, {"eventos_pagamento", :eventos_pagamento, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.CteFiscalResponseEventosPagamentoItem}}}, {"total_eventos", :total_eventos, {:optional, :i64}}, {"consulta_eventos_pagamento", :consulta_eventos_pagamento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::CteFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.CteFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::CteFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.CteFiscalResponseEventosPagamentoItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_cte, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_vinculacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, :scalar}}, {"codigo", :codigo, {:optional, :scalar}}, {"motivo", :motivo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :scalar}}, {"protocolo_cte", :protocolo_cte, {:optional, :scalar}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :scalar}}, {"data_evento", :data_evento, {:optional, :scalar}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::CteFiscalResponseEventosPagamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.MdfeFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:mdfe, :unset}, {:damdfe, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2MdfeIssuance.MdfeFiscalResponseLog.t() | :unset), :mdfe => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :damdfe => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2MdfeIssuance.MdfeFiscalResponseLog}}, {"mdfe", :mdfe, {:optional, :scalar}}, {"damdfe", :damdfe, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::MdfeFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.MdfeFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::MdfeFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.DceFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:numero, :unset}, {:dace, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2MdfeIssuance.DceFiscalResponseLog.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :dace => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2MdfeIssuance.DceFiscalResponseLog}}, {"numero", :numero, {:optional, :scalar}}, {"dace", :dace, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::DceFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.DceFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::DceFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.FiscalEventResponse do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:evento, :unset}, {:status, :unset}, {:motivo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:dacce, :unset}, {:log, :unset}, {:codigo, :unset}, {:protocolo_evento, :unset}, {:data_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :chave => (String.t() | :unset), :evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => ((String.t() | nil) | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :dacce => (String.t() | :unset), :log => (Webmania.Models.Api2MdfeIssuance.FiscalEventResponseLog.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (String.t() | :unset), :data_evento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"evento", :evento, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, {:nullable, :string}}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"dacce", :dacce, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api2MdfeIssuance.FiscalEventResponseLog}}, {"codigo", :codigo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :string}}, {"data_evento", :data_evento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::FiscalEventResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.FiscalEventResponseLog do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::FiscalEventResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.CtePaymentEvents do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:status, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => (String.t() | :unset), :status => String.t(), :eventos_pagamento => [Webmania.Models.Api2MdfeIssuance.CtePaymentEventsEventosPagamentoItem.t()], :total_eventos => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, :string}}, {"status", :status, :string}, {"eventos_pagamento", :eventos_pagamento, {:array, Webmania.Models.Api2MdfeIssuance.CtePaymentEventsEventosPagamentoItem}}, {"total_eventos", :total_eventos, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::CtePaymentEvents"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.CtePaymentEventsEventosPagamentoItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_cte, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_vinculacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, :scalar}}, {"codigo", :codigo, {:optional, :scalar}}, {"motivo", :motivo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :scalar}}, {"protocolo_cte", :protocolo_cte, {:optional, :scalar}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :scalar}}, {"data_evento", :data_evento, {:optional, :scalar}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::CtePaymentEventsEventosPagamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayload do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aereo, :unset}, {:ambiente, :unset}, {:aquaviario, :unset}, {:carregamento, :unset}, {:data_inicio_viagem, :unset}, {:descarregamento, :unset}, {:emitente, :unset}, {:ferroviario, :unset}, {:ind_canal_verde, :unset}, {:informacoes_complementares, :unset}, {:informacoes_fisco, :unset}, {:lacres, :unset}, {:modalidade, :unset}, {:origem, :unset}, {:percurso, :unset}, {:peso_bruto, :unset}, {:produto_predominante, :unset}, {:rodoviario, :unset}, {:seguro, :unset}, {:transportador, :unset}, {:uf_carregamento, :unset}, {:uf_descarregamento, :unset}, {:unidade, :unset}, {:valor_carga, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aereo => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAereo.t() | :unset), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :aquaviario => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviario.t() | :unset), :carregamento => [Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadCarregamentoItem.t()], :data_inicio_viagem => (String.t() | :unset), :descarregamento => [Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItem.t()], :emitente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :ferroviario => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadFerroviario.t() | :unset), :ind_canal_verde => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :informacoes_complementares => (String.t() | :unset), :informacoes_fisco => (String.t() | :unset), :lacres => ([String.t()] | :unset), :modalidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :origem => (String.t() | :unset), :percurso => ([String.t()] | :unset), :peso_bruto => String.t(), :produto_predominante => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominante.t() | :unset), :rodoviario => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviario.t() | :unset), :seguro => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadSeguroItem.t()] | :unset), :transportador => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uf_carregamento => String.t(), :uf_descarregamento => String.t(), :unidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_carga => String.t(), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aereo", :aereo, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAereo}}, {"ambiente", :ambiente, :scalar}, {"aquaviario", :aquaviario, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviario}}, {"carregamento", :carregamento, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadCarregamentoItem}}, {"data_inicio_viagem", :data_inicio_viagem, {:optional, :string}}, {"descarregamento", :descarregamento, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItem}}, {"emitente", :emitente, :scalar}, {"ferroviario", :ferroviario, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadFerroviario}}, {"ind_canal_verde", :ind_canal_verde, {:optional, :scalar}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"lacres", :lacres, {:optional, {:array, :string}}}, {"modalidade", :modalidade, :scalar}, {"origem", :origem, {:optional, :string}}, {"percurso", :percurso, {:optional, {:array, :string}}}, {"peso_bruto", :peso_bruto, :string}, {"produto_predominante", :produto_predominante, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominante}}, {"rodoviario", :rodoviario, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviario}}, {"seguro", :seguro, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadSeguroItem}}}, {"transportador", :transportador, {:optional, :scalar}}, {"uf_carregamento", :uf_carregamento, :string}, {"uf_descarregamento", :uf_descarregamento, :string}, {"unidade", :unidade, :scalar}, {"valor_carga", :valor_carga, :string}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAereo do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aerodromo_destino, :unset}, {:aerodromo_embarque, :unset}, {:data_voo, :unset}, {:matricula_aeronave, :unset}, {:nacionalidade_aeronave, :unset}, {:numero_voo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aerodromo_destino => (String.t() | :unset), :aerodromo_embarque => (String.t() | :unset), :data_voo => (String.t() | :unset), :matricula_aeronave => (String.t() | :unset), :nacionalidade_aeronave => (String.t() | :unset), :numero_voo => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aerodromo_destino", :aerodromo_destino, {:optional, :string}}, {"aerodromo_embarque", :aerodromo_embarque, {:optional, :string}}, {"data_voo", :data_voo, {:optional, :string}}, {"matricula_aeronave", :matricula_aeronave, {:optional, :string}}, {"nacionalidade_aeronave", :nacionalidade_aeronave, {:optional, :string}}, {"numero_voo", :numero_voo, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadAereo"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviario do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:carga_vazia, :unset}, {:codigo_embarcacao, :unset}, {:codigo_porto_destino, :unset}, {:codigo_porto_embarque, :unset}, {:embarcacao_comboio, :unset}, {:irin, :unset}, {:nome_embarcacao, :unset}, {:numero_viagem, :unset}, {:porto_transbordo, :unset}, {:terminal_carregamento, :unset}, {:terminal_descarregamento, :unset}, {:tipo_embarcacao, :unset}, {:tipo_navegacao, :unset}, {:transporte_vazio, :unset}, {:mmsi, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:carga_vazia => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioCargaVaziaItem.t()] | :unset), :codigo_embarcacao => (String.t() | :unset), :codigo_porto_destino => (String.t() | :unset), :codigo_porto_embarque => (String.t() | :unset), :embarcacao_comboio => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioEmbarcacaoComboioItem.t()] | :unset), :irin => (String.t() | :unset), :nome_embarcacao => (String.t() | :unset), :numero_viagem => (String.t() | :unset), :porto_transbordo => (String.t() | :unset), :terminal_carregamento => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioTerminalCarregamentoItem.t()] | :unset), :terminal_descarregamento => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioTerminalDescarregamentoItem.t()] | :unset), :tipo_embarcacao => (String.t() | :unset), :tipo_navegacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :transporte_vazio => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioTransporteVazioItem.t()] | :unset), :mmsi => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"carga_vazia", :carga_vazia, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioCargaVaziaItem}}}, {"codigo_embarcacao", :codigo_embarcacao, {:optional, :string}}, {"codigo_porto_destino", :codigo_porto_destino, {:optional, :string}}, {"codigo_porto_embarque", :codigo_porto_embarque, {:optional, :string}}, {"embarcacao_comboio", :embarcacao_comboio, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioEmbarcacaoComboioItem}}}, {"irin", :irin, {:optional, :string}}, {"nome_embarcacao", :nome_embarcacao, {:optional, :string}}, {"numero_viagem", :numero_viagem, {:optional, :string}}, {"porto_transbordo", :porto_transbordo, {:optional, :string}}, {"terminal_carregamento", :terminal_carregamento, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioTerminalCarregamentoItem}}}, {"terminal_descarregamento", :terminal_descarregamento, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioTerminalDescarregamentoItem}}}, {"tipo_embarcacao", :tipo_embarcacao, {:optional, :string}}, {"tipo_navegacao", :tipo_navegacao, {:optional, :scalar}}, {"transporte_vazio", :transporte_vazio, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioTransporteVazioItem}}}, {"mmsi", :mmsi, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioCargaVaziaItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:identificador, :unset}, {:tipo_unidade, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:identificador => String.t(), :tipo_unidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"identificador", :identificador, :string}, {"tipo_unidade", :tipo_unidade, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviarioCargaVaziaItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioEmbarcacaoComboioItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:identificador_balsa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => String.t(), :identificador_balsa => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, :string}, {"identificador_balsa", :identificador_balsa, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviarioEmbarcacaoComboioItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioTerminalCarregamentoItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:nome, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => String.t(), :nome => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, :string}, {"nome", :nome, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviarioTerminalCarregamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioTerminalDescarregamentoItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:nome, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => String.t(), :nome => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, :string}, {"nome", :nome, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviarioTerminalDescarregamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadAquaviarioTransporteVazioItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:identificador, :unset}, {:tipo_unidade, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:identificador => String.t(), :tipo_unidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"identificador", :identificador, :string}, {"tipo_unidade", :tipo_unidade, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadAquaviarioTransporteVazioItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadCarregamentoItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_municipio, :unset}, {:nome_municipio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_municipio => (String.t() | :unset), :nome_municipio => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"nome_municipio", :nome_municipio, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadCarregamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_municipio, :unset}, {:documentos_fiscais, :unset}, {:nome_municipio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_municipio => (String.t() | :unset), :documentos_fiscais => [Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItem.t()], :nome_municipio => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"documentos_fiscais", :documentos_fiscais, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItem}}, {"nome_municipio", :nome_municipio, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:codigo_barra, :unset}, {:entrega_parcial, :unset}, {:indicador_reentrega, :unset}, {:periculosidade, :unset}, {:unidade_transporte, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :codigo_barra => (String.t() | :unset), :entrega_parcial => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemEntregaParcial.t() | :unset), :indicador_reentrega => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :periculosidade => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemPericulosidadeItem.t()] | :unset), :unidade_transporte => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"codigo_barra", :codigo_barra, {:optional, :string}}, {"entrega_parcial", :entrega_parcial, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemEntregaParcial}}, {"indicador_reentrega", :indicador_reentrega, {:optional, :scalar}}, {"periculosidade", :periculosidade, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemPericulosidadeItem}}}, {"unidade_transporte", :unidade_transporte, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemEntregaParcial do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_parcial, :unset}, {:quantidade_total, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_parcial => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_parcial", :quantidade_parcial, {:optional, :scalar}}, {"quantidade_total", :quantidade_total, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemEntregaParcial"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemPericulosidadeItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classe_risco, :unset}, {:grupo_embalagem, :unset}, {:nome_embarque, :unset}, {:numero_onu, :unset}, {:quantidade_total, :unset}, {:quantidade_volumes, :unset}, {:entrega_parcial, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classe_risco => (String.t() | :unset), :grupo_embalagem => (String.t() | :unset), :nome_embarque => (String.t() | :unset), :numero_onu => String.t(), :quantidade_total => String.t(), :quantidade_volumes => (String.t() | :unset), :entrega_parcial => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classe_risco", :classe_risco, {:optional, :string}}, {"grupo_embalagem", :grupo_embalagem, {:optional, :string}}, {"nome_embarque", :nome_embarque, {:optional, :string}}, {"numero_onu", :numero_onu, :string}, {"quantidade_total", :quantidade_total, :string}, {"quantidade_volumes", :quantidade_volumes, {:optional, :string}}, {"entrega_parcial", :entrega_parcial, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemPericulosidadeItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:identificacao, :unset}, {:lacres, :unset}, {:tipo, :unset}, {:unidade_carga, :unset}, {:quantidade_rateada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:identificacao => String.t(), :lacres => ([String.t()] | :unset), :tipo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_carga => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItemUnidadeCargaItem.t()] | :unset), :quantidade_rateada => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"identificacao", :identificacao, :string}, {"lacres", :lacres, {:optional, {:array, :string}}}, {"tipo", :tipo, :scalar}, {"unidade_carga", :unidade_carga, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItemUnidadeCargaItem}}}, {"quantidade_rateada", :quantidade_rateada, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItemUnidadeCargaItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:id_carga, :unset}, {:lacres, :unset}, {:tipo_carga, :unset}, {:tipo, :unset}, {:identificacao, :unset}, {:quantidade_rateada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:id_carga => String.t(), :lacres => ([String.t()] | :unset), :tipo_carga => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :tipo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :identificacao => (String.t() | :unset), :quantidade_rateada => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"id_carga", :id_carga, :string}, {"lacres", :lacres, {:optional, {:array, :string}}}, {"tipo_carga", :tipo_carga, :scalar}, {"tipo", :tipo, {:optional, :scalar}}, {"identificacao", :identificacao, {:optional, :string}}, {"quantidade_rateada", :quantidade_rateada, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadDescarregamentoItemDocumentosFiscaisItemUnidadeTransporteItemUnidadeCargaItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadFerroviario do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:trem, :unset}, {:vagoes, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:trem => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadFerroviarioTrem.t() | :unset), :vagoes => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadFerroviarioVagoesItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"trem", :trem, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadFerroviarioTrem}}, {"vagoes", :vagoes, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadFerroviarioVagoesItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadFerroviario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadFerroviarioTrem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_liberacao, :unset}, {:destino, :unset}, {:origem, :unset}, {:prefixo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_liberacao => (String.t() | :unset), :destino => (String.t() | :unset), :origem => (String.t() | :unset), :prefixo => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_liberacao", :data_liberacao, {:optional, :string}}, {"destino", :destino, {:optional, :string}}, {"origem", :origem, {:optional, :string}}, {"prefixo", :prefixo, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadFerroviarioTrem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadFerroviarioVagoesItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:numero, :unset}, {:peso_bc, :unset}, {:peso_real, :unset}, {:sequencia_vagao, :unset}, {:serie, :unset}, {:tipo_vagao, :unset}, {:tonelada_util, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:numero => String.t(), :peso_bc => String.t(), :peso_real => String.t(), :sequencia_vagao => (String.t() | :unset), :serie => String.t(), :tipo_vagao => (String.t() | :unset), :tonelada_util => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"numero", :numero, :string}, {"peso_bc", :peso_bc, :string}, {"peso_real", :peso_real, :string}, {"sequencia_vagao", :sequencia_vagao, {:optional, :string}}, {"serie", :serie, :string}, {"tipo_vagao", :tipo_vagao, {:optional, :string}}, {"tonelada_util", :tonelada_util, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadFerroviarioVagoesItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominante do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:gtin, :unset}, {:lotacao, :unset}, {:ncm, :unset}, {:nome, :unset}, {:tipo_carga, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:gtin => (String.t() | :unset), :lotacao => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominanteLotacao.t() | :unset), :ncm => (String.t() | :unset), :nome => (String.t() | :unset), :tipo_carga => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"gtin", :gtin, {:optional, :string}}, {"lotacao", :lotacao, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominanteLotacao}}, {"ncm", :ncm, {:optional, :string}}, {"nome", :nome, {:optional, :string}}, {"tipo_carga", :tipo_carga, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadProdutoPredominante"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominanteLotacao do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:carregamento, :unset}, {:descarregamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:carregamento => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominanteLotacaoCarregamento.t() | :unset), :descarregamento => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominanteLotacaoDescarregamento.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"carregamento", :carregamento, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominanteLotacaoCarregamento}}, {"descarregamento", :descarregamento, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominanteLotacaoDescarregamento}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadProdutoPredominanteLotacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominanteLotacaoCarregamento do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:latitude, :unset}, {:longitude, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :latitude => (String.t() | :unset), :longitude => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"latitude", :latitude, {:optional, :string}}, {"longitude", :longitude, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadProdutoPredominanteLotacaoCarregamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadProdutoPredominanteLotacaoDescarregamento do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:latitude, :unset}, {:longitude, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :latitude => (String.t() | :unset), :longitude => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"latitude", :latitude, {:optional, :string}}, {"longitude", :longitude, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadProdutoPredominanteLotacaoDescarregamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviario do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ciot, :unset}, {:condutor, :unset}, {:contratante, :unset}, {:lacres, :unset}, {:rntrc, :unset}, {:vale_pedagio, :unset}, {:veiculo_reboque, :unset}, {:veiculo_tracao, :unset}, {:combinacao_veicular, :unset}, {:pagamento_frete, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ciot => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioCiotItem.t()] | :unset), :condutor => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioCondutorItem.t()] | :unset), :contratante => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioContratanteItem.t()] | :unset), :lacres => ([String.t()] | :unset), :rntrc => (String.t() | :unset), :vale_pedagio => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioValePedagioItem.t()] | :unset), :veiculo_reboque => ([Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItem.t()] | :unset), :veiculo_tracao => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoTracao.t() | :unset), :combinacao_veicular => (String.t() | :unset), :pagamento_frete => ([Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroup.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ciot", :ciot, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioCiotItem}}}, {"condutor", :condutor, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioCondutorItem}}}, {"contratante", :contratante, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioContratanteItem}}}, {"lacres", :lacres, {:optional, {:array, :string}}}, {"rntrc", :rntrc, {:optional, :string}}, {"vale_pedagio", :vale_pedagio, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioValePedagioItem}}}, {"veiculo_reboque", :veiculo_reboque, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItem}}}, {"veiculo_tracao", :veiculo_tracao, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoTracao}}, {"combinacao_veicular", :combinacao_veicular, {:optional, :string}}, {"pagamento_frete", :pagamento_frete, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroup}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioCiotItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj_responsavel, :unset}, {:codigo_ciot, :unset}, {:cpf_responsavel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj_responsavel => (String.t() | :unset), :codigo_ciot => String.t(), :cpf_responsavel => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj_responsavel", :cnpj_responsavel, {:optional, :string}}, {"codigo_ciot", :codigo_ciot, :string}, {"cpf_responsavel", :cpf_responsavel, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioCiotItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioCondutorItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cpf, :unset}, {:nome, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cpf => String.t(), :nome => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cpf", :cpf, :string}, {"nome", :nome, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioCondutorItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioContratanteItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioContratanteItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioValePedagioItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj_fornecedor, :unset}, {:cnpj_responsavel, :unset}, {:comprovante, :unset}, {:cpf_responsavel, :unset}, {:valor, :unset}, {:tipo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj_fornecedor => String.t(), :cnpj_responsavel => (String.t() | :unset), :comprovante => String.t(), :cpf_responsavel => (String.t() | :unset), :valor => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :tipo => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj_fornecedor", :cnpj_fornecedor, :string}, {"cnpj_responsavel", :cnpj_responsavel, {:optional, :string}}, {"comprovante", :comprovante, :string}, {"cpf_responsavel", :cpf_responsavel, {:optional, :string}}, {"valor", :valor, :scalar}, {"tipo", :tipo, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioValePedagioItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:capacidade_kg, :unset}, {:capacidade_m3, :unset}, {:codigo_agendamento_porto, :unset}, {:codigo_interno, :unset}, {:placa, :unset}, {:proprietario, :unset}, {:renavam, :unset}, {:tara, :unset}, {:tipo_carroceria, :unset}, {:uf_licenciamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:capacidade_kg => String.t(), :capacidade_m3 => (String.t() | :unset), :codigo_agendamento_porto => (String.t() | :unset), :codigo_interno => (String.t() | :unset), :placa => String.t(), :proprietario => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItemProprietario.t() | :unset), :renavam => (String.t() | :unset), :tara => String.t(), :tipo_carroceria => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :uf_licenciamento => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"capacidade_kg", :capacidade_kg, :string}, {"capacidade_m3", :capacidade_m3, {:optional, :string}}, {"codigo_agendamento_porto", :codigo_agendamento_porto, {:optional, :string}}, {"codigo_interno", :codigo_interno, {:optional, :string}}, {"placa", :placa, :string}, {"proprietario", :proprietario, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItemProprietario}}, {"renavam", :renavam, {:optional, :string}}, {"tara", :tara, :string}, {"tipo_carroceria", :tipo_carroceria, :scalar}, {"uf_licenciamento", :uf_licenciamento, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItemProprietario do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:ie, :unset}, {:nome, :unset}, {:razao_social, :unset}, {:rntrc, :unset}, {:tipo_proprietario, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :ie => (String.t() | :unset), :nome => (String.t() | :unset), :razao_social => (String.t() | :unset), :rntrc => (String.t() | :unset), :tipo_proprietario => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"nome", :nome, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"rntrc", :rntrc, {:optional, :string}}, {"tipo_proprietario", :tipo_proprietario, {:optional, :scalar}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioVeiculoReboqueItemProprietario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoTracao do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:capacidade_kg, :unset}, {:capacidade_m3, :unset}, {:codigo_interno, :unset}, {:placa, :unset}, {:proprietario, :unset}, {:renavam, :unset}, {:tara, :unset}, {:tipo_carroceria, :unset}, {:tipo_rodado, :unset}, {:uf_licenciamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:capacidade_kg => (String.t() | :unset), :capacidade_m3 => (String.t() | :unset), :codigo_interno => (String.t() | :unset), :placa => (String.t() | :unset), :proprietario => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoTracaoProprietario.t() | :unset), :renavam => (String.t() | :unset), :tara => (String.t() | :unset), :tipo_carroceria => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo_rodado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uf_licenciamento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"capacidade_kg", :capacidade_kg, {:optional, :string}}, {"capacidade_m3", :capacidade_m3, {:optional, :string}}, {"codigo_interno", :codigo_interno, {:optional, :string}}, {"placa", :placa, {:optional, :string}}, {"proprietario", :proprietario, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoTracaoProprietario}}, {"renavam", :renavam, {:optional, :string}}, {"tara", :tara, {:optional, :string}}, {"tipo_carroceria", :tipo_carroceria, {:optional, :scalar}}, {"tipo_rodado", :tipo_rodado, {:optional, :scalar}}, {"uf_licenciamento", :uf_licenciamento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioVeiculoTracao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadRodoviarioVeiculoTracaoProprietario do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:ie, :unset}, {:nome, :unset}, {:razao_social, :unset}, {:rntrc, :unset}, {:tipo_proprietario, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :ie => (String.t() | :unset), :nome => (String.t() | :unset), :razao_social => (String.t() | :unset), :rntrc => (String.t() | :unset), :tipo_proprietario => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"nome", :nome, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"rntrc", :rntrc, {:optional, :string}}, {"tipo_proprietario", :tipo_proprietario, {:optional, :scalar}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadRodoviarioVeiculoTracaoProprietario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroup do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cpf, :unset}, {:nome, :unset}, {:cnpj, :unset}, {:razao_social, :unset}, {:id_estrangeiro, :unset}, {:valor_contrato, :unset}, {:forma_pagamento, :unset}, {:operacao_alto_desempenho, :unset}, {:valor_adiantamento, :unset}, {:antecipar_adiantamento, :unset}, {:permissao_antecipacao_parcela, :unset}, {:componentes_pagamento_frete, :unset}, {:informacoes_bancarias, :unset}, {:informacoes_pagamento_prazo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cpf => (String.t() | :unset), :nome => (String.t() | :unset), :cnpj => (String.t() | :unset), :razao_social => (String.t() | :unset), :id_estrangeiro => (String.t() | :unset), :valor_contrato => String.t(), :forma_pagamento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :operacao_alto_desempenho => (boolean() | :unset), :valor_adiantamento => (String.t() | :unset), :antecipar_adiantamento => (boolean() | :unset), :permissao_antecipacao_parcela => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :componentes_pagamento_frete => [Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroupComponentesPagamentoFreteItem.t()], :informacoes_bancarias => Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroupInformacoesBancarias.t(), :informacoes_pagamento_prazo => ([Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroupInformacoesPagamentoPrazoItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cpf", :cpf, {:optional, :string}}, {"nome", :nome, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"valor_contrato", :valor_contrato, :string}, {"forma_pagamento", :forma_pagamento, :scalar}, {"operacao_alto_desempenho", :operacao_alto_desempenho, {:optional, :boolean}}, {"valor_adiantamento", :valor_adiantamento, {:optional, :string}}, {"antecipar_adiantamento", :antecipar_adiantamento, {:optional, :boolean}}, {"permissao_antecipacao_parcela", :permissao_antecipacao_parcela, {:optional, :scalar}}, {"componentes_pagamento_frete", :componentes_pagamento_frete, {:array, Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroupComponentesPagamentoFreteItem}}, {"informacoes_bancarias", :informacoes_bancarias, Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroupInformacoesBancarias}, {"informacoes_pagamento_prazo", :informacoes_pagamento_prazo, {:optional, {:array, Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroupInformacoesPagamentoPrazoItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::MdfeFreightPaymentGroup"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroupComponentesPagamentoFreteItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_componente, :unset}, {:valor_componente, :unset}, {:descricao_componente, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_componente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_componente => String.t(), :descricao_componente => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_componente", :tipo_componente, :scalar}, {"valor_componente", :valor_componente, :string}, {"descricao_componente", :descricao_componente, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::MdfeFreightPaymentGroupComponentesPagamentoFreteItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroupInformacoesBancarias do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_informacao_bancaria, :unset}, {:numero_banco, :unset}, {:numero_agencia, :unset}, {:cnpj_ipef, :unset}, {:pix, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_informacao_bancaria => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :numero_banco => (String.t() | :unset), :numero_agencia => (String.t() | :unset), :cnpj_ipef => (String.t() | :unset), :pix => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_informacao_bancaria", :tipo_informacao_bancaria, :scalar}, {"numero_banco", :numero_banco, {:optional, :string}}, {"numero_agencia", :numero_agencia, {:optional, :string}}, {"cnpj_ipef", :cnpj_ipef, {:optional, :string}}, {"pix", :pix, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::MdfeFreightPaymentGroupInformacoesBancarias"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.MdfeFreightPaymentGroupInformacoesPagamentoPrazoItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_vencimento_parcela, :unset}, {:valor_parcela, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_vencimento_parcela => (String.t() | :unset), :valor_parcela => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_vencimento_parcela", :data_vencimento_parcela, {:optional, :string}}, {"valor_parcela", :valor_parcela, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::MdfeFreightPaymentGroupInformacoesPagamentoPrazoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadSeguroItem do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:numero_apolice, :unset}, {:numero_averbacao, :unset}, {:responsavel, :unset}, {:seguradora, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:numero_apolice => (String.t() | :unset), :numero_averbacao => ([String.t()] | :unset), :responsavel => Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadSeguroItemResponsavel.t(), :seguradora => (Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadSeguroItemSeguradora.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"numero_apolice", :numero_apolice, {:optional, :string}}, {"numero_averbacao", :numero_averbacao, {:optional, {:array, :string}}}, {"responsavel", :responsavel, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadSeguroItemResponsavel}, {"seguradora", :seguradora, {:optional, Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadSeguroItemSeguradora}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadSeguroItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadSeguroItemResponsavel do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:tipo_responsavel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :tipo_responsavel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"tipo_responsavel", :tipo_responsavel, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadSeguroItemResponsavel"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterIssueMdfePayloadSeguroItemSeguradora do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:nome_seguradora, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :nome_seguradora => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"nome_seguradora", :nome_seguradora, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterIssueMdfePayloadSeguroItemSeguradora"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterCloseMdfePayload do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:codigo_municipio, :unset}, {:municipio, :unset}, {:uf, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :codigo_municipio => (String.t() | :unset), :municipio => (String.t() | :unset), :uf => (String.t() | :unset), :uuid => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"municipio", :municipio, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterCloseMdfePayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterCancelMdfePayload do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:justificativa, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :justificativa => String.t(), :uuid => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"justificativa", :justificativa, :string}, {"uuid", :uuid, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterCancelMdfePayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.EmitterAddMdfeConductorPayload do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:cpf, :unset}, {:nome, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :cpf => String.t(), :nome => String.t(), :uuid => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"cpf", :cpf, :string}, {"nome", :nome, :string}, {"uuid", :uuid, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::EmitterAddMdfeConductorPayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.MdfeDocumentedGroup465 do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:mdfe, :unset}, {:status, :unset}, {:motivo, :unset}, {:xml, :unset}, {:damdfe, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :chave => (String.t() | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :mdfe => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => (String.t() | :unset), :motivo => (String.t() | :unset), :xml => (String.t() | :unset), :damdfe => (String.t() | :unset), :log => ([Webmania.JSON.value()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"serie", :serie, {:optional, :scalar}}, {"mdfe", :mdfe, {:optional, :scalar}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"damdfe", :damdfe, {:optional, :string}}, {"log", :log, {:optional, {:array, :value}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::MdfeDocumentedGroup465"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.MdfeDocumentedGroup3210 do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:uf, :unset}, {:municipio, :unset}, {:codigo_municipio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :uf => (String.t() | :unset), :municipio => (String.t() | :unset), :codigo_municipio => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"municipio", :municipio, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::MdfeDocumentedGroup3210"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.MdfeDocumentedGroup3297 do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:justificativa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :justificativa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"justificativa", :justificativa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::MdfeDocumentedGroup3297"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MdfeIssuance.MdfeDocumentedGroup3362 do
  @moduledoc "Nominal model from the pinned api2_mdfe_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:cpf, :unset}, {:nome, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :cpf => (String.t() | :unset), :nome => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"nome", :nome, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_mdfe_issuance::MdfeDocumentedGroup3362"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
