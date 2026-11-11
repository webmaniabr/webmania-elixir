# Generated. Run scripts/generate.py in the pinned Docker toolchain.
defmodule Webmania.Models.Api2NfseIssuance.EmitterError do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:status, :unset}, {:configured, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => (String.t() | :unset), :message => (String.t() | :unset), :status => (boolean() | :unset), :configured => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, {:optional, :string}}, {"message", :message, {:optional, :string}}, {"status", :status, {:optional, :boolean}}, {"configured", :configured, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterError"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceCode do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:descricao, :unset}, {:id_cnae, :unset}, {:codigo_tributacao, :unset}, {:aliquota_sugerida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :descricao => String.t(), :id_cnae => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_tributacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_sugerida => (Webmania.Models.Api2NfseIssuance.NfseServiceCodeAliquotaSugerida.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, :scalar}, {"descricao", :descricao, :string}, {"id_cnae", :id_cnae, {:optional, :scalar}}, {"codigo_tributacao", :codigo_tributacao, {:optional, :scalar}}, {"aliquota_sugerida", :aliquota_sugerida, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceCodeAliquotaSugerida}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceCode"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceCodeAliquotaSugerida do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:iss, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"iss", :iss, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceCodeAliquotaSugerida"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseProviderStatus do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:modelo, :unset}, {:versao, :unset}, {:ambientes, :unset}, {:autenticacao, :unset}, {:emissao, :unset}, {:funcoes, :unset}, {:pdf_nfse, :unset}, {:pdf_sincrono, :unset}, {:codigo_servico, :unset}, {:parametros_disponiveis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => boolean(), :modelo => (String.t() | :unset), :versao => (String.t() | :unset), :ambientes => [integer()], :autenticacao => [String.t()], :emissao => [String.t()], :funcoes => [String.t()], :pdf_nfse => boolean(), :pdf_sincrono => boolean(), :codigo_servico => ([Webmania.Models.Api2NfseIssuance.NfseServiceCode.t()] | :unset), :parametros_disponiveis => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, :boolean}, {"modelo", :modelo, {:optional, :string}}, {"versao", :versao, {:optional, :string}}, {"ambientes", :ambientes, {:array, :i64}}, {"autenticacao", :autenticacao, {:array, :string}}, {"emissao", :emissao, {:array, :string}}, {"funcoes", :funcoes, {:array, :string}}, {"pdf_nfse", :pdf_nfse, :boolean}, {"pdf_sincrono", :pdf_sincrono, :boolean}, {"codigo_servico", :codigo_servico, {:optional, {:array, Webmania.Models.Api2NfseIssuance.NfseServiceCode}}}, {"parametros_disponiveis", :parametros_disponiveis, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseProviderStatus"
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
defmodule Webmania.Models.Api2NfseIssuance.NfcomServiceStatus do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:operacional, :unset}, {:mensagem, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:operacional => boolean(), :mensagem => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"operacional", :operacional, :boolean}, {"mensagem", :mensagem, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfcomServiceStatus"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:chave, :unset}, {:numero_lote, :unset}, {:serie_lote, :unset}, {:protocolo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:serie_rps, :unset}, {:numero_rps, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:atualizado_em, :unset}, {:motivo, :unset}, {:quantidade_rps, :unset}, {:nfse_substituida, :unset}, {:info_nfse, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :uuid => String.t(), :modelo => String.t(), :status => String.t(), :chave => (String.t() | :unset), :numero_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :serie_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :xml => (String.t() | :unset), :xml_cancelamento => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :atualizado_em => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfse_substituida => (Webmania.Models.Api2NfseIssuance.NfseFiscalResponseNfseSubstituida.t() | :unset), :info_nfse => ([Webmania.Models.Api2NfseIssuance.NfseFiscalResponseInfoNfseItem.t()] | :unset), :log => (Webmania.Models.Api2NfseIssuance.NfseFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"uuid", :uuid, :string}, {"modelo", :modelo, :string}, {"status", :status, :string}, {"chave", :chave, {:optional, :string}}, {"numero_lote", :numero_lote, {:optional, :scalar}}, {"serie_lote", :serie_lote, {:optional, :scalar}}, {"protocolo", :protocolo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"serie_rps", :serie_rps, {:optional, :scalar}}, {"numero_rps", :numero_rps, {:optional, :scalar}}, {"xml", :xml, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}, {"atualizado_em", :atualizado_em, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"quantidade_rps", :quantidade_rps, {:optional, :scalar}}, {"nfse_substituida", :nfse_substituida, {:optional, Webmania.Models.Api2NfseIssuance.NfseFiscalResponseNfseSubstituida}}, {"info_nfse", :info_nfse, {:optional, {:array, Webmania.Models.Api2NfseIssuance.NfseFiscalResponseInfoNfseItem}}}, {"log", :log, {:optional, Webmania.Models.Api2NfseIssuance.NfseFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseFiscalResponse"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseFiscalResponseNfseSubstituida do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseFiscalResponseNfseSubstituida"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseFiscalResponseInfoNfseItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:motivo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:xml, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :modelo => (String.t() | :unset), :status => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :xml => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseFiscalResponseInfoNfseItem"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseFiscalResponseLog"
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
defmodule Webmania.Models.Api2NfseIssuance.NfcomPaymentEvent do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_nfcom, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => ((String.t() | nil) | :unset), :codigo => ((String.t() | nil) | :unset), :motivo => ((String.t() | nil) | :unset), :protocolo_evento => ((String.t() | nil) | :unset), :protocolo_nfcom => ((String.t() | nil) | :unset), :protocolo_vinculacao => ((String.t() | nil) | :unset), :data_evento => ((String.t() | nil) | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pagamento => ((Webmania.Models.Api2NfseIssuance.NfcomPaymentEventPagamentoVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, {:nullable, :string}}}, {"codigo", :codigo, {:optional, {:nullable, :string}}}, {"motivo", :motivo, {:optional, {:nullable, :string}}}, {"protocolo_evento", :protocolo_evento, {:optional, {:nullable, :string}}}, {"protocolo_nfcom", :protocolo_nfcom, {:optional, {:nullable, :string}}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, {:nullable, :string}}}, {"data_evento", :data_evento, {:optional, {:nullable, :string}}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}, {"pagamento", :pagamento, {:optional, {:nullable, Webmania.Models.Api2NfseIssuance.NfcomPaymentEventPagamentoVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfcomPaymentEvent"
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
defmodule Webmania.Models.Api2NfseIssuance.NfcomPaymentEventPagamentoVariant0 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nPag, :unset}, {:idTransacao, :unset}, {:tpMeioPgto, :unset}, {:CNPJReceb, :unset}, {:CNPJBasePSP, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nPag => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :idTransacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tpMeioPgto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJReceb => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJBasePSP => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nPag", :nPag, {:optional, :scalar}}, {"idTransacao", :idTransacao, {:optional, :scalar}}, {"tpMeioPgto", :tpMeioPgto, {:optional, :scalar}}, {"CNPJReceb", :CNPJReceb, {:optional, :scalar}}, {"CNPJBasePSP", :CNPJBasePSP, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfcomPaymentEventPagamentoVariant0"
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
defmodule Webmania.Models.Api2NfseIssuance.NfcomFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:nfcom, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:contingencia, :unset}, {:xml, :unset}, {:danfecom, :unset}, {:xml_cancelamento, :unset}, {:protocolo, :unset}, {:data_autorizacao, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:consulta_eventos_pagamento, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfcom => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (String.t() | :unset), :modelo => String.t(), :contingencia => (boolean() | :unset), :xml => (String.t() | :unset), :danfecom => (String.t() | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :protocolo => (String.t() | :unset), :data_autorizacao => ((String.t() | nil) | :unset), :eventos_pagamento => ([Webmania.Models.Api2NfseIssuance.NfcomPaymentEvent.t()] | :unset), :total_eventos => (integer() | :unset), :consulta_eventos_pagamento => (String.t() | :unset), :log => (Webmania.Models.Api2NfseIssuance.NfcomFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"nfcom", :nfcom, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :string}}, {"modelo", :modelo, :string}, {"contingencia", :contingencia, {:optional, :boolean}}, {"xml", :xml, {:optional, :string}}, {"danfecom", :danfecom, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"protocolo", :protocolo, {:optional, :string}}, {"data_autorizacao", :data_autorizacao, {:optional, {:nullable, :string}}}, {"eventos_pagamento", :eventos_pagamento, {:optional, {:array, Webmania.Models.Api2NfseIssuance.NfcomPaymentEvent}}}, {"total_eventos", :total_eventos, {:optional, :i64}}, {"consulta_eventos_pagamento", :consulta_eventos_pagamento, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api2NfseIssuance.NfcomFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfcomFiscalResponse"
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
defmodule Webmania.Models.Api2NfseIssuance.NfcomFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfcomFiscalResponseLog"
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
defmodule Webmania.Models.Api2NfseIssuance.NfcomPaymentEvents do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:status, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :status => String.t(), :eventos_pagamento => [Webmania.Models.Api2NfseIssuance.NfcomPaymentEvent.t()], :total_eventos => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"status", :status, :string}, {"eventos_pagamento", :eventos_pagamento, {:array, Webmania.Models.Api2NfseIssuance.NfcomPaymentEvent}}, {"total_eventos", :total_eventos, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfcomPaymentEvents"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseManifestationRequest do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:chave, :unset}, {:manifestador, :unset}, {:evento, :unset}, {:motivo_rejeicao, :unset}, {:justificativa_rejeicao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :chave => String.t(), :manifestador => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :evento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :motivo_rejeicao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :justificativa_rejeicao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, :scalar}, {"chave", :chave, :string}, {"manifestador", :manifestador, :scalar}, {"evento", :evento, :scalar}, {"motivo_rejeicao", :motivo_rejeicao, {:optional, :scalar}}, {"justificativa_rejeicao", :justificativa_rejeicao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseManifestationRequest"
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
defmodule Webmania.Models.Api2NfseIssuance.CteFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:cte, :unset}, {:epec, :unset}, {:dacte, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:consulta_eventos_pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2NfseIssuance.CteFiscalResponseLog.t() | :unset), :cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :epec => (boolean() | :unset), :dacte => ((String.t() | nil) | :unset), :eventos_pagamento => ([Webmania.Models.Api2NfseIssuance.CteFiscalResponseEventosPagamentoItem.t()] | :unset), :total_eventos => (integer() | :unset), :consulta_eventos_pagamento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2NfseIssuance.CteFiscalResponseLog}}, {"cte", :cte, {:optional, :scalar}}, {"epec", :epec, {:optional, :boolean}}, {"dacte", :dacte, {:optional, {:nullable, :string}}}, {"eventos_pagamento", :eventos_pagamento, {:optional, {:array, Webmania.Models.Api2NfseIssuance.CteFiscalResponseEventosPagamentoItem}}}, {"total_eventos", :total_eventos, {:optional, :i64}}, {"consulta_eventos_pagamento", :consulta_eventos_pagamento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::CteFiscalResponse"
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
defmodule Webmania.Models.Api2NfseIssuance.CteFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::CteFiscalResponseLog"
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
defmodule Webmania.Models.Api2NfseIssuance.CteFiscalResponseEventosPagamentoItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_cte, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_vinculacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, :scalar}}, {"codigo", :codigo, {:optional, :scalar}}, {"motivo", :motivo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :scalar}}, {"protocolo_cte", :protocolo_cte, {:optional, :scalar}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :scalar}}, {"data_evento", :data_evento, {:optional, :scalar}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::CteFiscalResponseEventosPagamentoItem"
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
defmodule Webmania.Models.Api2NfseIssuance.MdfeFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:mdfe, :unset}, {:damdfe, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2NfseIssuance.MdfeFiscalResponseLog.t() | :unset), :mdfe => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :damdfe => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2NfseIssuance.MdfeFiscalResponseLog}}, {"mdfe", :mdfe, {:optional, :scalar}}, {"damdfe", :damdfe, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::MdfeFiscalResponse"
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
defmodule Webmania.Models.Api2NfseIssuance.MdfeFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::MdfeFiscalResponseLog"
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
defmodule Webmania.Models.Api2NfseIssuance.DceFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:numero, :unset}, {:dace, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2NfseIssuance.DceFiscalResponseLog.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :dace => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2NfseIssuance.DceFiscalResponseLog}}, {"numero", :numero, {:optional, :scalar}}, {"dace", :dace, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::DceFiscalResponse"
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
defmodule Webmania.Models.Api2NfseIssuance.DceFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::DceFiscalResponseLog"
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
defmodule Webmania.Models.Api2NfseIssuance.FiscalEventResponse do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:evento, :unset}, {:status, :unset}, {:motivo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:dacce, :unset}, {:log, :unset}, {:codigo, :unset}, {:protocolo_evento, :unset}, {:data_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :chave => (String.t() | :unset), :evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => ((String.t() | nil) | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :dacce => (String.t() | :unset), :log => (Webmania.Models.Api2NfseIssuance.FiscalEventResponseLog.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (String.t() | :unset), :data_evento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"evento", :evento, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, {:nullable, :string}}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"dacce", :dacce, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api2NfseIssuance.FiscalEventResponseLog}}, {"codigo", :codigo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :string}}, {"data_evento", :data_evento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::FiscalEventResponse"
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
defmodule Webmania.Models.Api2NfseIssuance.FiscalEventResponseLog do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::FiscalEventResponseLog"
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
defmodule Webmania.Models.Api2NfseIssuance.CtePaymentEvents do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:status, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => (String.t() | :unset), :status => String.t(), :eventos_pagamento => [Webmania.Models.Api2NfseIssuance.CtePaymentEventsEventosPagamentoItem.t()], :total_eventos => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, :string}}, {"status", :status, :string}, {"eventos_pagamento", :eventos_pagamento, {:array, Webmania.Models.Api2NfseIssuance.CtePaymentEventsEventosPagamentoItem}}, {"total_eventos", :total_eventos, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::CtePaymentEvents"
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
defmodule Webmania.Models.Api2NfseIssuance.CtePaymentEventsEventosPagamentoItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_cte, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_vinculacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, :scalar}}, {"codigo", :codigo, {:optional, :scalar}}, {"motivo", :motivo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :scalar}}, {"protocolo_cte", :protocolo_cte, {:optional, :scalar}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :scalar}}, {"data_evento", :data_evento, {:optional, :scalar}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::CtePaymentEventsEventosPagamentoItem"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayload do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:ambiente, :unset}, {:csv, :unset}, {:data_agendamento, :unset}, {:linha_csv, :unset}, {:origem, :unset}, {:rps, :unset}, {:sincrono, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :csv => (String.t() | :unset), :data_agendamento => (String.t() | :unset), :linha_csv => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :origem => (String.t() | :unset), :rps => ([Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItem.t()] | :unset), :sincrono => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"ambiente", :ambiente, :scalar}, {"csv", :csv, {:optional, :string}}, {"data_agendamento", :data_agendamento, {:optional, :string}}, {"linha_csv", :linha_csv, {:optional, :scalar}}, {"origem", :origem, {:optional, :string}}, {"rps", :rps, {:optional, {:array, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItem}}}, {"sincrono", :sincrono, {:optional, :scalar}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayload"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:condicao_pagamento, :unset}, {:construcao_civil, :unset}, {:destinatario, :unset}, {:natureza_operacao, :unset}, {:outras_informacoes, :unset}, {:regime_especial_tributacao, :unset}, {:servico, :unset}, {:tomador, :unset}, {:atividade_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:condicao_pagamento => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemCondicaoPagamento.t() | :unset), :construcao_civil => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemConstrucaoCivil.t() | :unset), :destinatario => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatario.t() | :unset), :natureza_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :outras_informacoes => (String.t() | :unset), :regime_especial_tributacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :servico => Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServico.t(), :tomador => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemTomador.t() | :unset), :atividade_evento => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemAtividadeEvento.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"condicao_pagamento", :condicao_pagamento, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemCondicaoPagamento}}, {"construcao_civil", :construcao_civil, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemConstrucaoCivil}}, {"destinatario", :destinatario, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatario}}, {"natureza_operacao", :natureza_operacao, {:optional, :scalar}}, {"outras_informacoes", :outras_informacoes, {:optional, :string}}, {"regime_especial_tributacao", :regime_especial_tributacao, {:optional, :scalar}}, {"servico", :servico, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServico}, {"tomador", :tomador, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemTomador}}, {"atividade_evento", :atividade_evento, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemAtividadeEvento}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItem"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemCondicaoPagamento do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:condicao, :unset}, {:parcelas, :unset}, {:qtd_parcela, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:condicao => (String.t() | :unset), :parcelas => ([Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemCondicaoPagamentoParcelasItem.t()] | :unset), :qtd_parcela => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"condicao", :condicao, {:optional, :string}}, {"parcelas", :parcelas, {:optional, {:array, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemCondicaoPagamentoParcelasItem}}}, {"qtd_parcela", :qtd_parcela, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemCondicaoPagamento"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemCondicaoPagamentoParcelasItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_vencimento, :unset}, {:parcela, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_vencimento => (String.t() | :unset), :parcela => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_vencimento", :data_vencimento, {:optional, :string}}, {"parcela", :parcela, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemCondicaoPagamentoParcelasItem"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemConstrucaoCivil do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:art, :unset}, {:cno, :unset}, {:codigo_obra, :unset}, {:inscricao_imobiliaria_fiscal, :unset}, {:endereco, :unset}, {:numero, :unset}, {:complemento, :unset}, {:bairro, :unset}, {:cep, :unset}, {:matricula_obra, :unset}, {:numero_encapsulamento, :unset}, {:uf_local_obra, :unset}, {:cidade_local_obra, :unset}, {:nome, :unset}, {:cidade, :unset}, {:uf, :unset}, {:inscricao_imobiliaria, :unset}, {:exterior, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:art => (String.t() | :unset), :cno => (String.t() | :unset), :codigo_obra => (String.t() | :unset), :inscricao_imobiliaria_fiscal => (String.t() | :unset), :endereco => (String.t() | :unset), :numero => (String.t() | :unset), :complemento => (String.t() | :unset), :bairro => (String.t() | :unset), :cep => (String.t() | :unset), :matricula_obra => (String.t() | :unset), :numero_encapsulamento => (String.t() | :unset), :uf_local_obra => (String.t() | :unset), :cidade_local_obra => (String.t() | :unset), :nome => (String.t() | :unset), :cidade => (String.t() | :unset), :uf => (String.t() | :unset), :inscricao_imobiliaria => (String.t() | :unset), :exterior => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"art", :art, {:optional, :string}}, {"cno", :cno, {:optional, :string}}, {"codigo_obra", :codigo_obra, {:optional, :string}}, {"inscricao_imobiliaria_fiscal", :inscricao_imobiliaria_fiscal, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"matricula_obra", :matricula_obra, {:optional, :string}}, {"numero_encapsulamento", :numero_encapsulamento, {:optional, :string}}, {"uf_local_obra", :uf_local_obra, {:optional, :string}}, {"cidade_local_obra", :cidade_local_obra, {:optional, :string}}, {"nome", :nome, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"inscricao_imobiliaria", :inscricao_imobiliaria, {:optional, :string}}, {"exterior", :exterior, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemConstrucaoCivil"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatario do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:id_estrangeiro, :unset}, {:indicador_nao_nif, :unset}, {:nome, :unset}, {:telefone, :unset}, {:nif, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatarioEndereco.t() | :unset), :id_estrangeiro => (String.t() | :unset), :indicador_nao_nif => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nome => (String.t() | :unset), :telefone => (String.t() | :unset), :nif => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatarioEndereco}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"indicador_nao_nif", :indicador_nao_nif, {:optional, :scalar}}, {"nome", :nome, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"nif", :nif, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemDestinatario"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatarioEndereco do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:complemento, :unset}, {:endereco_exterior, :unset}, {:endereco_nacional, :unset}, {:logradouro, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :complemento => (String.t() | :unset), :endereco_exterior => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior.t() | :unset), :endereco_nacional => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional.t() | :unset), :logradouro => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"endereco_exterior", :endereco_exterior, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior}}, {"endereco_nacional", :endereco_nacional, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional}}, {"logradouro", :logradouro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemDestinatarioEndereco"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cidade, :unset}, {:codigo_pais, :unset}, {:codigo_postal, :unset}, {:estado_provincia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cidade => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :codigo_postal => (String.t() | :unset), :estado_provincia => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cidade", :cidade, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"codigo_postal", :codigo_postal, {:optional, :string}}, {"estado_provincia", :estado_provincia, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:codigo_municipio_ibge, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :codigo_municipio_ibge => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"codigo_municipio_ibge", :codigo_municipio_ibge, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServico do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cfps, :unset}, {:cidade_local_prestacao, :unset}, {:classe_imposto, :unset}, {:classificacao_tributaria, :unset}, {:cod_indicador_operacao, :unset}, {:codigo_cnae, :unset}, {:codigo_interno, :unset}, {:codigo_nbs, :unset}, {:codigo_pais_prestacao, :unset}, {:codigo_servico, :unset}, {:codigo_tributacao_municipio, :unset}, {:consumidor_final, :unset}, {:data_competencia, :unset}, {:deducao_reducao, :unset}, {:deducoes, :unset}, {:desconto_condicionado, :unset}, {:desconto_incondicionado, :unset}, {:discriminacao, :unset}, {:ente_governamental, :unset}, {:exigibilidade_iss, :unset}, {:id_cnae, :unset}, {:imovel, :unset}, {:impostos, :unset}, {:indicador_destinatario, :unset}, {:indicador_zfm_alc, :unset}, {:informacoes_complementares, :unset}, {:intermediario, :unset}, {:iss_retido, :unset}, {:local_incidencia, :unset}, {:municipio_incidencia, :unset}, {:natureza_operacao, :unset}, {:nfses_referenciadas, :unset}, {:numero_processo, :unset}, {:outras_retencoes, :unset}, {:reembolso_repasse, :unset}, {:responsavel_retencao_iss, :unset}, {:situacao_tributaria, :unset}, {:tipo_operacao, :unset}, {:tipo_tributacao, :unset}, {:tributacao, :unset}, {:uf_local_prestacao, :unset}, {:valor_nao_base_calculo, :unset}, {:valor_servicos, :unset}, {:itens, :unset}, {:local_prestacao, :unset}, {:cep_local_prestacao, :unset}, {:justificativa_deducoes, :unset}, {:descricao_impostos, :unset}, {:ie, :unset}, {:regime_recolhimento, :unset}, {:forma_recolhimento, :unset}, {:endereco_local_prestacao, :unset}, {:identificador_beneficio_municipal, :unset}, {:tributacao_iss, :unset}, {:tipo_imunidade, :unset}, {:pis_cofins_retido, :unset}, {:aliquota_tributos_aproximados, :unset}, {:modo_prestacao, :unset}, {:vinculo_prestacao, :unset}, {:tipo_moeda, :unset}, {:valor_servico_moeda, :unset}, {:mecanismo_apoio_comex_prestador, :unset}, {:mecanismo_apoio_comex_tomador, :unset}, {:movimento_temporario_bens, :unset}, {:numero_di, :unset}, {:numero_re, :unset}, {:mdic, :unset}, {:valor_inicial_cobrado, :unset}, {:valor_final_cobrado, :unset}, {:valor_multa, :unset}, {:valor_juros, :unset}, {:valor_ipi, :unset}, {:pagamento_parcelado_antecipado, :unset}, {:ncm, :unset}, {:valor_recebido, :unset}, {:carga_tributaria, :unset}, {:fonte_carga_tributaria, :unset}, {:finalidade, :unset}, {:outras_informacoes, :unset}, {:condicao_pagamento, :unset}, {:destinatario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cfps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cidade_local_prestacao => (String.t() | :unset), :classe_imposto => (String.t() | :unset), :classificacao_tributaria => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cod_indicador_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cnae => (String.t() | :unset), :codigo_interno => (String.t() | :unset), :codigo_nbs => (String.t() | :unset), :codigo_pais_prestacao => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :codigo_tributacao_municipio => (String.t() | :unset), :consumidor_final => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_competencia => (String.t() | :unset), :deducao_reducao => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducao.t() | :unset), :deducoes => (Webmania.JSON.value() | :unset), :desconto_condicionado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :desconto_incondicionado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :discriminacao => String.t(), :ente_governamental => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoEnteGovernamental.t() | :unset), :exigibilidade_iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :id_cnae => (String.t() | :unset), :imovel => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovel.t() | :unset), :impostos => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostos.t() | :unset), :indicador_destinatario => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :indicador_zfm_alc => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :informacoes_complementares => (String.t() | :unset), :intermediario => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoIntermediario.t() | :unset), :iss_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :local_incidencia => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :municipio_incidencia => (String.t() | :unset), :natureza_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfses_referenciadas => ([String.t()] | :unset), :numero_processo => (String.t() | :unset), :outras_retencoes => (Webmania.JSON.value() | :unset), :reembolso_repasse => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasse.t() | :unset), :responsavel_retencao_iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :situacao_tributaria => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo_operacao => (String.t() | :unset), :tipo_tributacao => (String.t() | :unset), :tributacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uf_local_prestacao => (String.t() | :unset), :valor_nao_base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_servicos => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :itens => ([Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoItensItem.t()] | :unset), :local_prestacao => (String.t() | :unset), :cep_local_prestacao => (String.t() | :unset), :justificativa_deducoes => (String.t() | :unset), :descricao_impostos => (String.t() | :unset), :ie => (String.t() | :unset), :regime_recolhimento => (String.t() | :unset), :forma_recolhimento => (String.t() | :unset), :endereco_local_prestacao => (String.t() | :unset), :identificador_beneficio_municipal => (String.t() | :unset), :tributacao_iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo_imunidade => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pis_cofins_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_tributos_aproximados => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modo_prestacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :vinculo_prestacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo_moeda => (String.t() | :unset), :valor_servico_moeda => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :mecanismo_apoio_comex_prestador => (String.t() | :unset), :mecanismo_apoio_comex_tomador => (String.t() | :unset), :movimento_temporario_bens => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero_di => (String.t() | :unset), :numero_re => (String.t() | :unset), :mdic => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_inicial_cobrado => (String.t() | :unset), :valor_final_cobrado => (String.t() | :unset), :valor_multa => (String.t() | :unset), :valor_juros => (String.t() | :unset), :valor_ipi => (String.t() | :unset), :pagamento_parcelado_antecipado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ncm => (String.t() | :unset), :valor_recebido => (String.t() | :unset), :carga_tributaria => (String.t() | :unset), :fonte_carga_tributaria => (String.t() | :unset), :finalidade => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :outras_informacoes => (String.t() | :unset), :condicao_pagamento => (%{String.t() => Webmania.JSON.value()} | :unset), :destinatario => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cfps", :cfps, {:optional, :scalar}}, {"cidade_local_prestacao", :cidade_local_prestacao, {:optional, :string}}, {"classe_imposto", :classe_imposto, {:optional, :string}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :scalar}}, {"cod_indicador_operacao", :cod_indicador_operacao, {:optional, :scalar}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"codigo_interno", :codigo_interno, {:optional, :string}}, {"codigo_nbs", :codigo_nbs, {:optional, :string}}, {"codigo_pais_prestacao", :codigo_pais_prestacao, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"codigo_tributacao_municipio", :codigo_tributacao_municipio, {:optional, :string}}, {"consumidor_final", :consumidor_final, {:optional, :scalar}}, {"data_competencia", :data_competencia, {:optional, :string}}, {"deducao_reducao", :deducao_reducao, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducao}}, {"deducoes", :deducoes, {:optional, :value}}, {"desconto_condicionado", :desconto_condicionado, {:optional, :scalar}}, {"desconto_incondicionado", :desconto_incondicionado, {:optional, :scalar}}, {"discriminacao", :discriminacao, :string}, {"ente_governamental", :ente_governamental, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoEnteGovernamental}}, {"exigibilidade_iss", :exigibilidade_iss, {:optional, :scalar}}, {"id_cnae", :id_cnae, {:optional, :string}}, {"imovel", :imovel, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovel}}, {"impostos", :impostos, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostos}}, {"indicador_destinatario", :indicador_destinatario, {:optional, :scalar}}, {"indicador_zfm_alc", :indicador_zfm_alc, {:optional, :scalar}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}, {"intermediario", :intermediario, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoIntermediario}}, {"iss_retido", :iss_retido, {:optional, :scalar}}, {"local_incidencia", :local_incidencia, {:optional, :scalar}}, {"municipio_incidencia", :municipio_incidencia, {:optional, :string}}, {"natureza_operacao", :natureza_operacao, {:optional, :scalar}}, {"nfses_referenciadas", :nfses_referenciadas, {:optional, {:array, :string}}}, {"numero_processo", :numero_processo, {:optional, :string}}, {"outras_retencoes", :outras_retencoes, {:optional, :value}}, {"reembolso_repasse", :reembolso_repasse, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasse}}, {"responsavel_retencao_iss", :responsavel_retencao_iss, {:optional, :scalar}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :scalar}}, {"tipo_operacao", :tipo_operacao, {:optional, :string}}, {"tipo_tributacao", :tipo_tributacao, {:optional, :string}}, {"tributacao", :tributacao, {:optional, :scalar}}, {"uf_local_prestacao", :uf_local_prestacao, {:optional, :string}}, {"valor_nao_base_calculo", :valor_nao_base_calculo, {:optional, :scalar}}, {"valor_servicos", :valor_servicos, :scalar}, {"itens", :itens, {:optional, {:array, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoItensItem}}}, {"local_prestacao", :local_prestacao, {:optional, :string}}, {"cep_local_prestacao", :cep_local_prestacao, {:optional, :string}}, {"justificativa_deducoes", :justificativa_deducoes, {:optional, :string}}, {"descricao_impostos", :descricao_impostos, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"regime_recolhimento", :regime_recolhimento, {:optional, :string}}, {"forma_recolhimento", :forma_recolhimento, {:optional, :string}}, {"endereco_local_prestacao", :endereco_local_prestacao, {:optional, :string}}, {"identificador_beneficio_municipal", :identificador_beneficio_municipal, {:optional, :string}}, {"tributacao_iss", :tributacao_iss, {:optional, :scalar}}, {"tipo_imunidade", :tipo_imunidade, {:optional, :scalar}}, {"pis_cofins_retido", :pis_cofins_retido, {:optional, :scalar}}, {"aliquota_tributos_aproximados", :aliquota_tributos_aproximados, {:optional, :scalar}}, {"modo_prestacao", :modo_prestacao, {:optional, :scalar}}, {"vinculo_prestacao", :vinculo_prestacao, {:optional, :scalar}}, {"tipo_moeda", :tipo_moeda, {:optional, :string}}, {"valor_servico_moeda", :valor_servico_moeda, {:optional, :scalar}}, {"mecanismo_apoio_comex_prestador", :mecanismo_apoio_comex_prestador, {:optional, :string}}, {"mecanismo_apoio_comex_tomador", :mecanismo_apoio_comex_tomador, {:optional, :string}}, {"movimento_temporario_bens", :movimento_temporario_bens, {:optional, :scalar}}, {"numero_di", :numero_di, {:optional, :string}}, {"numero_re", :numero_re, {:optional, :string}}, {"mdic", :mdic, {:optional, :scalar}}, {"valor_inicial_cobrado", :valor_inicial_cobrado, {:optional, :string}}, {"valor_final_cobrado", :valor_final_cobrado, {:optional, :string}}, {"valor_multa", :valor_multa, {:optional, :string}}, {"valor_juros", :valor_juros, {:optional, :string}}, {"valor_ipi", :valor_ipi, {:optional, :string}}, {"pagamento_parcelado_antecipado", :pagamento_parcelado_antecipado, {:optional, :scalar}}, {"ncm", :ncm, {:optional, :string}}, {"valor_recebido", :valor_recebido, {:optional, :string}}, {"carga_tributaria", :carga_tributaria, {:optional, :string}}, {"fonte_carga_tributaria", :fonte_carga_tributaria, {:optional, :string}}, {"finalidade", :finalidade, {:optional, :scalar}}, {"outras_informacoes", :outras_informacoes, {:optional, :string}}, {"condicao_pagamento", :condicao_pagamento, {:optional, :map}}, {"destinatario", :destinatario, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServico"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducao do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:documentos, :unset}, {:percentual, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:documentos => ([Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem.t()] | :unset), :percentual => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"documentos", :documentos, {:optional, {:array, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem}}}, {"percentual", :percentual, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoDeducaoReducao"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave_nfe, :unset}, {:chave_nfse, :unset}, {:data_emissao, :unset}, {:descricao_outras_deducoes, :unset}, {:doc_fiscal, :unset}, {:doc_nao_fiscal, :unset}, {:fornecedor, :unset}, {:nf_nfs, :unset}, {:nfse_municipal, :unset}, {:tipo_deducao_reducao, :unset}, {:valor_deducao, :unset}, {:valor_dedutivel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave_nfe => (String.t() | :unset), :chave_nfse => (String.t() | :unset), :data_emissao => (String.t() | :unset), :descricao_outras_deducoes => (String.t() | :unset), :doc_fiscal => (String.t() | :unset), :doc_nao_fiscal => (String.t() | :unset), :fornecedor => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor.t() | :unset), :nf_nfs => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs.t() | :unset), :nfse_municipal => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal.t() | :unset), :tipo_deducao_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_deducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_dedutivel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave_nfe", :chave_nfe, {:optional, :string}}, {"chave_nfse", :chave_nfse, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"descricao_outras_deducoes", :descricao_outras_deducoes, {:optional, :string}}, {"doc_fiscal", :doc_fiscal, {:optional, :string}}, {"doc_nao_fiscal", :doc_nao_fiscal, {:optional, :string}}, {"fornecedor", :fornecedor, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor}}, {"nf_nfs", :nf_nfs, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs}}, {"nfse_municipal", :nfse_municipal, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal}}, {"tipo_deducao_reducao", :tipo_deducao_reducao, {:optional, :scalar}}, {"valor_deducao", :valor_deducao, {:optional, :scalar}}, {"valor_dedutivel", :valor_dedutivel, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:caepf, :unset}, {:cep, :unset}, {:cep_exterior, :unset}, {:cidade, :unset}, {:cnpj, :unset}, {:codigo_municipio, :unset}, {:codigo_pais, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:estado, :unset}, {:id_estrangeiro, :unset}, {:im, :unset}, {:motivo_sem_nif, :unset}, {:nome_completo, :unset}, {:nome_estrangeiro, :unset}, {:numero, :unset}, {:razao_social, :unset}, {:telefone, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :caepf => (String.t() | :unset), :cep => (String.t() | :unset), :cep_exterior => (String.t() | :unset), :cidade => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_municipio => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :complemento => (String.t() | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (String.t() | :unset), :estado => (String.t() | :unset), :id_estrangeiro => (String.t() | :unset), :im => (String.t() | :unset), :motivo_sem_nif => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nome_completo => (String.t() | :unset), :nome_estrangeiro => (String.t() | :unset), :numero => (String.t() | :unset), :razao_social => (String.t() | :unset), :telefone => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"caepf", :caepf, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cep_exterior", :cep_exterior, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"estado", :estado, {:optional, :string}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"motivo_sem_nif", :motivo_sem_nif, {:optional, :scalar}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"nome_estrangeiro", :nome_estrangeiro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:modelo, :unset}, {:numero, :unset}, {:serie, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:modelo => (String.t() | :unset), :numero => (String.t() | :unset), :serie => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"modelo", :modelo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"serie", :serie, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_municipio, :unset}, {:codigo_verificacao, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_municipio => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoEnteGovernamental do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:tipo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => (String.t() | :unset), :tipo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, {:optional, :string}}, {"tipo", :tipo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoEnteGovernamental"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovel do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:codigo_cib, :unset}, {:codigo_obra, :unset}, {:codigo_pais, :unset}, {:codigo_postal, :unset}, {:complemento, :unset}, {:endereco, :unset}, {:estado_provincia, :unset}, {:inscricao_imobiliaria, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :codigo_cib => (String.t() | :unset), :codigo_obra => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :codigo_postal => (String.t() | :unset), :complemento => (String.t() | :unset), :endereco => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovelEndereco.t() | :unset), :estado_provincia => (String.t() | :unset), :inscricao_imobiliaria => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"codigo_cib", :codigo_cib, {:optional, :string}}, {"codigo_obra", :codigo_obra, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"codigo_postal", :codigo_postal, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"endereco", :endereco, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovelEndereco}}, {"estado_provincia", :estado_provincia, {:optional, :string}}, {"inscricao_imobiliaria", :inscricao_imobiliaria, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImovel"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovelEndereco do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:complemento, :unset}, {:endereco_exterior, :unset}, {:endereco_nacional, :unset}, {:logradouro, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :complemento => (String.t() | :unset), :endereco_exterior => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior.t() | :unset), :endereco_nacional => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional.t() | :unset), :logradouro => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"endereco_exterior", :endereco_exterior, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior}}, {"endereco_nacional", :endereco_nacional, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional}}, {"logradouro", :logradouro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImovelEndereco"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cidade, :unset}, {:codigo_pais, :unset}, {:codigo_postal, :unset}, {:estado_provincia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cidade => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :codigo_postal => (String.t() | :unset), :estado_provincia => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cidade", :cidade, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"codigo_postal", :codigo_postal, {:optional, :string}}, {"estado_provincia", :estado_provincia, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:codigo_municipio_ibge, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :codigo_municipio_ibge => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"codigo_municipio_ibge", :codigo_municipio_ibge, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostos do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cofins, :unset}, {:csll, :unset}, {:ibs_cbs, :unset}, {:inss, :unset}, {:ir, :unset}, {:iss, :unset}, {:pis, :unset}, {:piscofins, :unset}, {:totTrib, :unset}, {:tot_trib, :unset}, {:classe_imposto, :unset}, {:iss_simples_nacional, :unset}, {:reducao, :unset}, {:cst_pis_cofins, :unset}, {:cp, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :csll => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ibs_cbs => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbs.t() | :unset), :inss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ir => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :piscofins => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosPiscofins.t() | :unset), :totTrib => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib.t() | :unset), :tot_trib => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib2.t() | :unset), :classe_imposto => (String.t() | :unset), :iss_simples_nacional => (String.t() | :unset), :reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cst_pis_cofins => (String.t() | :unset), :cp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cofins", :cofins, {:optional, :scalar}}, {"csll", :csll, {:optional, :scalar}}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbs}}, {"inss", :inss, {:optional, :scalar}}, {"ir", :ir, {:optional, :scalar}}, {"iss", :iss, {:optional, :scalar}}, {"pis", :pis, {:optional, :scalar}}, {"piscofins", :piscofins, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosPiscofins}}, {"totTrib", :totTrib, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib}}, {"tot_trib", :tot_trib, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib2}}, {"classe_imposto", :classe_imposto, {:optional, :string}}, {"iss_simples_nacional", :iss_simples_nacional, {:optional, :string}}, {"reducao", :reducao, {:optional, :scalar}}, {"cst_pis_cofins", :cst_pis_cofins, {:optional, :string}}, {"cp", :cp, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostos"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbs do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cbs, :unset}, {:classificacao_tributaria, :unset}, {:classificacao_tributaria_regular, :unset}, {:codigo_localidade_incidencia, :unset}, {:credito_presumido, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:pRedutor, :unset}, {:p_redutor, :unset}, {:situacao_tributaria, :unset}, {:situacao_tributaria_regular, :unset}, {:transferencia_credito, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cbs => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCbs.t() | :unset), :classificacao_tributaria => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :codigo_localidade_incidencia => (String.t() | :unset), :credito_presumido => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCreditoPresumido.t() | :unset), :ibs_estadual => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsMunicipal.t() | :unset), :pRedutor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :p_redutor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :situacao_tributaria => (String.t() | :unset), :situacao_tributaria_regular => (String.t() | :unset), :transferencia_credito => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsTransferenciaCredito.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cbs", :cbs, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCbs}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"codigo_localidade_incidencia", :codigo_localidade_incidencia, {:optional, :string}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCreditoPresumido}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsMunicipal}}, {"pRedutor", :pRedutor, {:optional, :scalar}}, {"p_redutor", :p_redutor, {:optional, :scalar}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"transferencia_credito", :transferencia_credito, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsTransferenciaCredito}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbs"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCbs do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCbs"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCreditoPresumido do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => (String.t() | :unset), :aliquota_ibs => (String.t() | :unset), :aliquota_cbs => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, {:optional, :string}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :string}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsCreditoPresumido"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsEstadual"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsIbsMunicipal"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsTransferenciaCredito do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_ibs => (String.t() | :unset), :valor_cbs => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_ibs", :valor_ibs, {:optional, :string}}, {"valor_cbs", :valor_cbs, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosIbsCbsTransferenciaCredito"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosPiscofins do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_cofins, :unset}, {:aliquota_pis, :unset}, {:base_calculo, :unset}, {:cst, :unset}, {:tipo_retencao, :unset}, {:valor_cofins, :unset}, {:valor_pis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cst => (String.t() | :unset), :tipo_retencao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_cofins", :aliquota_cofins, {:optional, :scalar}}, {"aliquota_pis", :aliquota_pis, {:optional, :scalar}}, {"base_calculo", :base_calculo, {:optional, :scalar}}, {"cst", :cst, {:optional, :string}}, {"tipo_retencao", :tipo_retencao, {:optional, :scalar}}, {"valor_cofins", :valor_cofins, {:optional, :scalar}}, {"valor_pis", :valor_pis, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosPiscofins"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:pTotTribEst, :unset}, {:pTotTribFed, :unset}, {:pTotTribMun, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:pTotTribEst => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pTotTribFed => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pTotTribMun => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"pTotTribEst", :pTotTribEst, {:optional, :scalar}}, {"pTotTribFed", :pTotTribFed, {:optional, :scalar}}, {"pTotTribMun", :pTotTribMun, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib2 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estadual, :unset}, {:federal, :unset}, {:municipal, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estadual => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :federal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :municipal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estadual", :estadual, {:optional, :scalar}}, {"federal", :federal, {:optional, :scalar}}, {"municipal", :municipal, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoImpostosTotTrib2"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoIntermediario do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:im, :unset}, {:nome_completo, :unset}, {:razao_social, :unset}, {:cidade, :unset}, {:uf, :unset}, {:ie, :unset}, {:endereco, :unset}, {:cep, :unset}, {:bairro, :unset}, {:numero, :unset}, {:complemento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :im => (String.t() | :unset), :nome_completo => (String.t() | :unset), :razao_social => (String.t() | :unset), :cidade => (String.t() | :unset), :uf => (String.t() | :unset), :ie => (String.t() | :unset), :endereco => (String.t() | :unset), :cep => (String.t() | :unset), :bairro => (String.t() | :unset), :numero => (String.t() | :unset), :complemento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoIntermediario"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasse do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:documentos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:documentos => ([Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"documentos", :documentos, {:optional, {:array, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasse"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_competencia, :unset}, {:data_emissao, :unset}, {:descricao, :unset}, {:dfe_nacional, :unset}, {:dfe_outro, :unset}, {:doc_outro, :unset}, {:fornecedor, :unset}, {:tipo_reembolso, :unset}, {:valor, :unset}, {:valor_total, :unset}, {:fornecedor_referenciado, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_competencia => (String.t() | :unset), :data_emissao => (String.t() | :unset), :descricao => (String.t() | :unset), :dfe_nacional => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional.t() | :unset), :dfe_outro => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro.t() | :unset), :doc_outro => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro.t() | :unset), :fornecedor => (Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor.t() | :unset), :tipo_reembolso => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :fornecedor_referenciado => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_competencia", :data_competencia, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"descricao", :descricao, {:optional, :string}}, {"dfe_nacional", :dfe_nacional, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional}}, {"dfe_outro", :dfe_outro, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro}}, {"doc_outro", :doc_outro, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro}}, {"fornecedor", :fornecedor, {:optional, Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor}}, {"tipo_reembolso", :tipo_reembolso, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}, {"valor_total", :valor_total, {:optional, :scalar}}, {"fornecedor_referenciado", :fornecedor_referenciado, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave_dfe, :unset}, {:descricao_tipo_chave_dfe, :unset}, {:tipo_chave_dfe, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave_dfe => (String.t() | :unset), :descricao_tipo_chave_dfe => (String.t() | :unset), :tipo_chave_dfe => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave_dfe", :chave_dfe, {:optional, :string}}, {"descricao_tipo_chave_dfe", :descricao_tipo_chave_dfe, {:optional, :string}}, {"tipo_chave_dfe", :tipo_chave_dfe, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_municipio_emissor, :unset}, {:descricao_documento, :unset}, {:numero_documento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_municipio_emissor => (String.t() | :unset), :descricao_documento => (String.t() | :unset), :numero_documento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_municipio_emissor", :codigo_municipio_emissor, {:optional, :string}}, {"descricao_documento", :descricao_documento, {:optional, :string}}, {"numero_documento", :numero_documento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao_documento, :unset}, {:numero_documento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao_documento => (String.t() | :unset), :numero_documento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao_documento", :descricao_documento, {:optional, :string}}, {"numero_documento", :numero_documento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:id_estrangeiro, :unset}, {:indicador_nao_nif, :unset}, {:nome, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :id_estrangeiro => (String.t() | :unset), :indicador_nao_nif => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nome => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"indicador_nao_nif", :indicador_nao_nif, {:optional, :scalar}}, {"nome", :nome, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemServicoItensItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao, :unset}, {:quantidade, :unset}, {:valor_unitario, :unset}, {:item_tributavel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao => (String.t() | :unset), :quantidade => (String.t() | :unset), :valor_unitario => (String.t() | :unset), :item_tributavel => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao", :descricao, {:optional, :string}}, {"quantidade", :quantidade, {:optional, :string}}, {"valor_unitario", :valor_unitario, {:optional, :string}}, {"item_tributavel", :item_tributavel, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemServicoItensItem"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemTomador do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:cidade_exterior, :unset}, {:cnpj, :unset}, {:codigo_municipio, :unset}, {:codigo_pais, :unset}, {:codigo_postal, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:endereco_completo, :unset}, {:endereco_completo_exterior, :unset}, {:estado_provincia, :unset}, {:fantasia, :unset}, {:id_estrangeiro, :unset}, {:ie, :unset}, {:im, :unset}, {:nif, :unset}, {:nome_completo, :unset}, {:nome_estrangeiro, :unset}, {:nome_pais, :unset}, {:numero, :unset}, {:pais, :unset}, {:razao_social, :unset}, {:sigla_pais, :unset}, {:telefone, :unset}, {:uf, :unset}, {:documento_estrangeiro, :unset}, {:cidade_estrangeira, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :cidade_exterior => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_municipio => (String.t() | :unset), :codigo_pais => ((String.t() | nil) | :unset), :codigo_postal => (String.t() | :unset), :complemento => (String.t() | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (String.t() | :unset), :endereco_completo => ((String.t() | nil) | :unset), :endereco_completo_exterior => (String.t() | :unset), :estado_provincia => (String.t() | :unset), :fantasia => (String.t() | :unset), :id_estrangeiro => ((String.t() | nil) | :unset), :ie => (String.t() | :unset), :im => (String.t() | :unset), :nif => (String.t() | :unset), :nome_completo => (String.t() | :unset), :nome_estrangeiro => ((String.t() | nil) | :unset), :nome_pais => ((String.t() | nil) | :unset), :numero => (String.t() | :unset), :pais => (String.t() | :unset), :razao_social => (String.t() | :unset), :sigla_pais => (String.t() | :unset), :telefone => (String.t() | :unset), :uf => (String.t() | :unset), :documento_estrangeiro => (String.t() | :unset), :cidade_estrangeira => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cidade_exterior", :cidade_exterior, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, {:nullable, :string}}}, {"codigo_postal", :codigo_postal, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"endereco_completo", :endereco_completo, {:optional, {:nullable, :string}}}, {"endereco_completo_exterior", :endereco_completo_exterior, {:optional, :string}}, {"estado_provincia", :estado_provincia, {:optional, :string}}, {"fantasia", :fantasia, {:optional, :string}}, {"id_estrangeiro", :id_estrangeiro, {:optional, {:nullable, :string}}}, {"ie", :ie, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"nif", :nif, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"nome_estrangeiro", :nome_estrangeiro, {:optional, {:nullable, :string}}}, {"nome_pais", :nome_pais, {:optional, {:nullable, :string}}}, {"numero", :numero, {:optional, :string}}, {"pais", :pais, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"sigla_pais", :sigla_pais, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"documento_estrangeiro", :documento_estrangeiro, {:optional, :string}}, {"cidade_estrangeira", :cidade_estrangeira, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemTomador"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayloadRpsItemAtividadeEvento do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao_evento, :unset}, {:data_inicio, :unset}, {:data_final, :unset}, {:identificacao, :unset}, {:endereco, :unset}, {:numero, :unset}, {:complemento, :unset}, {:bairro, :unset}, {:cep, :unset}, {:codigo_pais, :unset}, {:cep_exterior, :unset}, {:cidade, :unset}, {:estado, :unset}, {:uf, :unset}, {:uf_prestacao, :unset}, {:pais, :unset}, {:exterior, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao_evento => (String.t() | :unset), :data_inicio => (String.t() | :unset), :data_final => (String.t() | :unset), :identificacao => (String.t() | :unset), :endereco => (String.t() | :unset), :numero => (String.t() | :unset), :complemento => (String.t() | :unset), :bairro => (String.t() | :unset), :cep => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :cep_exterior => (String.t() | :unset), :cidade => (String.t() | :unset), :estado => (String.t() | :unset), :uf => (String.t() | :unset), :uf_prestacao => (String.t() | :unset), :pais => (String.t() | :unset), :exterior => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao_evento", :descricao_evento, {:optional, :string}}, {"data_inicio", :data_inicio, {:optional, :string}}, {"data_final", :data_final, {:optional, :string}}, {"identificacao", :identificacao, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"cep_exterior", :cep_exterior, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"estado", :estado, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"uf_prestacao", :uf_prestacao, {:optional, :string}}, {"pais", :pais, {:optional, :string}}, {"exterior", :exterior, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterIssueNfsePayloadRpsItemAtividadeEvento"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterCancelNfsePayload do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_verificacao, :unset}, {:justificativa, :unset}, {:motivo, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_verificacao => (String.t() | :unset), :justificativa => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"justificativa", :justificativa, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"uuid", :uuid, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterCancelNfsePayload"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayload do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:chave, :unset}, {:codigo_verificacao, :unset}, {:justificativa, :unset}, {:motivo, :unset}, {:origem, :unset}, {:rps, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :chave => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :justificativa => (String.t() | :unset), :motivo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :origem => (String.t() | :unset), :rps => [Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItem.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, :scalar}, {"chave", :chave, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"justificativa", :justificativa, {:optional, :string}}, {"motivo", :motivo, :scalar}, {"origem", :origem, {:optional, :string}}, {"rps", :rps, {:array, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayload"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:condicao_pagamento, :unset}, {:construcao_civil, :unset}, {:destinatario, :unset}, {:natureza_operacao, :unset}, {:outras_informacoes, :unset}, {:regime_especial_tributacao, :unset}, {:servico, :unset}, {:tomador, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:condicao_pagamento => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemCondicaoPagamento.t() | :unset), :construcao_civil => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemConstrucaoCivil.t() | :unset), :destinatario => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatario.t() | :unset), :natureza_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :outras_informacoes => (String.t() | :unset), :regime_especial_tributacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :servico => Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServico.t(), :tomador => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemTomador.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"condicao_pagamento", :condicao_pagamento, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemCondicaoPagamento}}, {"construcao_civil", :construcao_civil, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemConstrucaoCivil}}, {"destinatario", :destinatario, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatario}}, {"natureza_operacao", :natureza_operacao, {:optional, :scalar}}, {"outras_informacoes", :outras_informacoes, {:optional, :string}}, {"regime_especial_tributacao", :regime_especial_tributacao, {:optional, :scalar}}, {"servico", :servico, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServico}, {"tomador", :tomador, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemTomador}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItem"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemCondicaoPagamento do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:condicao, :unset}, {:parcelas, :unset}, {:qtd_parcela, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:condicao => (String.t() | :unset), :parcelas => ([Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemCondicaoPagamentoParcelasItem.t()] | :unset), :qtd_parcela => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"condicao", :condicao, {:optional, :string}}, {"parcelas", :parcelas, {:optional, {:array, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemCondicaoPagamentoParcelasItem}}}, {"qtd_parcela", :qtd_parcela, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemCondicaoPagamento"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemCondicaoPagamentoParcelasItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_vencimento, :unset}, {:parcela, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_vencimento => (String.t() | :unset), :parcela => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_vencimento", :data_vencimento, {:optional, :string}}, {"parcela", :parcela, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemCondicaoPagamentoParcelasItem"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemConstrucaoCivil do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:art, :unset}, {:codigo_obra, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:art => (String.t() | :unset), :codigo_obra => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"art", :art, {:optional, :string}}, {"codigo_obra", :codigo_obra, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemConstrucaoCivil"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatario do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:id_estrangeiro, :unset}, {:indicador_nao_nif, :unset}, {:nome, :unset}, {:telefone, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEndereco.t() | :unset), :id_estrangeiro => (String.t() | :unset), :indicador_nao_nif => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nome => (String.t() | :unset), :telefone => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEndereco}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"indicador_nao_nif", :indicador_nao_nif, {:optional, :scalar}}, {"nome", :nome, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemDestinatario"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEndereco do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:complemento, :unset}, {:endereco_exterior, :unset}, {:endereco_nacional, :unset}, {:logradouro, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :complemento => (String.t() | :unset), :endereco_exterior => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior.t() | :unset), :endereco_nacional => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional.t() | :unset), :logradouro => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"endereco_exterior", :endereco_exterior, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior}}, {"endereco_nacional", :endereco_nacional, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional}}, {"logradouro", :logradouro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemDestinatarioEndereco"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cidade, :unset}, {:codigo_pais, :unset}, {:codigo_postal, :unset}, {:estado_provincia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cidade => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :codigo_postal => (String.t() | :unset), :estado_provincia => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cidade", :cidade, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"codigo_postal", :codigo_postal, {:optional, :string}}, {"estado_provincia", :estado_provincia, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoExterior"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:codigo_municipio_ibge, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :codigo_municipio_ibge => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"codigo_municipio_ibge", :codigo_municipio_ibge, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemDestinatarioEnderecoEnderecoNacional"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServico do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cidade_local_prestacao, :unset}, {:classe_imposto, :unset}, {:classificacao_tributaria, :unset}, {:cod_indicador_operacao, :unset}, {:codigo_cnae, :unset}, {:codigo_nbs, :unset}, {:codigo_servico, :unset}, {:codigo_tributacao_municipio, :unset}, {:consumidor_final, :unset}, {:deducao_reducao, :unset}, {:deducoes, :unset}, {:desconto_condicionado, :unset}, {:desconto_incondicionado, :unset}, {:discriminacao, :unset}, {:ente_governamental, :unset}, {:exigibilidade_iss, :unset}, {:imovel, :unset}, {:impostos, :unset}, {:indicador_destinatario, :unset}, {:indicador_zfm_alc, :unset}, {:informacoes_complementares, :unset}, {:intermediario, :unset}, {:iss_retido, :unset}, {:municipio_incidencia, :unset}, {:nfses_referenciadas, :unset}, {:numero_processo, :unset}, {:outras_retencoes, :unset}, {:reembolso_repasse, :unset}, {:responsavel_retencao_iss, :unset}, {:uf_local_prestacao, :unset}, {:valor_servicos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cidade_local_prestacao => (String.t() | :unset), :classe_imposto => (String.t() | :unset), :classificacao_tributaria => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cod_indicador_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cnae => (String.t() | :unset), :codigo_nbs => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :codigo_tributacao_municipio => (String.t() | :unset), :consumidor_final => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :deducao_reducao => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducao.t() | :unset), :deducoes => (Webmania.JSON.value() | :unset), :desconto_condicionado => (Webmania.JSON.value() | :unset), :desconto_incondicionado => (Webmania.JSON.value() | :unset), :discriminacao => String.t(), :ente_governamental => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoEnteGovernamental.t() | :unset), :exigibilidade_iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :imovel => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovel.t() | :unset), :impostos => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostos.t() | :unset), :indicador_destinatario => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :indicador_zfm_alc => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :informacoes_complementares => (String.t() | :unset), :intermediario => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoIntermediario.t() | :unset), :iss_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :municipio_incidencia => (String.t() | :unset), :nfses_referenciadas => ([String.t()] | :unset), :numero_processo => (String.t() | :unset), :outras_retencoes => (Webmania.JSON.value() | :unset), :reembolso_repasse => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasse.t() | :unset), :responsavel_retencao_iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uf_local_prestacao => (String.t() | :unset), :valor_servicos => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cidade_local_prestacao", :cidade_local_prestacao, {:optional, :string}}, {"classe_imposto", :classe_imposto, {:optional, :string}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :scalar}}, {"cod_indicador_operacao", :cod_indicador_operacao, {:optional, :scalar}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"codigo_nbs", :codigo_nbs, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"codigo_tributacao_municipio", :codigo_tributacao_municipio, {:optional, :string}}, {"consumidor_final", :consumidor_final, {:optional, :scalar}}, {"deducao_reducao", :deducao_reducao, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducao}}, {"deducoes", :deducoes, {:optional, :value}}, {"desconto_condicionado", :desconto_condicionado, {:optional, :value}}, {"desconto_incondicionado", :desconto_incondicionado, {:optional, :value}}, {"discriminacao", :discriminacao, :string}, {"ente_governamental", :ente_governamental, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoEnteGovernamental}}, {"exigibilidade_iss", :exigibilidade_iss, {:optional, :scalar}}, {"imovel", :imovel, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovel}}, {"impostos", :impostos, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostos}}, {"indicador_destinatario", :indicador_destinatario, {:optional, :scalar}}, {"indicador_zfm_alc", :indicador_zfm_alc, {:optional, :scalar}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}, {"intermediario", :intermediario, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoIntermediario}}, {"iss_retido", :iss_retido, {:optional, :scalar}}, {"municipio_incidencia", :municipio_incidencia, {:optional, :string}}, {"nfses_referenciadas", :nfses_referenciadas, {:optional, {:array, :string}}}, {"numero_processo", :numero_processo, {:optional, :string}}, {"outras_retencoes", :outras_retencoes, {:optional, :value}}, {"reembolso_repasse", :reembolso_repasse, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasse}}, {"responsavel_retencao_iss", :responsavel_retencao_iss, {:optional, :scalar}}, {"uf_local_prestacao", :uf_local_prestacao, {:optional, :string}}, {"valor_servicos", :valor_servicos, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServico"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducao do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:documentos, :unset}, {:percentual, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:documentos => ([Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem.t()] | :unset), :percentual => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"documentos", :documentos, {:optional, {:array, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem}}}, {"percentual", :percentual, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducao"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave_nfe, :unset}, {:chave_nfse, :unset}, {:data_emissao, :unset}, {:descricao_outras_deducoes, :unset}, {:doc_fiscal, :unset}, {:doc_nao_fiscal, :unset}, {:fornecedor, :unset}, {:nf_nfs, :unset}, {:nfse_municipal, :unset}, {:tipo_deducao_reducao, :unset}, {:valor_deducao, :unset}, {:valor_dedutivel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave_nfe => (String.t() | :unset), :chave_nfse => (String.t() | :unset), :data_emissao => (String.t() | :unset), :descricao_outras_deducoes => (String.t() | :unset), :doc_fiscal => (String.t() | :unset), :doc_nao_fiscal => (String.t() | :unset), :fornecedor => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor.t() | :unset), :nf_nfs => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs.t() | :unset), :nfse_municipal => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal.t() | :unset), :tipo_deducao_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_deducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_dedutivel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave_nfe", :chave_nfe, {:optional, :string}}, {"chave_nfse", :chave_nfse, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"descricao_outras_deducoes", :descricao_outras_deducoes, {:optional, :string}}, {"doc_fiscal", :doc_fiscal, {:optional, :string}}, {"doc_nao_fiscal", :doc_nao_fiscal, {:optional, :string}}, {"fornecedor", :fornecedor, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor}}, {"nf_nfs", :nf_nfs, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs}}, {"nfse_municipal", :nfse_municipal, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal}}, {"tipo_deducao_reducao", :tipo_deducao_reducao, {:optional, :scalar}}, {"valor_deducao", :valor_deducao, {:optional, :scalar}}, {"valor_dedutivel", :valor_dedutivel, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItem"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:caepf, :unset}, {:cep, :unset}, {:cep_exterior, :unset}, {:cidade, :unset}, {:cnpj, :unset}, {:codigo_municipio, :unset}, {:codigo_pais, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:estado, :unset}, {:id_estrangeiro, :unset}, {:im, :unset}, {:motivo_sem_nif, :unset}, {:nome_completo, :unset}, {:nome_estrangeiro, :unset}, {:numero, :unset}, {:razao_social, :unset}, {:telefone, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :caepf => (String.t() | :unset), :cep => (String.t() | :unset), :cep_exterior => (String.t() | :unset), :cidade => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_municipio => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :complemento => (String.t() | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (String.t() | :unset), :estado => (String.t() | :unset), :id_estrangeiro => (String.t() | :unset), :im => (String.t() | :unset), :motivo_sem_nif => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nome_completo => (String.t() | :unset), :nome_estrangeiro => (String.t() | :unset), :numero => (String.t() | :unset), :razao_social => (String.t() | :unset), :telefone => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"caepf", :caepf, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cep_exterior", :cep_exterior, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"estado", :estado, {:optional, :string}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"motivo_sem_nif", :motivo_sem_nif, {:optional, :scalar}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"nome_estrangeiro", :nome_estrangeiro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemFornecedor"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:modelo, :unset}, {:numero, :unset}, {:serie, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:modelo => (String.t() | :unset), :numero => (String.t() | :unset), :serie => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"modelo", :modelo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"serie", :serie, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfNfs"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_municipio, :unset}, {:codigo_verificacao, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_municipio => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoDeducaoReducaoDocumentosItemNfseMunicipal"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoEnteGovernamental do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:tipo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => (String.t() | :unset), :tipo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, {:optional, :string}}, {"tipo", :tipo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoEnteGovernamental"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovel do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:codigo_cib, :unset}, {:codigo_obra, :unset}, {:codigo_pais, :unset}, {:codigo_postal, :unset}, {:complemento, :unset}, {:endereco, :unset}, {:estado_provincia, :unset}, {:inscricao_imobiliaria, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :codigo_cib => (String.t() | :unset), :codigo_obra => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :codigo_postal => (String.t() | :unset), :complemento => (String.t() | :unset), :endereco => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEndereco.t() | :unset), :estado_provincia => (String.t() | :unset), :inscricao_imobiliaria => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"codigo_cib", :codigo_cib, {:optional, :string}}, {"codigo_obra", :codigo_obra, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"codigo_postal", :codigo_postal, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"endereco", :endereco, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEndereco}}, {"estado_provincia", :estado_provincia, {:optional, :string}}, {"inscricao_imobiliaria", :inscricao_imobiliaria, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImovel"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEndereco do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:complemento, :unset}, {:endereco_exterior, :unset}, {:endereco_nacional, :unset}, {:logradouro, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :complemento => (String.t() | :unset), :endereco_exterior => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior.t() | :unset), :endereco_nacional => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional.t() | :unset), :logradouro => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"endereco_exterior", :endereco_exterior, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior}}, {"endereco_nacional", :endereco_nacional, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional}}, {"logradouro", :logradouro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImovelEndereco"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cidade, :unset}, {:codigo_pais, :unset}, {:codigo_postal, :unset}, {:estado_provincia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cidade => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :codigo_postal => (String.t() | :unset), :estado_provincia => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cidade", :cidade, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"codigo_postal", :codigo_postal, {:optional, :string}}, {"estado_provincia", :estado_provincia, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoExterior"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:codigo_municipio_ibge, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :codigo_municipio_ibge => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"codigo_municipio_ibge", :codigo_municipio_ibge, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImovelEnderecoEnderecoNacional"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostos do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cofins, :unset}, {:csll, :unset}, {:inss, :unset}, {:ir, :unset}, {:iss, :unset}, {:pis, :unset}, {:piscofins, :unset}, {:totTrib, :unset}, {:tot_trib, :unset}, {:ibs_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :csll => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :inss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ir => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :piscofins => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosPiscofins.t() | :unset), :totTrib => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib.t() | :unset), :tot_trib => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib2.t() | :unset), :ibs_cbs => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosIbsCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cofins", :cofins, {:optional, :scalar}}, {"csll", :csll, {:optional, :scalar}}, {"inss", :inss, {:optional, :scalar}}, {"ir", :ir, {:optional, :scalar}}, {"iss", :iss, {:optional, :scalar}}, {"pis", :pis, {:optional, :scalar}}, {"piscofins", :piscofins, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosPiscofins}}, {"totTrib", :totTrib, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib}}, {"tot_trib", :tot_trib, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib2}}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosIbsCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImpostos"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosPiscofins do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_cofins, :unset}, {:aliquota_pis, :unset}, {:base_calculo, :unset}, {:cst, :unset}, {:tipo_retencao, :unset}, {:valor_cofins, :unset}, {:valor_pis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cst => (String.t() | :unset), :tipo_retencao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_cofins", :aliquota_cofins, {:optional, :scalar}}, {"aliquota_pis", :aliquota_pis, {:optional, :scalar}}, {"base_calculo", :base_calculo, {:optional, :scalar}}, {"cst", :cst, {:optional, :string}}, {"tipo_retencao", :tipo_retencao, {:optional, :scalar}}, {"valor_cofins", :valor_cofins, {:optional, :scalar}}, {"valor_pis", :valor_pis, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImpostosPiscofins"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:pTotTribEst, :unset}, {:pTotTribFed, :unset}, {:pTotTribMun, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:pTotTribEst => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pTotTribFed => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pTotTribMun => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"pTotTribEst", :pTotTribEst, {:optional, :scalar}}, {"pTotTribFed", :pTotTribFed, {:optional, :scalar}}, {"pTotTribMun", :pTotTribMun, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib2 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estadual, :unset}, {:federal, :unset}, {:municipal, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estadual => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :federal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :municipal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estadual", :estadual, {:optional, :scalar}}, {"federal", :federal, {:optional, :scalar}}, {"municipal", :municipal, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImpostosTotTrib2"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoImpostosIbsCbs do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_localidade_incidencia, :unset}, {:pRedutor, :unset}, {:p_redutor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_localidade_incidencia => (String.t() | :unset), :pRedutor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :p_redutor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_localidade_incidencia", :codigo_localidade_incidencia, {:optional, :string}}, {"pRedutor", :pRedutor, {:optional, :scalar}}, {"p_redutor", :p_redutor, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoImpostosIbsCbs"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoIntermediario do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:im, :unset}, {:nome_completo, :unset}, {:razao_social, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :im => (String.t() | :unset), :nome_completo => (String.t() | :unset), :razao_social => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoIntermediario"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasse do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:documentos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:documentos => ([Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"documentos", :documentos, {:optional, {:array, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasse"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_competencia, :unset}, {:data_emissao, :unset}, {:descricao, :unset}, {:dfe_nacional, :unset}, {:dfe_outro, :unset}, {:doc_outro, :unset}, {:fornecedor, :unset}, {:tipo_reembolso, :unset}, {:valor, :unset}, {:valor_total, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_competencia => (String.t() | :unset), :data_emissao => (String.t() | :unset), :descricao => (String.t() | :unset), :dfe_nacional => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional.t() | :unset), :dfe_outro => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro.t() | :unset), :doc_outro => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro.t() | :unset), :fornecedor => (Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor.t() | :unset), :tipo_reembolso => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_competencia", :data_competencia, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"descricao", :descricao, {:optional, :string}}, {"dfe_nacional", :dfe_nacional, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional}}, {"dfe_outro", :dfe_outro, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro}}, {"doc_outro", :doc_outro, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro}}, {"fornecedor", :fornecedor, {:optional, Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor}}, {"tipo_reembolso", :tipo_reembolso, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}, {"valor_total", :valor_total, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItem"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave_dfe, :unset}, {:descricao_tipo_chave_dfe, :unset}, {:tipo_chave_dfe, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave_dfe => (String.t() | :unset), :descricao_tipo_chave_dfe => (String.t() | :unset), :tipo_chave_dfe => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave_dfe", :chave_dfe, {:optional, :string}}, {"descricao_tipo_chave_dfe", :descricao_tipo_chave_dfe, {:optional, :string}}, {"tipo_chave_dfe", :tipo_chave_dfe, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeNacional"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_municipio_emissor, :unset}, {:descricao_documento, :unset}, {:numero_documento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_municipio_emissor => (String.t() | :unset), :descricao_documento => (String.t() | :unset), :numero_documento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_municipio_emissor", :codigo_municipio_emissor, {:optional, :string}}, {"descricao_documento", :descricao_documento, {:optional, :string}}, {"numero_documento", :numero_documento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDfeOutro"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao_documento, :unset}, {:numero_documento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao_documento => (String.t() | :unset), :numero_documento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao_documento", :descricao_documento, {:optional, :string}}, {"numero_documento", :numero_documento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemDocOutro"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:id_estrangeiro, :unset}, {:indicador_nao_nif, :unset}, {:nome, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :id_estrangeiro => (String.t() | :unset), :indicador_nao_nif => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nome => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"indicador_nao_nif", :indicador_nao_nif, {:optional, :scalar}}, {"nome", :nome, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemServicoReembolsoRepasseDocumentosItemFornecedor"
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
defmodule Webmania.Models.Api2NfseIssuance.EmitterReplaceNfsePayloadRpsItemTomador do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:cidade_exterior, :unset}, {:cnpj, :unset}, {:codigo_municipio, :unset}, {:codigo_pais, :unset}, {:codigo_postal, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:endereco_completo_exterior, :unset}, {:estado_provincia, :unset}, {:fantasia, :unset}, {:id_estrangeiro, :unset}, {:ie, :unset}, {:im, :unset}, {:nif, :unset}, {:nome_completo, :unset}, {:nome_estrangeiro, :unset}, {:numero, :unset}, {:pais, :unset}, {:razao_social, :unset}, {:sigla_pais, :unset}, {:telefone, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :cidade_exterior => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_municipio => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :codigo_postal => (String.t() | :unset), :complemento => ((String.t() | nil) | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (String.t() | :unset), :endereco_completo_exterior => (String.t() | :unset), :estado_provincia => (String.t() | :unset), :fantasia => (String.t() | :unset), :id_estrangeiro => (String.t() | :unset), :ie => (String.t() | :unset), :im => (String.t() | :unset), :nif => (String.t() | :unset), :nome_completo => (String.t() | :unset), :nome_estrangeiro => (String.t() | :unset), :numero => (String.t() | :unset), :pais => (String.t() | :unset), :razao_social => (String.t() | :unset), :sigla_pais => (String.t() | :unset), :telefone => (String.t() | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cidade_exterior", :cidade_exterior, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"codigo_postal", :codigo_postal, {:optional, :string}}, {"complemento", :complemento, {:optional, {:nullable, :string}}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"endereco_completo_exterior", :endereco_completo_exterior, {:optional, :string}}, {"estado_provincia", :estado_provincia, {:optional, :string}}, {"fantasia", :fantasia, {:optional, :string}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"nif", :nif, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"nome_estrangeiro", :nome_estrangeiro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"pais", :pais, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"sigla_pais", :sigla_pais, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::EmitterReplaceNfsePayloadRpsItemTomador"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseDocumentedGroup516 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:modelo, :unset}, {:versao, :unset}, {:ambientes, :unset}, {:autenticacao, :unset}, {:emissao, :unset}, {:funcoes, :unset}, {:codigo_servico, :unset}, {:parametros_disponiveis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => (boolean() | :unset), :modelo => (String.t() | :unset), :versao => (String.t() | :unset), :ambientes => ([Webmania.JSON.value()] | :unset), :autenticacao => ([Webmania.JSON.value()] | :unset), :emissao => ([Webmania.JSON.value()] | :unset), :funcoes => ([Webmania.JSON.value()] | :unset), :codigo_servico => ([Webmania.JSON.value()] | :unset), :parametros_disponiveis => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, {:optional, :boolean}}, {"modelo", :modelo, {:optional, :string}}, {"versao", :versao, {:optional, :string}}, {"ambientes", :ambientes, {:optional, {:array, :value}}}, {"autenticacao", :autenticacao, {:optional, {:array, :value}}}, {"emissao", :emissao, {:optional, {:array, :value}}}, {"funcoes", :funcoes, {:optional, {:array, :value}}}, {"codigo_servico", :codigo_servico, {:optional, {:array, :value}}}, {"parametros_disponiveis", :parametros_disponiveis, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseDocumentedGroup516"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseDocumentedGroup700 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:motivo, :unset}, {:numero_lote, :unset}, {:serie_lote, :unset}, {:quantidade_rps, :unset}, {:protocolo, :unset}, {:info_nfse, :unset}, {:log, :unset}, {:atualizado_em, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :modelo => (String.t() | :unset), :status => (String.t() | :unset), :motivo => (String.t() | :unset), :numero_lote => (String.t() | :unset), :serie_lote => (String.t() | :unset), :quantidade_rps => (String.t() | :unset), :protocolo => (String.t() | :unset), :info_nfse => ([Webmania.JSON.value()] | :unset), :log => (%{String.t() => Webmania.JSON.value()} | :unset), :atualizado_em => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :string}}, {"numero_lote", :numero_lote, {:optional, :string}}, {"serie_lote", :serie_lote, {:optional, :string}}, {"quantidade_rps", :quantidade_rps, {:optional, :string}}, {"protocolo", :protocolo, {:optional, :string}}, {"info_nfse", :info_nfse, {:optional, {:array, :value}}}, {"log", :log, {:optional, :map}}, {"atualizado_em", :atualizado_em, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseDocumentedGroup700"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseDocumentedGroup829 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:motivo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:serie_rps, :unset}, {:numero_rps, :unset}, {:xml, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:log, :unset}, {:atualizado_em, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :modelo => (String.t() | :unset), :status => (String.t() | :unset), :motivo => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :serie_rps => (String.t() | :unset), :numero_rps => (String.t() | :unset), :xml => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :log => (%{String.t() => Webmania.JSON.value()} | :unset), :atualizado_em => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"serie_rps", :serie_rps, {:optional, :string}}, {"numero_rps", :numero_rps, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}, {"log", :log, {:optional, :map}}, {"atualizado_em", :atualizado_em, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseDocumentedGroup829"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseDocumentedGroup1074 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:motivo, :unset}, {:numero_lote, :unset}, {:serie_lote, :unset}, {:quantidade_rps, :unset}, {:protocolo, :unset}, {:info_nfse, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :modelo => (String.t() | :unset), :status => (String.t() | :unset), :motivo => (String.t() | :unset), :numero_lote => (String.t() | :unset), :serie_lote => (String.t() | :unset), :quantidade_rps => (String.t() | :unset), :protocolo => (String.t() | :unset), :info_nfse => ([Webmania.JSON.value()] | :unset), :log => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :string}}, {"numero_lote", :numero_lote, {:optional, :string}}, {"serie_lote", :serie_lote, {:optional, :string}}, {"quantidade_rps", :quantidade_rps, {:optional, :string}}, {"protocolo", :protocolo, {:optional, :string}}, {"info_nfse", :info_nfse, {:optional, {:array, :value}}}, {"log", :log, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseDocumentedGroup1074"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseDocumentedGroup1181 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:motivo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:serie_rps, :unset}, {:numero_rps, :unset}, {:xml, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :modelo => (String.t() | :unset), :status => (String.t() | :unset), :motivo => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :serie_rps => (String.t() | :unset), :numero_rps => (String.t() | :unset), :xml => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :log => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"serie_rps", :serie_rps, {:optional, :string}}, {"numero_rps", :numero_rps, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}, {"log", :log, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseDocumentedGroup1181"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseDocumentedGroup6052 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:motivo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseDocumentedGroup6052"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseDocumentedGroup6116 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:codigo_verificacao, :unset}, {:motivo, :unset}, {:rps, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_verificacao => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :rps => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, {:optional, :scalar}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"rps", :rps, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseDocumentedGroup6116"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseDocumentedGroup6216 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:manifestador, :unset}, {:evento, :unset}, {:motivo_rejeicao, :unset}, {:justificativa_rejeicao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :manifestador => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo_rejeicao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :justificativa_rejeicao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, {:optional, :scalar}}, {"manifestador", :manifestador, {:optional, :scalar}}, {"evento", :evento, {:optional, :scalar}}, {"motivo_rejeicao", :motivo_rejeicao, {:optional, :scalar}}, {"justificativa_rejeicao", :justificativa_rejeicao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseDocumentedGroup6216"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroup do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cfps, :unset}, {:cidade_local_prestacao, :unset}, {:classe_imposto, :unset}, {:classificacao_tributaria, :unset}, {:cod_indicador_operacao, :unset}, {:codigo_cnae, :unset}, {:codigo_interno, :unset}, {:codigo_nbs, :unset}, {:codigo_pais_prestacao, :unset}, {:codigo_servico, :unset}, {:codigo_tributacao_municipio, :unset}, {:consumidor_final, :unset}, {:data_competencia, :unset}, {:deducao_reducao, :unset}, {:deducoes, :unset}, {:desconto_condicionado, :unset}, {:desconto_incondicionado, :unset}, {:discriminacao, :unset}, {:ente_governamental, :unset}, {:exigibilidade_iss, :unset}, {:id_cnae, :unset}, {:imovel, :unset}, {:impostos, :unset}, {:indicador_destinatario, :unset}, {:indicador_zfm_alc, :unset}, {:informacoes_complementares, :unset}, {:intermediario, :unset}, {:iss_retido, :unset}, {:local_incidencia, :unset}, {:municipio_incidencia, :unset}, {:natureza_operacao, :unset}, {:nfses_referenciadas, :unset}, {:numero_processo, :unset}, {:outras_retencoes, :unset}, {:reembolso_repasse, :unset}, {:responsavel_retencao_iss, :unset}, {:situacao_tributaria, :unset}, {:tipo_operacao, :unset}, {:tipo_tributacao, :unset}, {:tributacao, :unset}, {:uf_local_prestacao, :unset}, {:valor_nao_base_calculo, :unset}, {:valor_servicos, :unset}, {:itens, :unset}, {:local_prestacao, :unset}, {:cep_local_prestacao, :unset}, {:justificativa_deducoes, :unset}, {:descricao_impostos, :unset}, {:ie, :unset}, {:regime_recolhimento, :unset}, {:forma_recolhimento, :unset}, {:endereco_local_prestacao, :unset}, {:identificador_beneficio_municipal, :unset}, {:tributacao_iss, :unset}, {:tipo_imunidade, :unset}, {:pis_cofins_retido, :unset}, {:aliquota_tributos_aproximados, :unset}, {:modo_prestacao, :unset}, {:vinculo_prestacao, :unset}, {:tipo_moeda, :unset}, {:valor_servico_moeda, :unset}, {:mecanismo_apoio_comex_prestador, :unset}, {:mecanismo_apoio_comex_tomador, :unset}, {:movimento_temporario_bens, :unset}, {:numero_di, :unset}, {:numero_re, :unset}, {:mdic, :unset}, {:valor_inicial_cobrado, :unset}, {:valor_final_cobrado, :unset}, {:valor_multa, :unset}, {:valor_juros, :unset}, {:valor_ipi, :unset}, {:pagamento_parcelado_antecipado, :unset}, {:ncm, :unset}, {:valor_recebido, :unset}, {:carga_tributaria, :unset}, {:fonte_carga_tributaria, :unset}, {:finalidade, :unset}, {:outras_informacoes, :unset}, {:condicao_pagamento, :unset}, {:destinatario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cfps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cidade_local_prestacao => (String.t() | :unset), :classe_imposto => (String.t() | :unset), :classificacao_tributaria => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cod_indicador_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cnae => (String.t() | :unset), :codigo_interno => (String.t() | :unset), :codigo_nbs => (String.t() | :unset), :codigo_pais_prestacao => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :codigo_tributacao_municipio => (String.t() | :unset), :consumidor_final => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_competencia => (String.t() | :unset), :deducao_reducao => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducao.t() | :unset), :deducoes => (Webmania.JSON.value() | :unset), :desconto_condicionado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :desconto_incondicionado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :discriminacao => String.t(), :ente_governamental => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupEnteGovernamental.t() | :unset), :exigibilidade_iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :id_cnae => (String.t() | :unset), :imovel => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovel.t() | :unset), :impostos => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostos.t() | :unset), :indicador_destinatario => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :indicador_zfm_alc => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :informacoes_complementares => (String.t() | :unset), :intermediario => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupIntermediario.t() | :unset), :iss_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :local_incidencia => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :municipio_incidencia => (String.t() | :unset), :natureza_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfses_referenciadas => ([String.t()] | :unset), :numero_processo => (String.t() | :unset), :outras_retencoes => (Webmania.JSON.value() | :unset), :reembolso_repasse => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasse.t() | :unset), :responsavel_retencao_iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :situacao_tributaria => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo_operacao => (String.t() | :unset), :tipo_tributacao => (String.t() | :unset), :tributacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uf_local_prestacao => (String.t() | :unset), :valor_nao_base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_servicos => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :itens => ([Webmania.Models.Api2NfseIssuance.NfseServiceGroupItensItem.t()] | :unset), :local_prestacao => (String.t() | :unset), :cep_local_prestacao => (String.t() | :unset), :justificativa_deducoes => (String.t() | :unset), :descricao_impostos => (String.t() | :unset), :ie => (String.t() | :unset), :regime_recolhimento => (String.t() | :unset), :forma_recolhimento => (String.t() | :unset), :endereco_local_prestacao => (String.t() | :unset), :identificador_beneficio_municipal => (String.t() | :unset), :tributacao_iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo_imunidade => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pis_cofins_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_tributos_aproximados => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modo_prestacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :vinculo_prestacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo_moeda => (String.t() | :unset), :valor_servico_moeda => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :mecanismo_apoio_comex_prestador => (String.t() | :unset), :mecanismo_apoio_comex_tomador => (String.t() | :unset), :movimento_temporario_bens => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero_di => (String.t() | :unset), :numero_re => (String.t() | :unset), :mdic => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_inicial_cobrado => (String.t() | :unset), :valor_final_cobrado => (String.t() | :unset), :valor_multa => (String.t() | :unset), :valor_juros => (String.t() | :unset), :valor_ipi => (String.t() | :unset), :pagamento_parcelado_antecipado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ncm => (String.t() | :unset), :valor_recebido => (String.t() | :unset), :carga_tributaria => (String.t() | :unset), :fonte_carga_tributaria => (String.t() | :unset), :finalidade => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :outras_informacoes => (String.t() | :unset), :condicao_pagamento => (%{String.t() => Webmania.JSON.value()} | :unset), :destinatario => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cfps", :cfps, {:optional, :scalar}}, {"cidade_local_prestacao", :cidade_local_prestacao, {:optional, :string}}, {"classe_imposto", :classe_imposto, {:optional, :string}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :scalar}}, {"cod_indicador_operacao", :cod_indicador_operacao, {:optional, :scalar}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"codigo_interno", :codigo_interno, {:optional, :string}}, {"codigo_nbs", :codigo_nbs, {:optional, :string}}, {"codigo_pais_prestacao", :codigo_pais_prestacao, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"codigo_tributacao_municipio", :codigo_tributacao_municipio, {:optional, :string}}, {"consumidor_final", :consumidor_final, {:optional, :scalar}}, {"data_competencia", :data_competencia, {:optional, :string}}, {"deducao_reducao", :deducao_reducao, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducao}}, {"deducoes", :deducoes, {:optional, :value}}, {"desconto_condicionado", :desconto_condicionado, {:optional, :scalar}}, {"desconto_incondicionado", :desconto_incondicionado, {:optional, :scalar}}, {"discriminacao", :discriminacao, :string}, {"ente_governamental", :ente_governamental, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupEnteGovernamental}}, {"exigibilidade_iss", :exigibilidade_iss, {:optional, :scalar}}, {"id_cnae", :id_cnae, {:optional, :string}}, {"imovel", :imovel, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovel}}, {"impostos", :impostos, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostos}}, {"indicador_destinatario", :indicador_destinatario, {:optional, :scalar}}, {"indicador_zfm_alc", :indicador_zfm_alc, {:optional, :scalar}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}, {"intermediario", :intermediario, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupIntermediario}}, {"iss_retido", :iss_retido, {:optional, :scalar}}, {"local_incidencia", :local_incidencia, {:optional, :scalar}}, {"municipio_incidencia", :municipio_incidencia, {:optional, :string}}, {"natureza_operacao", :natureza_operacao, {:optional, :scalar}}, {"nfses_referenciadas", :nfses_referenciadas, {:optional, {:array, :string}}}, {"numero_processo", :numero_processo, {:optional, :string}}, {"outras_retencoes", :outras_retencoes, {:optional, :value}}, {"reembolso_repasse", :reembolso_repasse, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasse}}, {"responsavel_retencao_iss", :responsavel_retencao_iss, {:optional, :scalar}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :scalar}}, {"tipo_operacao", :tipo_operacao, {:optional, :string}}, {"tipo_tributacao", :tipo_tributacao, {:optional, :string}}, {"tributacao", :tributacao, {:optional, :scalar}}, {"uf_local_prestacao", :uf_local_prestacao, {:optional, :string}}, {"valor_nao_base_calculo", :valor_nao_base_calculo, {:optional, :scalar}}, {"valor_servicos", :valor_servicos, :scalar}, {"itens", :itens, {:optional, {:array, Webmania.Models.Api2NfseIssuance.NfseServiceGroupItensItem}}}, {"local_prestacao", :local_prestacao, {:optional, :string}}, {"cep_local_prestacao", :cep_local_prestacao, {:optional, :string}}, {"justificativa_deducoes", :justificativa_deducoes, {:optional, :string}}, {"descricao_impostos", :descricao_impostos, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"regime_recolhimento", :regime_recolhimento, {:optional, :string}}, {"forma_recolhimento", :forma_recolhimento, {:optional, :string}}, {"endereco_local_prestacao", :endereco_local_prestacao, {:optional, :string}}, {"identificador_beneficio_municipal", :identificador_beneficio_municipal, {:optional, :string}}, {"tributacao_iss", :tributacao_iss, {:optional, :scalar}}, {"tipo_imunidade", :tipo_imunidade, {:optional, :scalar}}, {"pis_cofins_retido", :pis_cofins_retido, {:optional, :scalar}}, {"aliquota_tributos_aproximados", :aliquota_tributos_aproximados, {:optional, :scalar}}, {"modo_prestacao", :modo_prestacao, {:optional, :scalar}}, {"vinculo_prestacao", :vinculo_prestacao, {:optional, :scalar}}, {"tipo_moeda", :tipo_moeda, {:optional, :string}}, {"valor_servico_moeda", :valor_servico_moeda, {:optional, :scalar}}, {"mecanismo_apoio_comex_prestador", :mecanismo_apoio_comex_prestador, {:optional, :string}}, {"mecanismo_apoio_comex_tomador", :mecanismo_apoio_comex_tomador, {:optional, :string}}, {"movimento_temporario_bens", :movimento_temporario_bens, {:optional, :scalar}}, {"numero_di", :numero_di, {:optional, :string}}, {"numero_re", :numero_re, {:optional, :string}}, {"mdic", :mdic, {:optional, :scalar}}, {"valor_inicial_cobrado", :valor_inicial_cobrado, {:optional, :string}}, {"valor_final_cobrado", :valor_final_cobrado, {:optional, :string}}, {"valor_multa", :valor_multa, {:optional, :string}}, {"valor_juros", :valor_juros, {:optional, :string}}, {"valor_ipi", :valor_ipi, {:optional, :string}}, {"pagamento_parcelado_antecipado", :pagamento_parcelado_antecipado, {:optional, :scalar}}, {"ncm", :ncm, {:optional, :string}}, {"valor_recebido", :valor_recebido, {:optional, :string}}, {"carga_tributaria", :carga_tributaria, {:optional, :string}}, {"fonte_carga_tributaria", :fonte_carga_tributaria, {:optional, :string}}, {"finalidade", :finalidade, {:optional, :scalar}}, {"outras_informacoes", :outras_informacoes, {:optional, :string}}, {"condicao_pagamento", :condicao_pagamento, {:optional, :map}}, {"destinatario", :destinatario, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroup"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducao do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:documentos, :unset}, {:percentual, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:documentos => ([Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItem.t()] | :unset), :percentual => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"documentos", :documentos, {:optional, {:array, Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItem}}}, {"percentual", :percentual, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupDeducaoReducao"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave_nfe, :unset}, {:chave_nfse, :unset}, {:data_emissao, :unset}, {:descricao_outras_deducoes, :unset}, {:doc_fiscal, :unset}, {:doc_nao_fiscal, :unset}, {:fornecedor, :unset}, {:nf_nfs, :unset}, {:nfse_municipal, :unset}, {:tipo_deducao_reducao, :unset}, {:valor_deducao, :unset}, {:valor_dedutivel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave_nfe => (String.t() | :unset), :chave_nfse => (String.t() | :unset), :data_emissao => (String.t() | :unset), :descricao_outras_deducoes => (String.t() | :unset), :doc_fiscal => (String.t() | :unset), :doc_nao_fiscal => (String.t() | :unset), :fornecedor => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItemFornecedor.t() | :unset), :nf_nfs => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItemNfNfs.t() | :unset), :nfse_municipal => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItemNfseMunicipal.t() | :unset), :tipo_deducao_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_deducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_dedutivel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave_nfe", :chave_nfe, {:optional, :string}}, {"chave_nfse", :chave_nfse, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"descricao_outras_deducoes", :descricao_outras_deducoes, {:optional, :string}}, {"doc_fiscal", :doc_fiscal, {:optional, :string}}, {"doc_nao_fiscal", :doc_nao_fiscal, {:optional, :string}}, {"fornecedor", :fornecedor, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItemFornecedor}}, {"nf_nfs", :nf_nfs, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItemNfNfs}}, {"nfse_municipal", :nfse_municipal, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItemNfseMunicipal}}, {"tipo_deducao_reducao", :tipo_deducao_reducao, {:optional, :scalar}}, {"valor_deducao", :valor_deducao, {:optional, :scalar}}, {"valor_dedutivel", :valor_dedutivel, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupDeducaoReducaoDocumentosItem"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItemFornecedor do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:caepf, :unset}, {:cep, :unset}, {:cep_exterior, :unset}, {:cidade, :unset}, {:cnpj, :unset}, {:codigo_municipio, :unset}, {:codigo_pais, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:estado, :unset}, {:id_estrangeiro, :unset}, {:im, :unset}, {:motivo_sem_nif, :unset}, {:nome_completo, :unset}, {:nome_estrangeiro, :unset}, {:numero, :unset}, {:razao_social, :unset}, {:telefone, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :caepf => (String.t() | :unset), :cep => (String.t() | :unset), :cep_exterior => (String.t() | :unset), :cidade => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_municipio => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :complemento => (String.t() | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (String.t() | :unset), :estado => (String.t() | :unset), :id_estrangeiro => (String.t() | :unset), :im => (String.t() | :unset), :motivo_sem_nif => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nome_completo => (String.t() | :unset), :nome_estrangeiro => (String.t() | :unset), :numero => (String.t() | :unset), :razao_social => (String.t() | :unset), :telefone => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"caepf", :caepf, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cep_exterior", :cep_exterior, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"estado", :estado, {:optional, :string}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"motivo_sem_nif", :motivo_sem_nif, {:optional, :scalar}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"nome_estrangeiro", :nome_estrangeiro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupDeducaoReducaoDocumentosItemFornecedor"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItemNfNfs do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:modelo, :unset}, {:numero, :unset}, {:serie, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:modelo => (String.t() | :unset), :numero => (String.t() | :unset), :serie => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"modelo", :modelo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"serie", :serie, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupDeducaoReducaoDocumentosItemNfNfs"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupDeducaoReducaoDocumentosItemNfseMunicipal do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_municipio, :unset}, {:codigo_verificacao, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_municipio => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupDeducaoReducaoDocumentosItemNfseMunicipal"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupEnteGovernamental do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:tipo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => (String.t() | :unset), :tipo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, {:optional, :string}}, {"tipo", :tipo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupEnteGovernamental"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovel do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:codigo_cib, :unset}, {:codigo_obra, :unset}, {:codigo_pais, :unset}, {:codigo_postal, :unset}, {:complemento, :unset}, {:endereco, :unset}, {:estado_provincia, :unset}, {:inscricao_imobiliaria, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :codigo_cib => (String.t() | :unset), :codigo_obra => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :codigo_postal => (String.t() | :unset), :complemento => (String.t() | :unset), :endereco => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovelEndereco.t() | :unset), :estado_provincia => (String.t() | :unset), :inscricao_imobiliaria => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"codigo_cib", :codigo_cib, {:optional, :string}}, {"codigo_obra", :codigo_obra, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"codigo_postal", :codigo_postal, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"endereco", :endereco, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovelEndereco}}, {"estado_provincia", :estado_provincia, {:optional, :string}}, {"inscricao_imobiliaria", :inscricao_imobiliaria, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImovel"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovelEndereco do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:complemento, :unset}, {:endereco_exterior, :unset}, {:endereco_nacional, :unset}, {:logradouro, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :complemento => (String.t() | :unset), :endereco_exterior => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovelEnderecoEnderecoExterior.t() | :unset), :endereco_nacional => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovelEnderecoEnderecoNacional.t() | :unset), :logradouro => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"endereco_exterior", :endereco_exterior, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovelEnderecoEnderecoExterior}}, {"endereco_nacional", :endereco_nacional, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovelEnderecoEnderecoNacional}}, {"logradouro", :logradouro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImovelEndereco"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovelEnderecoEnderecoExterior do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cidade, :unset}, {:codigo_pais, :unset}, {:codigo_postal, :unset}, {:estado_provincia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cidade => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :codigo_postal => (String.t() | :unset), :estado_provincia => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cidade", :cidade, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"codigo_postal", :codigo_postal, {:optional, :string}}, {"estado_provincia", :estado_provincia, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImovelEnderecoEnderecoExterior"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImovelEnderecoEnderecoNacional do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:codigo_municipio_ibge, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :codigo_municipio_ibge => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"codigo_municipio_ibge", :codigo_municipio_ibge, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImovelEnderecoEnderecoNacional"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostos do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cofins, :unset}, {:csll, :unset}, {:ibs_cbs, :unset}, {:inss, :unset}, {:ir, :unset}, {:iss, :unset}, {:pis, :unset}, {:piscofins, :unset}, {:totTrib, :unset}, {:tot_trib, :unset}, {:classe_imposto, :unset}, {:iss_simples_nacional, :unset}, {:reducao, :unset}, {:cst_pis_cofins, :unset}, {:cp, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :csll => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ibs_cbs => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbs.t() | :unset), :inss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ir => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :piscofins => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosPiscofins.t() | :unset), :totTrib => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosTotTrib.t() | :unset), :tot_trib => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosTotTrib2.t() | :unset), :classe_imposto => (String.t() | :unset), :iss_simples_nacional => (String.t() | :unset), :reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cst_pis_cofins => (String.t() | :unset), :cp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cofins", :cofins, {:optional, :scalar}}, {"csll", :csll, {:optional, :scalar}}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbs}}, {"inss", :inss, {:optional, :scalar}}, {"ir", :ir, {:optional, :scalar}}, {"iss", :iss, {:optional, :scalar}}, {"pis", :pis, {:optional, :scalar}}, {"piscofins", :piscofins, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosPiscofins}}, {"totTrib", :totTrib, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosTotTrib}}, {"tot_trib", :tot_trib, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosTotTrib2}}, {"classe_imposto", :classe_imposto, {:optional, :string}}, {"iss_simples_nacional", :iss_simples_nacional, {:optional, :string}}, {"reducao", :reducao, {:optional, :scalar}}, {"cst_pis_cofins", :cst_pis_cofins, {:optional, :string}}, {"cp", :cp, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImpostos"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbs do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cbs, :unset}, {:classificacao_tributaria, :unset}, {:classificacao_tributaria_regular, :unset}, {:codigo_localidade_incidencia, :unset}, {:credito_presumido, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:pRedutor, :unset}, {:p_redutor, :unset}, {:situacao_tributaria, :unset}, {:situacao_tributaria_regular, :unset}, {:transferencia_credito, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cbs => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsCbs.t() | :unset), :classificacao_tributaria => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :codigo_localidade_incidencia => (String.t() | :unset), :credito_presumido => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsCreditoPresumido.t() | :unset), :ibs_estadual => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsIbsMunicipal.t() | :unset), :pRedutor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :p_redutor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :situacao_tributaria => (String.t() | :unset), :situacao_tributaria_regular => (String.t() | :unset), :transferencia_credito => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsTransferenciaCredito.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cbs", :cbs, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsCbs}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"codigo_localidade_incidencia", :codigo_localidade_incidencia, {:optional, :string}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsCreditoPresumido}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsIbsMunicipal}}, {"pRedutor", :pRedutor, {:optional, :scalar}}, {"p_redutor", :p_redutor, {:optional, :scalar}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"transferencia_credito", :transferencia_credito, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsTransferenciaCredito}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImpostosIbsCbs"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsCbs do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImpostosIbsCbsCbs"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsCreditoPresumido do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => (String.t() | :unset), :aliquota_ibs => (String.t() | :unset), :aliquota_cbs => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, {:optional, :string}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :string}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImpostosIbsCbsCreditoPresumido"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImpostosIbsCbsIbsEstadual"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImpostosIbsCbsIbsMunicipal"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosIbsCbsTransferenciaCredito do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_ibs => (String.t() | :unset), :valor_cbs => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_ibs", :valor_ibs, {:optional, :string}}, {"valor_cbs", :valor_cbs, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImpostosIbsCbsTransferenciaCredito"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosPiscofins do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_cofins, :unset}, {:aliquota_pis, :unset}, {:base_calculo, :unset}, {:cst, :unset}, {:tipo_retencao, :unset}, {:valor_cofins, :unset}, {:valor_pis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cst => (String.t() | :unset), :tipo_retencao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_cofins", :aliquota_cofins, {:optional, :scalar}}, {"aliquota_pis", :aliquota_pis, {:optional, :scalar}}, {"base_calculo", :base_calculo, {:optional, :scalar}}, {"cst", :cst, {:optional, :string}}, {"tipo_retencao", :tipo_retencao, {:optional, :scalar}}, {"valor_cofins", :valor_cofins, {:optional, :scalar}}, {"valor_pis", :valor_pis, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImpostosPiscofins"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosTotTrib do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:pTotTribEst, :unset}, {:pTotTribFed, :unset}, {:pTotTribMun, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:pTotTribEst => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pTotTribFed => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pTotTribMun => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"pTotTribEst", :pTotTribEst, {:optional, :scalar}}, {"pTotTribFed", :pTotTribFed, {:optional, :scalar}}, {"pTotTribMun", :pTotTribMun, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImpostosTotTrib"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupImpostosTotTrib2 do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estadual, :unset}, {:federal, :unset}, {:municipal, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estadual => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :federal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :municipal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estadual", :estadual, {:optional, :scalar}}, {"federal", :federal, {:optional, :scalar}}, {"municipal", :municipal, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupImpostosTotTrib2"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupIntermediario do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:im, :unset}, {:nome_completo, :unset}, {:razao_social, :unset}, {:cidade, :unset}, {:uf, :unset}, {:ie, :unset}, {:endereco, :unset}, {:cep, :unset}, {:bairro, :unset}, {:numero, :unset}, {:complemento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :im => (String.t() | :unset), :nome_completo => (String.t() | :unset), :razao_social => (String.t() | :unset), :cidade => (String.t() | :unset), :uf => (String.t() | :unset), :ie => (String.t() | :unset), :endereco => (String.t() | :unset), :cep => (String.t() | :unset), :bairro => (String.t() | :unset), :numero => (String.t() | :unset), :complemento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupIntermediario"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasse do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:documentos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:documentos => ([Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"documentos", :documentos, {:optional, {:array, Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupReembolsoRepasse"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_competencia, :unset}, {:data_emissao, :unset}, {:descricao, :unset}, {:dfe_nacional, :unset}, {:dfe_outro, :unset}, {:doc_outro, :unset}, {:fornecedor, :unset}, {:tipo_reembolso, :unset}, {:valor, :unset}, {:valor_total, :unset}, {:fornecedor_referenciado, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_competencia => (String.t() | :unset), :data_emissao => (String.t() | :unset), :descricao => (String.t() | :unset), :dfe_nacional => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemDfeNacional.t() | :unset), :dfe_outro => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemDfeOutro.t() | :unset), :doc_outro => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemDocOutro.t() | :unset), :fornecedor => (Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemFornecedor.t() | :unset), :tipo_reembolso => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :fornecedor_referenciado => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_competencia", :data_competencia, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"descricao", :descricao, {:optional, :string}}, {"dfe_nacional", :dfe_nacional, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemDfeNacional}}, {"dfe_outro", :dfe_outro, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemDfeOutro}}, {"doc_outro", :doc_outro, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemDocOutro}}, {"fornecedor", :fornecedor, {:optional, Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemFornecedor}}, {"tipo_reembolso", :tipo_reembolso, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}, {"valor_total", :valor_total, {:optional, :scalar}}, {"fornecedor_referenciado", :fornecedor_referenciado, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupReembolsoRepasseDocumentosItem"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemDfeNacional do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave_dfe, :unset}, {:descricao_tipo_chave_dfe, :unset}, {:tipo_chave_dfe, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave_dfe => (String.t() | :unset), :descricao_tipo_chave_dfe => (String.t() | :unset), :tipo_chave_dfe => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave_dfe", :chave_dfe, {:optional, :string}}, {"descricao_tipo_chave_dfe", :descricao_tipo_chave_dfe, {:optional, :string}}, {"tipo_chave_dfe", :tipo_chave_dfe, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupReembolsoRepasseDocumentosItemDfeNacional"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemDfeOutro do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_municipio_emissor, :unset}, {:descricao_documento, :unset}, {:numero_documento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_municipio_emissor => (String.t() | :unset), :descricao_documento => (String.t() | :unset), :numero_documento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_municipio_emissor", :codigo_municipio_emissor, {:optional, :string}}, {"descricao_documento", :descricao_documento, {:optional, :string}}, {"numero_documento", :numero_documento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupReembolsoRepasseDocumentosItemDfeOutro"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemDocOutro do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao_documento, :unset}, {:numero_documento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao_documento => (String.t() | :unset), :numero_documento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao_documento", :descricao_documento, {:optional, :string}}, {"numero_documento", :numero_documento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupReembolsoRepasseDocumentosItemDocOutro"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupReembolsoRepasseDocumentosItemFornecedor do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:id_estrangeiro, :unset}, {:indicador_nao_nif, :unset}, {:nome, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :id_estrangeiro => (String.t() | :unset), :indicador_nao_nif => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nome => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"indicador_nao_nif", :indicador_nao_nif, {:optional, :scalar}}, {"nome", :nome, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupReembolsoRepasseDocumentosItemFornecedor"
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
defmodule Webmania.Models.Api2NfseIssuance.NfseServiceGroupItensItem do
  @moduledoc "Nominal model from the pinned api2_nfse_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao, :unset}, {:quantidade, :unset}, {:valor_unitario, :unset}, {:item_tributavel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao => (String.t() | :unset), :quantidade => (String.t() | :unset), :valor_unitario => (String.t() | :unset), :item_tributavel => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao", :descricao, {:optional, :string}}, {"quantidade", :quantidade, {:optional, :string}}, {"valor_unitario", :valor_unitario, {:optional, :string}}, {"item_tributavel", :item_tributavel, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_nfse_issuance::NfseServiceGroupItensItem"
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
