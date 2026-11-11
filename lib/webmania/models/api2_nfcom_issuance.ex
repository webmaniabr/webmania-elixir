# Generated. Run scripts/generate.py in the pinned Docker toolchain.
defmodule Webmania.Models.Api2NfcomIssuance.EmitterError do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:status, :unset}, {:configured, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => (String.t() | :unset), :message => (String.t() | :unset), :status => (boolean() | :unset), :configured => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, {:optional, :string}}, {"message", :message, {:optional, :string}}, {"status", :status, {:optional, :boolean}}, {"configured", :configured, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterError"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfseServiceCode do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:descricao, :unset}, {:id_cnae, :unset}, {:codigo_tributacao, :unset}, {:aliquota_sugerida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :descricao => String.t(), :id_cnae => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_tributacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_sugerida => (Webmania.Models.Api2NfcomIssuance.NfseServiceCodeAliquotaSugerida.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, :scalar}, {"descricao", :descricao, :string}, {"id_cnae", :id_cnae, {:optional, :scalar}}, {"codigo_tributacao", :codigo_tributacao, {:optional, :scalar}}, {"aliquota_sugerida", :aliquota_sugerida, {:optional, Webmania.Models.Api2NfcomIssuance.NfseServiceCodeAliquotaSugerida}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfseServiceCode"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfseServiceCodeAliquotaSugerida do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:iss, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"iss", :iss, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfseServiceCodeAliquotaSugerida"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfseProviderStatus do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:modelo, :unset}, {:versao, :unset}, {:ambientes, :unset}, {:autenticacao, :unset}, {:emissao, :unset}, {:funcoes, :unset}, {:pdf_nfse, :unset}, {:pdf_sincrono, :unset}, {:codigo_servico, :unset}, {:parametros_disponiveis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => boolean(), :modelo => (String.t() | :unset), :versao => (String.t() | :unset), :ambientes => [integer()], :autenticacao => [String.t()], :emissao => [String.t()], :funcoes => [String.t()], :pdf_nfse => boolean(), :pdf_sincrono => boolean(), :codigo_servico => ([Webmania.Models.Api2NfcomIssuance.NfseServiceCode.t()] | :unset), :parametros_disponiveis => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, :boolean}, {"modelo", :modelo, {:optional, :string}}, {"versao", :versao, {:optional, :string}}, {"ambientes", :ambientes, {:array, :i64}}, {"autenticacao", :autenticacao, {:array, :string}}, {"emissao", :emissao, {:array, :string}}, {"funcoes", :funcoes, {:array, :string}}, {"pdf_nfse", :pdf_nfse, :boolean}, {"pdf_sincrono", :pdf_sincrono, :boolean}, {"codigo_servico", :codigo_servico, {:optional, {:array, Webmania.Models.Api2NfcomIssuance.NfseServiceCode}}}, {"parametros_disponiveis", :parametros_disponiveis, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfseProviderStatus"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomServiceStatus do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:operacional, :unset}, {:mensagem, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:operacional => boolean(), :mensagem => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"operacional", :operacional, :boolean}, {"mensagem", :mensagem, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomServiceStatus"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfseFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:chave, :unset}, {:numero_lote, :unset}, {:serie_lote, :unset}, {:protocolo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:serie_rps, :unset}, {:numero_rps, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:atualizado_em, :unset}, {:motivo, :unset}, {:quantidade_rps, :unset}, {:nfse_substituida, :unset}, {:info_nfse, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :uuid => String.t(), :modelo => String.t(), :status => String.t(), :chave => (String.t() | :unset), :numero_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :serie_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :xml => (String.t() | :unset), :xml_cancelamento => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :atualizado_em => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfse_substituida => (Webmania.Models.Api2NfcomIssuance.NfseFiscalResponseNfseSubstituida.t() | :unset), :info_nfse => ([Webmania.Models.Api2NfcomIssuance.NfseFiscalResponseInfoNfseItem.t()] | :unset), :log => (Webmania.Models.Api2NfcomIssuance.NfseFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"uuid", :uuid, :string}, {"modelo", :modelo, :string}, {"status", :status, :string}, {"chave", :chave, {:optional, :string}}, {"numero_lote", :numero_lote, {:optional, :scalar}}, {"serie_lote", :serie_lote, {:optional, :scalar}}, {"protocolo", :protocolo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"serie_rps", :serie_rps, {:optional, :scalar}}, {"numero_rps", :numero_rps, {:optional, :scalar}}, {"xml", :xml, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}, {"atualizado_em", :atualizado_em, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"quantidade_rps", :quantidade_rps, {:optional, :scalar}}, {"nfse_substituida", :nfse_substituida, {:optional, Webmania.Models.Api2NfcomIssuance.NfseFiscalResponseNfseSubstituida}}, {"info_nfse", :info_nfse, {:optional, {:array, Webmania.Models.Api2NfcomIssuance.NfseFiscalResponseInfoNfseItem}}}, {"log", :log, {:optional, Webmania.Models.Api2NfcomIssuance.NfseFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfseFiscalResponse"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfseFiscalResponseNfseSubstituida do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfseFiscalResponseNfseSubstituida"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfseFiscalResponseInfoNfseItem do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:motivo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:xml, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :modelo => (String.t() | :unset), :status => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :xml => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfseFiscalResponseInfoNfseItem"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfseFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfseFiscalResponseLog"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomPaymentEvent do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_nfcom, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => ((String.t() | nil) | :unset), :codigo => ((String.t() | nil) | :unset), :motivo => ((String.t() | nil) | :unset), :protocolo_evento => ((String.t() | nil) | :unset), :protocolo_nfcom => ((String.t() | nil) | :unset), :protocolo_vinculacao => ((String.t() | nil) | :unset), :data_evento => ((String.t() | nil) | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pagamento => ((Webmania.Models.Api2NfcomIssuance.NfcomPaymentEventPagamentoVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, {:nullable, :string}}}, {"codigo", :codigo, {:optional, {:nullable, :string}}}, {"motivo", :motivo, {:optional, {:nullable, :string}}}, {"protocolo_evento", :protocolo_evento, {:optional, {:nullable, :string}}}, {"protocolo_nfcom", :protocolo_nfcom, {:optional, {:nullable, :string}}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, {:nullable, :string}}}, {"data_evento", :data_evento, {:optional, {:nullable, :string}}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}, {"pagamento", :pagamento, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.NfcomPaymentEventPagamentoVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomPaymentEvent"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomPaymentEventPagamentoVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nPag, :unset}, {:idTransacao, :unset}, {:tpMeioPgto, :unset}, {:CNPJReceb, :unset}, {:CNPJBasePSP, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nPag => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :idTransacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tpMeioPgto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJReceb => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJBasePSP => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nPag", :nPag, {:optional, :scalar}}, {"idTransacao", :idTransacao, {:optional, :scalar}}, {"tpMeioPgto", :tpMeioPgto, {:optional, :scalar}}, {"CNPJReceb", :CNPJReceb, {:optional, :scalar}}, {"CNPJBasePSP", :CNPJBasePSP, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomPaymentEventPagamentoVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:nfcom, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:contingencia, :unset}, {:xml, :unset}, {:danfecom, :unset}, {:xml_cancelamento, :unset}, {:protocolo, :unset}, {:data_autorizacao, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:consulta_eventos_pagamento, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfcom => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (String.t() | :unset), :modelo => String.t(), :contingencia => (boolean() | :unset), :xml => (String.t() | :unset), :danfecom => (String.t() | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :protocolo => (String.t() | :unset), :data_autorizacao => ((String.t() | nil) | :unset), :eventos_pagamento => ([Webmania.Models.Api2NfcomIssuance.NfcomPaymentEvent.t()] | :unset), :total_eventos => (integer() | :unset), :consulta_eventos_pagamento => (String.t() | :unset), :log => (Webmania.Models.Api2NfcomIssuance.NfcomFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"nfcom", :nfcom, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :string}}, {"modelo", :modelo, :string}, {"contingencia", :contingencia, {:optional, :boolean}}, {"xml", :xml, {:optional, :string}}, {"danfecom", :danfecom, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"protocolo", :protocolo, {:optional, :string}}, {"data_autorizacao", :data_autorizacao, {:optional, {:nullable, :string}}}, {"eventos_pagamento", :eventos_pagamento, {:optional, {:array, Webmania.Models.Api2NfcomIssuance.NfcomPaymentEvent}}}, {"total_eventos", :total_eventos, {:optional, :i64}}, {"consulta_eventos_pagamento", :consulta_eventos_pagamento, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api2NfcomIssuance.NfcomFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomFiscalResponse"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomFiscalResponseLog"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomPaymentEvents do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:status, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :status => String.t(), :eventos_pagamento => [Webmania.Models.Api2NfcomIssuance.NfcomPaymentEvent.t()], :total_eventos => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"status", :status, :string}, {"eventos_pagamento", :eventos_pagamento, {:array, Webmania.Models.Api2NfcomIssuance.NfcomPaymentEvent}}, {"total_eventos", :total_eventos, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomPaymentEvents"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfseManifestationRequest do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:chave, :unset}, {:manifestador, :unset}, {:evento, :unset}, {:motivo_rejeicao, :unset}, {:justificativa_rejeicao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :chave => String.t(), :manifestador => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :evento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :motivo_rejeicao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :justificativa_rejeicao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, :scalar}, {"chave", :chave, :string}, {"manifestador", :manifestador, :scalar}, {"evento", :evento, :scalar}, {"motivo_rejeicao", :motivo_rejeicao, {:optional, :scalar}}, {"justificativa_rejeicao", :justificativa_rejeicao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfseManifestationRequest"
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
defmodule Webmania.Models.Api2NfcomIssuance.CteFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:cte, :unset}, {:epec, :unset}, {:dacte, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:consulta_eventos_pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2NfcomIssuance.CteFiscalResponseLog.t() | :unset), :cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :epec => (boolean() | :unset), :dacte => ((String.t() | nil) | :unset), :eventos_pagamento => ([Webmania.Models.Api2NfcomIssuance.CteFiscalResponseEventosPagamentoItem.t()] | :unset), :total_eventos => (integer() | :unset), :consulta_eventos_pagamento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2NfcomIssuance.CteFiscalResponseLog}}, {"cte", :cte, {:optional, :scalar}}, {"epec", :epec, {:optional, :boolean}}, {"dacte", :dacte, {:optional, {:nullable, :string}}}, {"eventos_pagamento", :eventos_pagamento, {:optional, {:array, Webmania.Models.Api2NfcomIssuance.CteFiscalResponseEventosPagamentoItem}}}, {"total_eventos", :total_eventos, {:optional, :i64}}, {"consulta_eventos_pagamento", :consulta_eventos_pagamento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::CteFiscalResponse"
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
defmodule Webmania.Models.Api2NfcomIssuance.CteFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::CteFiscalResponseLog"
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
defmodule Webmania.Models.Api2NfcomIssuance.CteFiscalResponseEventosPagamentoItem do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_cte, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_vinculacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, :scalar}}, {"codigo", :codigo, {:optional, :scalar}}, {"motivo", :motivo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :scalar}}, {"protocolo_cte", :protocolo_cte, {:optional, :scalar}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :scalar}}, {"data_evento", :data_evento, {:optional, :scalar}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::CteFiscalResponseEventosPagamentoItem"
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
defmodule Webmania.Models.Api2NfcomIssuance.MdfeFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:mdfe, :unset}, {:damdfe, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2NfcomIssuance.MdfeFiscalResponseLog.t() | :unset), :mdfe => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :damdfe => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2NfcomIssuance.MdfeFiscalResponseLog}}, {"mdfe", :mdfe, {:optional, :scalar}}, {"damdfe", :damdfe, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::MdfeFiscalResponse"
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
defmodule Webmania.Models.Api2NfcomIssuance.MdfeFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::MdfeFiscalResponseLog"
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
defmodule Webmania.Models.Api2NfcomIssuance.DceFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:numero, :unset}, {:dace, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2NfcomIssuance.DceFiscalResponseLog.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :dace => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2NfcomIssuance.DceFiscalResponseLog}}, {"numero", :numero, {:optional, :scalar}}, {"dace", :dace, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::DceFiscalResponse"
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
defmodule Webmania.Models.Api2NfcomIssuance.DceFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::DceFiscalResponseLog"
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
defmodule Webmania.Models.Api2NfcomIssuance.FiscalEventResponse do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:evento, :unset}, {:status, :unset}, {:motivo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:dacce, :unset}, {:log, :unset}, {:codigo, :unset}, {:protocolo_evento, :unset}, {:data_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :chave => (String.t() | :unset), :evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => ((String.t() | nil) | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :dacce => (String.t() | :unset), :log => (Webmania.Models.Api2NfcomIssuance.FiscalEventResponseLog.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (String.t() | :unset), :data_evento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"evento", :evento, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, {:nullable, :string}}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"dacce", :dacce, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api2NfcomIssuance.FiscalEventResponseLog}}, {"codigo", :codigo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :string}}, {"data_evento", :data_evento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::FiscalEventResponse"
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
defmodule Webmania.Models.Api2NfcomIssuance.FiscalEventResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::FiscalEventResponseLog"
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
defmodule Webmania.Models.Api2NfcomIssuance.CtePaymentEvents do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:status, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => (String.t() | :unset), :status => String.t(), :eventos_pagamento => [Webmania.Models.Api2NfcomIssuance.CtePaymentEventsEventosPagamentoItem.t()], :total_eventos => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, :string}}, {"status", :status, :string}, {"eventos_pagamento", :eventos_pagamento, {:array, Webmania.Models.Api2NfcomIssuance.CtePaymentEventsEventosPagamentoItem}}, {"total_eventos", :total_eventos, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::CtePaymentEvents"
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
defmodule Webmania.Models.Api2NfcomIssuance.CtePaymentEventsEventosPagamentoItem do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_cte, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_vinculacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, :scalar}}, {"codigo", :codigo, {:optional, :scalar}}, {"motivo", :motivo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :scalar}}, {"protocolo_cte", :protocolo_cte, {:optional, :scalar}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :scalar}}, {"data_evento", :data_evento, {:optional, :scalar}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::CtePaymentEventsEventosPagamentoItem"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayload do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:assinante, :unset}, {:autorizar_download, :unset}, {:cliente, :unset}, {:cofaturamento, :unset}, {:consumidor_final, :unset}, {:fatura, :unset}, {:faturamento_centralizado, :unset}, {:finalidade, :unset}, {:impostos, :unset}, {:indicador_cessao_meios_rede, :unset}, {:indicador_nota_entrada, :unset}, {:indicador_pre_pago, :unset}, {:informacoes_complementares, :unset}, {:itens, :unset}, {:municipio_fato_gerador, :unset}, {:natureza_operacao, :unset}, {:origem, :unset}, {:pgto_vinc, :unset}, {:presenca_comprador, :unset}, {:previa_danfecom, :unset}, {:processo_emissao, :unset}, {:substituicao, :unset}, {:tipo_faturamento, :unset}, {:tipo_operacao, :unset}, {:url_notificacao, :unset}, {:ID, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :assinante => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadAssinanteVariant0.t() | nil) | :unset), :autorizar_download => (([String.t()] | nil) | :unset), :cliente => Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadCliente.t(), :cofaturamento => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadCofaturamentoVariant0.t() | nil) | :unset), :consumidor_final => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :fatura => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadFaturaVariant0.t() | nil) | :unset), :faturamento_centralizado => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadFaturamentoCentralizadoVariant0.t() | nil) | :unset), :finalidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :impostos => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0.t() | nil) | :unset), :indicador_cessao_meios_rede => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :indicador_nota_entrada => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :indicador_pre_pago => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :informacoes_complementares => ((String.t() | nil) | :unset), :itens => [Webmania.Models.Api2NfcomIssuance.NfcomItemGroup.t()], :municipio_fato_gerador => ((String.t() | nil) | :unset), :natureza_operacao => String.t(), :origem => ((String.t() | nil) | :unset), :pgto_vinc => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadPgtoVincVariant0.t() | nil) | :unset), :presenca_comprador => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :previa_danfecom => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :processo_emissao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :substituicao => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadSubstituicaoVariant0.t() | nil) | :unset), :tipo_faturamento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo_operacao => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :url_notificacao => ((String.t() | nil) | :unset), :ID => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, :scalar}, {"assinante", :assinante, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadAssinanteVariant0}}}, {"autorizar_download", :autorizar_download, {:optional, {:nullable, {:array, :string}}}}, {"cliente", :cliente, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadCliente}, {"cofaturamento", :cofaturamento, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadCofaturamentoVariant0}}}, {"consumidor_final", :consumidor_final, {:optional, :scalar}}, {"fatura", :fatura, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadFaturaVariant0}}}, {"faturamento_centralizado", :faturamento_centralizado, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadFaturamentoCentralizadoVariant0}}}, {"finalidade", :finalidade, :scalar}, {"impostos", :impostos, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0}}}, {"indicador_cessao_meios_rede", :indicador_cessao_meios_rede, {:optional, :scalar}}, {"indicador_nota_entrada", :indicador_nota_entrada, {:optional, :scalar}}, {"indicador_pre_pago", :indicador_pre_pago, {:optional, :scalar}}, {"informacoes_complementares", :informacoes_complementares, {:optional, {:nullable, :string}}}, {"itens", :itens, {:array, Webmania.Models.Api2NfcomIssuance.NfcomItemGroup}}, {"municipio_fato_gerador", :municipio_fato_gerador, {:optional, {:nullable, :string}}}, {"natureza_operacao", :natureza_operacao, :string}, {"origem", :origem, {:optional, {:nullable, :string}}}, {"pgto_vinc", :pgto_vinc, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadPgtoVincVariant0}}}, {"presenca_comprador", :presenca_comprador, {:optional, :scalar}}, {"previa_danfecom", :previa_danfecom, {:optional, :scalar}}, {"processo_emissao", :processo_emissao, {:optional, :scalar}}, {"substituicao", :substituicao, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadSubstituicaoVariant0}}}, {"tipo_faturamento", :tipo_faturamento, {:optional, :scalar}}, {"tipo_operacao", :tipo_operacao, :scalar}, {"url_notificacao", :url_notificacao, {:optional, {:nullable, :string}}}, {"ID", :ID, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayload"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadAssinanteVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:contrato, :unset}, {:tipo, :unset}, {:tipo_servico, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => ((String.t() | nil) | :unset), :contrato => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadAssinanteVariant0ContratoVariant0.t() | nil) | :unset), :tipo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo_servico => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, {:optional, {:nullable, :string}}}, {"contrato", :contrato, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadAssinanteVariant0ContratoVariant0}}}, {"tipo", :tipo, {:optional, :scalar}}, {"tipo_servico", :tipo_servico, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadAssinanteVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadAssinanteVariant0ContratoVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_fim, :unset}, {:data_inicio, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_fim => ((String.t() | nil) | :unset), :data_inicio => ((String.t() | nil) | :unset), :numero => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_fim", :data_fim, {:optional, {:nullable, :string}}}, {"data_inicio", :data_inicio, {:optional, {:nullable, :string}}}, {"numero", :numero, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadAssinanteVariant0ContratoVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadCliente do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:exterior, :unset}, {:indicador_ie, :unset}, {:inscricao_estadual, :unset}, {:nome_completo, :unset}, {:razao_social, :unset}, {:inscricao_municipal, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => ((String.t() | nil) | :unset), :cpf => ((String.t() | nil) | :unset), :email => (Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadClienteEmail.t() | :unset), :endereco => Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadClienteEndereco.t(), :exterior => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :indicador_ie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :inscricao_estadual => ((String.t() | nil) | :unset), :nome_completo => ((String.t() | nil) | :unset), :razao_social => ((String.t() | nil) | :unset), :inscricao_municipal => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, {:nullable, :string}}}, {"cpf", :cpf, {:optional, {:nullable, :string}}}, {"email", :email, {:optional, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadClienteEmail}}, {"endereco", :endereco, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadClienteEndereco}, {"exterior", :exterior, {:optional, :scalar}}, {"indicador_ie", :indicador_ie, {:optional, :scalar}}, {"inscricao_estadual", :inscricao_estadual, {:optional, {:nullable, :string}}}, {"nome_completo", :nome_completo, {:optional, {:nullable, :string}}}, {"razao_social", :razao_social, {:optional, {:nullable, :string}}}, {"inscricao_municipal", :inscricao_municipal, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadCliente"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadClienteEmail do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :List, value: [String.t()]} | %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:List, {:array, :string}}, {:Text, :string}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadClienteEmail"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadClienteEndereco do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:codigo_municipio, :unset}, {:codigo_pais, :unset}, {:complemento, :unset}, {:logradouro, :unset}, {:municipio, :unset}, {:numero, :unset}, {:pais, :unset}, {:telefone, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => String.t(), :cep => String.t(), :codigo_municipio => String.t(), :codigo_pais => ((String.t() | nil) | :unset), :complemento => ((String.t() | nil) | :unset), :logradouro => String.t(), :municipio => String.t(), :numero => String.t(), :pais => ((String.t() | nil) | :unset), :telefone => ((String.t() | nil) | :unset), :uf => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, :string}, {"cep", :cep, :string}, {"codigo_municipio", :codigo_municipio, :string}, {"codigo_pais", :codigo_pais, {:optional, {:nullable, :string}}}, {"complemento", :complemento, {:optional, {:nullable, :string}}}, {"logradouro", :logradouro, :string}, {"municipio", :municipio, :string}, {"numero", :numero, :string}, {"pais", :pais, {:optional, {:nullable, :string}}}, {"telefone", :telefone, {:optional, {:nullable, :string}}}, {"uf", :uf, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadClienteEndereco"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadCofaturamentoVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave_nfcom_local, :unset}, {:nf_referenciada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave_nfcom_local => ((String.t() | nil) | :unset), :nf_referenciada => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadCofaturamentoVariant0NfReferenciadaVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave_nfcom_local", :chave_nfcom_local, {:optional, {:nullable, :string}}}, {"nf_referenciada", :nf_referenciada, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadCofaturamentoVariant0NfReferenciadaVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadCofaturamentoVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadCofaturamentoVariant0NfReferenciadaVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:competencia, :unset}, {:hash115, :unset}, {:modelo, :unset}, {:numero, :unset}, {:serie, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :competencia => (String.t() | :unset), :hash115 => ((String.t() | nil) | :unset), :modelo => (String.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"competencia", :competencia, {:optional, :string}}, {"hash115", :hash115, {:optional, {:nullable, :string}}}, {"modelo", :modelo, {:optional, :string}}, {"numero", :numero, {:optional, :scalar}}, {"serie", :serie, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadCofaturamentoVariant0NfReferenciadaVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadFaturaVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_barras_fatura, :unset}, {:competencia_fatura, :unset}, {:data_periodo_final, :unset}, {:data_periodo_inicial, :unset}, {:data_vencimento, :unset}, {:numero_debito_automatico, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_barras_fatura => (String.t() | :unset), :competencia_fatura => (String.t() | :unset), :data_periodo_final => (String.t() | :unset), :data_periodo_inicial => (String.t() | :unset), :data_vencimento => (String.t() | :unset), :numero_debito_automatico => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_barras_fatura", :codigo_barras_fatura, {:optional, :string}}, {"competencia_fatura", :competencia_fatura, {:optional, :string}}, {"data_periodo_final", :data_periodo_final, {:optional, :string}}, {"data_periodo_inicial", :data_periodo_inicial, {:optional, :string}}, {"data_vencimento", :data_vencimento, {:optional, :string}}, {"numero_debito_automatico", :numero_debito_automatico, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadFaturaVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadFaturamentoCentralizadoVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:codigo_uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :codigo_uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"codigo_uf", :codigo_uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadFaturamentoCentralizadoVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ibs_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ibs_cbs => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ibs_cbs", :ibs_cbs, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao_tributaria, :unset}, {:classificacao_tributaria_regular, :unset}, {:compra_governamental, :unset}, {:credito_presumido, :unset}, {:estorno_credito, :unset}, {:indicador_doacao, :unset}, {:situacao_tributaria, :unset}, {:situacao_tributaria_regular, :unset}, {:cbs, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao_tributaria => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :compra_governamental => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CompraGovernamentalVariant0.t() | nil) | :unset), :credito_presumido => (Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CreditoPresumido.t() | :unset), :estorno_credito => (Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0EstornoCredito.t() | :unset), :indicador_doacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :situacao_tributaria => (String.t() | :unset), :situacao_tributaria_regular => (String.t() | :unset), :cbs => (Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0Cbs.t() | :unset), :ibs_estadual => (Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsMunicipal.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao_tributaria", :classificacao_tributaria, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"compra_governamental", :compra_governamental, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CompraGovernamentalVariant0}}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CreditoPresumido}}, {"estorno_credito", :estorno_credito, {:optional, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0EstornoCredito}}, {"indicador_doacao", :indicador_doacao, {:optional, :scalar}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0Cbs}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsMunicipal}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CompraGovernamentalVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_reducao, :unset}, {:documentos_referenciados, :unset}, {:ente, :unset}, {:referencias_dfe, :unset}, {:tipo_operacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :documentos_referenciados => (([nil | boolean() | String.t() | integer() | Webmania.Number.t()] | nil) | :unset), :ente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :referencias_dfe => (([String.t()] | nil) | :unset), :tipo_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_reducao", :aliquota_reducao, {:optional, :scalar}}, {"documentos_referenciados", :documentos_referenciados, {:optional, {:nullable, {:array, :scalar}}}}, {"ente", :ente, {:optional, :scalar}}, {"referencias_dfe", :referencias_dfe, {:optional, {:nullable, {:array, :string}}}}, {"tipo_operacao", :tipo_operacao, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CompraGovernamentalVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CreditoPresumido do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_cbs, :unset}, {:aliquota_ibs, :unset}, {:base_calculo, :unset}, {:classificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :classificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_cbs", :aliquota_cbs, {:optional, :scalar}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :scalar}}, {"base_calculo", :base_calculo, {:optional, :scalar}}, {"classificacao", :classificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0CreditoPresumido"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0EstornoCredito do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_cbs, :unset}, {:valor_ibs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_cbs", :valor_cbs, {:optional, :scalar}}, {"valor_ibs", :valor_ibs, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0EstornoCredito"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0Cbs do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0Cbs"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsEstadual do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsEstadual"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadImpostosVariant0IbsCbsVariant0IbsMunicipal"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroup do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classe_imposto, :unset}, {:codigo, :unset}, {:codigo_classificacao, :unset}, {:descricao, :unset}, {:impostos, :unset}, {:indicador_total, :unset}, {:quantidade, :unset}, {:unidade, :unset}, {:valor_total, :unset}, {:valor_unitario, :unset}, {:valor_desconto, :unset}, {:outras_despesas, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classe_imposto => ((String.t() | nil) | :unset), :codigo => ((String.t() | nil) | :unset), :codigo_classificacao => ((String.t() | nil) | :unset), :descricao => String.t(), :impostos => (Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostos.t() | :unset), :indicador_total => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :quantidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade => String.t(), :valor_total => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_unitario => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_desconto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :outras_despesas => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classe_imposto", :classe_imposto, {:optional, {:nullable, :string}}}, {"codigo", :codigo, {:optional, {:nullable, :string}}}, {"codigo_classificacao", :codigo_classificacao, {:optional, {:nullable, :string}}}, {"descricao", :descricao, :string}, {"impostos", :impostos, {:optional, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostos}}, {"indicador_total", :indicador_total, :scalar}, {"quantidade", :quantidade, :scalar}, {"unidade", :unidade, :string}, {"valor_total", :valor_total, :scalar}, {"valor_unitario", :valor_unitario, :scalar}, {"valor_desconto", :valor_desconto, {:optional, :scalar}}, {"outras_despesas", :outras_despesas, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroup"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostos do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_classificacao, :unset}, {:cofins, :unset}, {:funttel, :unset}, {:fust, :unset}, {:ibs_cbs, :unset}, {:icms, :unset}, {:pis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_classificacao => ((String.t() | nil) | :unset), :cofins => ((Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosCofinsVariant0.t() | nil) | :unset), :funttel => ((Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosFunttelVariant0.t() | nil) | :unset), :fust => ((Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosFustVariant0.t() | nil) | :unset), :ibs_cbs => ((Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0.t() | nil) | :unset), :icms => ((Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIcmsVariant0.t() | nil) | :unset), :pis => ((Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosPisVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_classificacao", :codigo_classificacao, {:optional, {:nullable, :string}}}, {"cofins", :cofins, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosCofinsVariant0}}}, {"funttel", :funttel, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosFunttelVariant0}}}, {"fust", :fust, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosFustVariant0}}}, {"ibs_cbs", :ibs_cbs, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0}}}, {"icms", :icms, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIcmsVariant0}}}, {"pis", :pis, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosPisVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostos"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosCofinsVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:situacao_tributaria, :unset}, {:valor, :unset}, {:valor_base_calculo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :situacao_tributaria => (String.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :scalar}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"valor", :valor, {:optional, :scalar}}, {"valor_base_calculo", :valor_base_calculo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosCofinsVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosFunttelVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:valor_base_calculo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}, {"valor_base_calculo", :valor_base_calculo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosFunttelVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosFustVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:valor_base_calculo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}, {"valor_base_calculo", :valor_base_calculo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosFustVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao_tributaria, :unset}, {:classificacao_tributaria_regular, :unset}, {:compra_governamental, :unset}, {:credito_presumido, :unset}, {:estorno_credito, :unset}, {:indicador_doacao, :unset}, {:situacao_tributaria, :unset}, {:situacao_tributaria_regular, :unset}, {:cbs, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao_tributaria => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :compra_governamental => ((Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0CompraGovernamentalVariant0.t() | nil) | :unset), :credito_presumido => (Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0CreditoPresumido.t() | :unset), :estorno_credito => (Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0EstornoCredito.t() | :unset), :indicador_doacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :situacao_tributaria => (String.t() | :unset), :situacao_tributaria_regular => (String.t() | :unset), :cbs => (Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0Cbs.t() | :unset), :ibs_estadual => (Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0IbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0IbsMunicipal.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao_tributaria", :classificacao_tributaria, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"compra_governamental", :compra_governamental, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0CompraGovernamentalVariant0}}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0CreditoPresumido}}, {"estorno_credito", :estorno_credito, {:optional, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0EstornoCredito}}, {"indicador_doacao", :indicador_doacao, {:optional, :scalar}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0Cbs}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0IbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0IbsMunicipal}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0CompraGovernamentalVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_reducao, :unset}, {:documentos_referenciados, :unset}, {:ente, :unset}, {:tipo_operacao, :unset}, {:referencias_dfe, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :documentos_referenciados => (([nil | boolean() | String.t() | integer() | Webmania.Number.t()] | nil) | :unset), :ente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :referencias_dfe => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_reducao", :aliquota_reducao, {:optional, :scalar}}, {"documentos_referenciados", :documentos_referenciados, {:optional, {:nullable, {:array, :scalar}}}}, {"ente", :ente, {:optional, :scalar}}, {"tipo_operacao", :tipo_operacao, {:optional, :scalar}}, {"referencias_dfe", :referencias_dfe, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0CompraGovernamentalVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0CreditoPresumido do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_cbs, :unset}, {:aliquota_ibs, :unset}, {:base_calculo, :unset}, {:classificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :classificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_cbs", :aliquota_cbs, {:optional, :scalar}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :scalar}}, {"base_calculo", :base_calculo, {:optional, :scalar}}, {"classificacao", :classificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0CreditoPresumido"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0EstornoCredito do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_cbs, :unset}, {:valor_ibs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_cbs", :valor_cbs, {:optional, :scalar}}, {"valor_ibs", :valor_ibs, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0EstornoCredito"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0Cbs do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0Cbs"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0IbsEstadual do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0IbsEstadual"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIbsCbsVariant0IbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosIbsCbsVariant0IbsMunicipal"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosIcmsVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_icms, :unset}, {:codigo_cfop, :unset}, {:origem, :unset}, {:situacao_tributaria, :unset}, {:valor_base_calculo, :unset}, {:valor_icms, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cfop => ((String.t() | nil) | :unset), :origem => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :situacao_tributaria => (String.t() | :unset), :valor_base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_icms", :aliquota_icms, {:optional, :scalar}}, {"codigo_cfop", :codigo_cfop, {:optional, {:nullable, :string}}}, {"origem", :origem, {:optional, :scalar}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"valor_base_calculo", :valor_base_calculo, {:optional, :scalar}}, {"valor_icms", :valor_icms, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosIcmsVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomItemGroupImpostosPisVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:situacao_tributaria, :unset}, {:valor, :unset}, {:valor_base_calculo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :situacao_tributaria => (String.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :scalar}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"valor", :valor, {:optional, :scalar}}, {"valor_base_calculo", :valor_base_calculo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomItemGroupImpostosPisVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadPgtoVincVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:pagamentos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:pagamentos => ([Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadPgtoVincVariant0PagamentosItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"pagamentos", :pagamentos, {:optional, {:array, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadPgtoVincVariant0PagamentosItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadPgtoVincVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadPgtoVincVariant0PagamentosItem do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj_base_psp, :unset}, {:cnpj_receb, :unset}, {:id_transacao, :unset}, {:n_pag, :unset}, {:tp_meio_pgto, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj_base_psp => String.t(), :cnpj_receb => String.t(), :id_transacao => String.t(), :n_pag => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :tp_meio_pgto => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj_base_psp", :cnpj_base_psp, :string}, {"cnpj_receb", :cnpj_receb, :string}, {"id_transacao", :id_transacao, :string}, {"n_pag", :n_pag, :scalar}, {"tp_meio_pgto", :tp_meio_pgto, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadPgtoVincVariant0PagamentosItem"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadSubstituicaoVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave_nfcom_substituida, :unset}, {:motivo, :unset}, {:nf_referenciada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave_nfcom_substituida => ((String.t() | nil) | :unset), :motivo => (String.t() | :unset), :nf_referenciada => ((Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadSubstituicaoVariant0NfReferenciadaVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave_nfcom_substituida", :chave_nfcom_substituida, {:optional, {:nullable, :string}}}, {"motivo", :motivo, {:optional, :string}}, {"nf_referenciada", :nf_referenciada, {:optional, {:nullable, Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadSubstituicaoVariant0NfReferenciadaVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadSubstituicaoVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterIssueNfcomPayloadSubstituicaoVariant0NfReferenciadaVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:competencia, :unset}, {:hash115, :unset}, {:modelo, :unset}, {:numero, :unset}, {:serie, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :competencia => (String.t() | :unset), :hash115 => ((String.t() | nil) | :unset), :modelo => (String.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"competencia", :competencia, {:optional, :string}}, {"hash115", :hash115, {:optional, {:nullable, :string}}}, {"modelo", :modelo, {:optional, :string}}, {"numero", :numero, {:optional, :scalar}}, {"serie", :serie, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterIssueNfcomPayloadSubstituicaoVariant0NfReferenciadaVariant0"
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
defmodule Webmania.Models.Api2NfcomIssuance.EmitterCancelNfcomPayload do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:justificativa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :justificativa => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"justificativa", :justificativa, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::EmitterCancelNfcomPayload"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomDocumentedGroup1906 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:autorizar_download, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:autorizar_download => ([Webmania.JSON.value()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"autorizar_download", :autorizar_download, {:optional, {:array, :value}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomDocumentedGroup1906"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomDocumentedGroup1953 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:indicador_pre_pago, :unset}, {:indicador_cessao_meios_rede, :unset}, {:indicador_nota_entrada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:indicador_pre_pago => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :indicador_cessao_meios_rede => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :indicador_nota_entrada => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"indicador_pre_pago", :indicador_pre_pago, {:optional, :scalar}}, {"indicador_cessao_meios_rede", :indicador_cessao_meios_rede, {:optional, :scalar}}, {"indicador_nota_entrada", :indicador_nota_entrada, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomDocumentedGroup1953"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomDocumentedGroup2114 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:substituicao, :unset}, {:substituicao_chave_nfcom_substituida, :unset}, {:substituicao_motivo, :unset}, {:substituicao_nf_referenciada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:substituicao => (%{String.t() => Webmania.JSON.value()} | :unset), :substituicao_chave_nfcom_substituida => (String.t() | :unset), :substituicao_motivo => (String.t() | :unset), :substituicao_nf_referenciada => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"substituicao", :substituicao, {:optional, :map}}, {"substituicao.chave_nfcom_substituida", :substituicao_chave_nfcom_substituida, {:optional, :string}}, {"substituicao.motivo", :substituicao_motivo, {:optional, :string}}, {"substituicao.nf_referenciada.*", :substituicao_nf_referenciada, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomDocumentedGroup2114"
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
defmodule Webmania.Models.Api2NfcomIssuance.NfcomDocumentedGroup2382 do
  @moduledoc "Nominal model from the pinned api2_nfcom_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:justificativa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :justificativa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"justificativa", :justificativa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfcom_issuance::NfcomDocumentedGroup2382"
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
