# Generated. Run scripts/generate.py in the pinned Docker toolchain.
defmodule Webmania.Models.Api2CteIssuance.EmitterError do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:status, :unset}, {:configured, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => (String.t() | :unset), :message => (String.t() | :unset), :status => (boolean() | :unset), :configured => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, {:optional, :string}}, {"message", :message, {:optional, :string}}, {"status", :status, {:optional, :boolean}}, {"configured", :configured, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterError"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfseServiceCode do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:descricao, :unset}, {:id_cnae, :unset}, {:codigo_tributacao, :unset}, {:aliquota_sugerida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :descricao => String.t(), :id_cnae => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_tributacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_sugerida => (Webmania.Models.Api2CteIssuance.NfseServiceCodeAliquotaSugerida.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, :scalar}, {"descricao", :descricao, :string}, {"id_cnae", :id_cnae, {:optional, :scalar}}, {"codigo_tributacao", :codigo_tributacao, {:optional, :scalar}}, {"aliquota_sugerida", :aliquota_sugerida, {:optional, Webmania.Models.Api2CteIssuance.NfseServiceCodeAliquotaSugerida}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfseServiceCode"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfseServiceCodeAliquotaSugerida do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:iss, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"iss", :iss, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfseServiceCodeAliquotaSugerida"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfseProviderStatus do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:modelo, :unset}, {:versao, :unset}, {:ambientes, :unset}, {:autenticacao, :unset}, {:emissao, :unset}, {:funcoes, :unset}, {:pdf_nfse, :unset}, {:pdf_sincrono, :unset}, {:codigo_servico, :unset}, {:parametros_disponiveis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => boolean(), :modelo => (String.t() | :unset), :versao => (String.t() | :unset), :ambientes => [integer()], :autenticacao => [String.t()], :emissao => [String.t()], :funcoes => [String.t()], :pdf_nfse => boolean(), :pdf_sincrono => boolean(), :codigo_servico => ([Webmania.Models.Api2CteIssuance.NfseServiceCode.t()] | :unset), :parametros_disponiveis => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, :boolean}, {"modelo", :modelo, {:optional, :string}}, {"versao", :versao, {:optional, :string}}, {"ambientes", :ambientes, {:array, :i64}}, {"autenticacao", :autenticacao, {:array, :string}}, {"emissao", :emissao, {:array, :string}}, {"funcoes", :funcoes, {:array, :string}}, {"pdf_nfse", :pdf_nfse, :boolean}, {"pdf_sincrono", :pdf_sincrono, :boolean}, {"codigo_servico", :codigo_servico, {:optional, {:array, Webmania.Models.Api2CteIssuance.NfseServiceCode}}}, {"parametros_disponiveis", :parametros_disponiveis, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfseProviderStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfcomServiceStatus do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:operacional, :unset}, {:mensagem, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:operacional => boolean(), :mensagem => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"operacional", :operacional, :boolean}, {"mensagem", :mensagem, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfcomServiceStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfseFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:chave, :unset}, {:numero_lote, :unset}, {:serie_lote, :unset}, {:protocolo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:serie_rps, :unset}, {:numero_rps, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:atualizado_em, :unset}, {:motivo, :unset}, {:quantidade_rps, :unset}, {:nfse_substituida, :unset}, {:info_nfse, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :uuid => String.t(), :modelo => String.t(), :status => String.t(), :chave => (String.t() | :unset), :numero_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :serie_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :xml => (String.t() | :unset), :xml_cancelamento => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :atualizado_em => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfse_substituida => (Webmania.Models.Api2CteIssuance.NfseFiscalResponseNfseSubstituida.t() | :unset), :info_nfse => ([Webmania.Models.Api2CteIssuance.NfseFiscalResponseInfoNfseItem.t()] | :unset), :log => (Webmania.Models.Api2CteIssuance.NfseFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"uuid", :uuid, :string}, {"modelo", :modelo, :string}, {"status", :status, :string}, {"chave", :chave, {:optional, :string}}, {"numero_lote", :numero_lote, {:optional, :scalar}}, {"serie_lote", :serie_lote, {:optional, :scalar}}, {"protocolo", :protocolo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"serie_rps", :serie_rps, {:optional, :scalar}}, {"numero_rps", :numero_rps, {:optional, :scalar}}, {"xml", :xml, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}, {"atualizado_em", :atualizado_em, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"quantidade_rps", :quantidade_rps, {:optional, :scalar}}, {"nfse_substituida", :nfse_substituida, {:optional, Webmania.Models.Api2CteIssuance.NfseFiscalResponseNfseSubstituida}}, {"info_nfse", :info_nfse, {:optional, {:array, Webmania.Models.Api2CteIssuance.NfseFiscalResponseInfoNfseItem}}}, {"log", :log, {:optional, Webmania.Models.Api2CteIssuance.NfseFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfseFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfseFiscalResponseNfseSubstituida do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfseFiscalResponseNfseSubstituida"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfseFiscalResponseInfoNfseItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:motivo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:xml, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :modelo => (String.t() | :unset), :status => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :xml => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfseFiscalResponseInfoNfseItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfseFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfseFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfcomPaymentEvent do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_nfcom, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => ((String.t() | nil) | :unset), :codigo => ((String.t() | nil) | :unset), :motivo => ((String.t() | nil) | :unset), :protocolo_evento => ((String.t() | nil) | :unset), :protocolo_nfcom => ((String.t() | nil) | :unset), :protocolo_vinculacao => ((String.t() | nil) | :unset), :data_evento => ((String.t() | nil) | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pagamento => ((Webmania.Models.Api2CteIssuance.NfcomPaymentEventPagamentoVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, {:nullable, :string}}}, {"codigo", :codigo, {:optional, {:nullable, :string}}}, {"motivo", :motivo, {:optional, {:nullable, :string}}}, {"protocolo_evento", :protocolo_evento, {:optional, {:nullable, :string}}}, {"protocolo_nfcom", :protocolo_nfcom, {:optional, {:nullable, :string}}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, {:nullable, :string}}}, {"data_evento", :data_evento, {:optional, {:nullable, :string}}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}, {"pagamento", :pagamento, {:optional, {:nullable, Webmania.Models.Api2CteIssuance.NfcomPaymentEventPagamentoVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfcomPaymentEvent"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfcomPaymentEventPagamentoVariant0 do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nPag, :unset}, {:idTransacao, :unset}, {:tpMeioPgto, :unset}, {:CNPJReceb, :unset}, {:CNPJBasePSP, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nPag => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :idTransacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tpMeioPgto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJReceb => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJBasePSP => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nPag", :nPag, {:optional, :scalar}}, {"idTransacao", :idTransacao, {:optional, :scalar}}, {"tpMeioPgto", :tpMeioPgto, {:optional, :scalar}}, {"CNPJReceb", :CNPJReceb, {:optional, :scalar}}, {"CNPJBasePSP", :CNPJBasePSP, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfcomPaymentEventPagamentoVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfcomFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:nfcom, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:contingencia, :unset}, {:xml, :unset}, {:danfecom, :unset}, {:xml_cancelamento, :unset}, {:protocolo, :unset}, {:data_autorizacao, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:consulta_eventos_pagamento, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfcom => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (String.t() | :unset), :modelo => String.t(), :contingencia => (boolean() | :unset), :xml => (String.t() | :unset), :danfecom => (String.t() | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :protocolo => (String.t() | :unset), :data_autorizacao => ((String.t() | nil) | :unset), :eventos_pagamento => ([Webmania.Models.Api2CteIssuance.NfcomPaymentEvent.t()] | :unset), :total_eventos => (integer() | :unset), :consulta_eventos_pagamento => (String.t() | :unset), :log => (Webmania.Models.Api2CteIssuance.NfcomFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"nfcom", :nfcom, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :string}}, {"modelo", :modelo, :string}, {"contingencia", :contingencia, {:optional, :boolean}}, {"xml", :xml, {:optional, :string}}, {"danfecom", :danfecom, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"protocolo", :protocolo, {:optional, :string}}, {"data_autorizacao", :data_autorizacao, {:optional, {:nullable, :string}}}, {"eventos_pagamento", :eventos_pagamento, {:optional, {:array, Webmania.Models.Api2CteIssuance.NfcomPaymentEvent}}}, {"total_eventos", :total_eventos, {:optional, :i64}}, {"consulta_eventos_pagamento", :consulta_eventos_pagamento, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api2CteIssuance.NfcomFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfcomFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfcomFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfcomFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfcomPaymentEvents do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:status, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :status => String.t(), :eventos_pagamento => [Webmania.Models.Api2CteIssuance.NfcomPaymentEvent.t()], :total_eventos => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"status", :status, :string}, {"eventos_pagamento", :eventos_pagamento, {:array, Webmania.Models.Api2CteIssuance.NfcomPaymentEvent}}, {"total_eventos", :total_eventos, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfcomPaymentEvents"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.NfseManifestationRequest do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:chave, :unset}, {:manifestador, :unset}, {:evento, :unset}, {:motivo_rejeicao, :unset}, {:justificativa_rejeicao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :chave => String.t(), :manifestador => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :evento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :motivo_rejeicao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :justificativa_rejeicao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, :scalar}, {"chave", :chave, :string}, {"manifestador", :manifestador, :scalar}, {"evento", :evento, :scalar}, {"motivo_rejeicao", :motivo_rejeicao, {:optional, :scalar}}, {"justificativa_rejeicao", :justificativa_rejeicao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::NfseManifestationRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:cte, :unset}, {:epec, :unset}, {:dacte, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:consulta_eventos_pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2CteIssuance.CteFiscalResponseLog.t() | :unset), :cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :epec => (boolean() | :unset), :dacte => ((String.t() | nil) | :unset), :eventos_pagamento => ([Webmania.Models.Api2CteIssuance.CteFiscalResponseEventosPagamentoItem.t()] | :unset), :total_eventos => (integer() | :unset), :consulta_eventos_pagamento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2CteIssuance.CteFiscalResponseLog}}, {"cte", :cte, {:optional, :scalar}}, {"epec", :epec, {:optional, :boolean}}, {"dacte", :dacte, {:optional, {:nullable, :string}}}, {"eventos_pagamento", :eventos_pagamento, {:optional, {:array, Webmania.Models.Api2CteIssuance.CteFiscalResponseEventosPagamentoItem}}}, {"total_eventos", :total_eventos, {:optional, :i64}}, {"consulta_eventos_pagamento", :consulta_eventos_pagamento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteFiscalResponseEventosPagamentoItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_cte, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_vinculacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, :scalar}}, {"codigo", :codigo, {:optional, :scalar}}, {"motivo", :motivo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :scalar}}, {"protocolo_cte", :protocolo_cte, {:optional, :scalar}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :scalar}}, {"data_evento", :data_evento, {:optional, :scalar}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteFiscalResponseEventosPagamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.MdfeFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:mdfe, :unset}, {:damdfe, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2CteIssuance.MdfeFiscalResponseLog.t() | :unset), :mdfe => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :damdfe => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2CteIssuance.MdfeFiscalResponseLog}}, {"mdfe", :mdfe, {:optional, :scalar}}, {"damdfe", :damdfe, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::MdfeFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.MdfeFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::MdfeFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.DceFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:numero, :unset}, {:dace, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2CteIssuance.DceFiscalResponseLog.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :dace => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2CteIssuance.DceFiscalResponseLog}}, {"numero", :numero, {:optional, :scalar}}, {"dace", :dace, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::DceFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.DceFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::DceFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.FiscalEventResponse do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:evento, :unset}, {:status, :unset}, {:motivo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:dacce, :unset}, {:log, :unset}, {:codigo, :unset}, {:protocolo_evento, :unset}, {:data_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :chave => (String.t() | :unset), :evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => ((String.t() | nil) | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :dacce => (String.t() | :unset), :log => (Webmania.Models.Api2CteIssuance.FiscalEventResponseLog.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (String.t() | :unset), :data_evento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"evento", :evento, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, {:nullable, :string}}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"dacce", :dacce, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api2CteIssuance.FiscalEventResponseLog}}, {"codigo", :codigo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :string}}, {"data_evento", :data_evento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::FiscalEventResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.FiscalEventResponseLog do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::FiscalEventResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CtePaymentEvents do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:status, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => (String.t() | :unset), :status => String.t(), :eventos_pagamento => [Webmania.Models.Api2CteIssuance.CtePaymentEventsEventosPagamentoItem.t()], :total_eventos => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, :string}}, {"status", :status, :string}, {"eventos_pagamento", :eventos_pagamento, {:array, Webmania.Models.Api2CteIssuance.CtePaymentEventsEventosPagamentoItem}}, {"total_eventos", :total_eventos, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CtePaymentEvents"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CtePaymentEventsEventosPagamentoItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_cte, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_vinculacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, :scalar}}, {"codigo", :codigo, {:optional, :scalar}}, {"motivo", :motivo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :scalar}}, {"protocolo_cte", :protocolo_cte, {:optional, :scalar}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :scalar}}, {"data_evento", :data_evento, {:optional, :scalar}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CtePaymentEventsEventosPagamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayload do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aereo, :unset}, {:alteracao_tomador, :unset}, {:ambiente, :unset}, {:aquaviario, :unset}, {:caracteristica_servico, :unset}, {:caracteristica_transporte, :unset}, {:carga, :unset}, {:cobranca, :unset}, {:contribuicao_tomador, :unset}, {:cte_referenciado, :unset}, {:data_emissao, :unset}, {:destinatario, :unset}, {:detalhes_retirada, :unset}, {:documentos_anteriores, :unset}, {:documentos_fiscais, :unset}, {:dutoviario, :unset}, {:entrega, :unset}, {:expedidor, :unset}, {:ferroviario, :unset}, {:finalidade, :unset}, {:globalizado, :unset}, {:impostos, :unset}, {:indicador_tomador, :unset}, {:informacao_globalizado, :unset}, {:local_inicio_prestacao, :unset}, {:local_termino_prestacao, :unset}, {:modalidade, :unset}, {:modelo, :unset}, {:multimodal, :unset}, {:natureza_operacao, :unset}, {:observacoes_contribuinte, :unset}, {:observacoes_fisco, :unset}, {:observacoes_gerais, :unset}, {:origem, :unset}, {:pagamentos_vinculados, :unset}, {:recebedor, :unset}, {:remetente, :unset}, {:rodoviario, :unset}, {:servico, :unset}, {:tomador, :unset}, {:veiculos_novos, :unset}, {:url_notificacao, :unset}, {:nfe_xml, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aereo => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereo.t() | :unset), :alteracao_tomador => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :aquaviario => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAquaviario.t() | :unset), :caracteristica_servico => (String.t() | :unset), :caracteristica_transporte => (String.t() | :unset), :carga => Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCarga.t(), :cobranca => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCobranca.t() | :unset), :contribuicao_tomador => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cte_referenciado => (String.t() | :unset), :data_emissao => ((String.t() | nil) | :unset), :destinatario => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDestinatario.t() | :unset), :detalhes_retirada => (String.t() | :unset), :documentos_anteriores => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosAnterioresItem.t()] | :unset), :documentos_fiscais => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItem.t()] | :unset), :dutoviario => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDutoviario.t() | :unset), :entrega => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadEntrega.t() | :unset), :expedidor => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadExpedidor.t() | :unset), :ferroviario => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadFerroviario.t() | :unset), :finalidade => String.t(), :globalizado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :impostos => Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostos.t(), :indicador_tomador => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :informacao_globalizado => (String.t() | :unset), :local_inicio_prestacao => Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadLocalInicioPrestacao.t(), :local_termino_prestacao => Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadLocalTerminoPrestacao.t(), :modalidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :modelo => String.t(), :multimodal => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadMultimodal.t() | :unset), :natureza_operacao => String.t(), :observacoes_contribuinte => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadObservacoesContribuinteItem.t()] | :unset), :observacoes_fisco => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadObservacoesFiscoItem.t()] | :unset), :observacoes_gerais => (String.t() | :unset), :origem => (String.t() | :unset), :pagamentos_vinculados => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadPagamentosVinculadosItem.t()] | :unset), :recebedor => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRecebedor.t() | :unset), :remetente => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRemetente.t() | :unset), :rodoviario => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviario.t() | :unset), :servico => Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadServico.t(), :tomador => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadTomador.t() | :unset), :veiculos_novos => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadVeiculosNovosItem.t()] | :unset), :url_notificacao => (String.t() | :unset), :nfe_xml => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aereo", :aereo, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereo}}, {"alteracao_tomador", :alteracao_tomador, {:optional, :scalar}}, {"ambiente", :ambiente, :scalar}, {"aquaviario", :aquaviario, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAquaviario}}, {"caracteristica_servico", :caracteristica_servico, {:optional, :string}}, {"caracteristica_transporte", :caracteristica_transporte, {:optional, :string}}, {"carga", :carga, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCarga}, {"cobranca", :cobranca, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCobranca}}, {"contribuicao_tomador", :contribuicao_tomador, :scalar}, {"cte_referenciado", :cte_referenciado, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, {:nullable, :string}}}, {"destinatario", :destinatario, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDestinatario}}, {"detalhes_retirada", :detalhes_retirada, {:optional, :string}}, {"documentos_anteriores", :documentos_anteriores, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosAnterioresItem}}}, {"documentos_fiscais", :documentos_fiscais, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItem}}}, {"dutoviario", :dutoviario, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDutoviario}}, {"entrega", :entrega, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadEntrega}}, {"expedidor", :expedidor, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadExpedidor}}, {"ferroviario", :ferroviario, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadFerroviario}}, {"finalidade", :finalidade, :string}, {"globalizado", :globalizado, {:optional, :scalar}}, {"impostos", :impostos, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostos}, {"indicador_tomador", :indicador_tomador, :scalar}, {"informacao_globalizado", :informacao_globalizado, {:optional, :string}}, {"local_inicio_prestacao", :local_inicio_prestacao, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadLocalInicioPrestacao}, {"local_termino_prestacao", :local_termino_prestacao, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadLocalTerminoPrestacao}, {"modalidade", :modalidade, :scalar}, {"modelo", :modelo, :string}, {"multimodal", :multimodal, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadMultimodal}}, {"natureza_operacao", :natureza_operacao, :string}, {"observacoes_contribuinte", :observacoes_contribuinte, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadObservacoesContribuinteItem}}}, {"observacoes_fisco", :observacoes_fisco, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadObservacoesFiscoItem}}}, {"observacoes_gerais", :observacoes_gerais, {:optional, :string}}, {"origem", :origem, {:optional, :string}}, {"pagamentos_vinculados", :pagamentos_vinculados, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadPagamentosVinculadosItem}}}, {"recebedor", :recebedor, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRecebedor}}, {"remetente", :remetente, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRemetente}}, {"rodoviario", :rodoviario, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviario}}, {"servico", :servico, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadServico}, {"tomador", :tomador, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadTomador}}, {"veiculos_novos", :veiculos_novos, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadVeiculosNovosItem}}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nfe_xml", :nfe_xml, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereo do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:natureza_carga, :unset}, {:numero_minuta, :unset}, {:numero_oca, :unset}, {:previsao_entrega, :unset}, {:produtos_perigosos, :unset}, {:tarifa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:natureza_carga => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereoNaturezaCarga.t() | :unset), :numero_minuta => (String.t() | :unset), :numero_oca => (String.t() | :unset), :previsao_entrega => (String.t() | :unset), :produtos_perigosos => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereoProdutosPerigososItem.t()] | :unset), :tarifa => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereoTarifa.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"natureza_carga", :natureza_carga, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereoNaturezaCarga}}, {"numero_minuta", :numero_minuta, {:optional, :string}}, {"numero_oca", :numero_oca, {:optional, :string}}, {"previsao_entrega", :previsao_entrega, {:optional, :string}}, {"produtos_perigosos", :produtos_perigosos, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereoProdutosPerigososItem}}}, {"tarifa", :tarifa, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereoTarifa}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadAereo"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereoNaturezaCarga do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:dimensoes, :unset}, {:informacoes_manuseio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:dimensoes => (String.t() | :unset), :informacoes_manuseio => ([String.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"dimensoes", :dimensoes, {:optional, :string}}, {"informacoes_manuseio", :informacoes_manuseio, {:optional, {:array, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadAereoNaturezaCarga"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereoProdutosPerigososItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao_volumes, :unset}, {:numero_onu, :unset}, {:quantidade_total, :unset}, {:unidade_medida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao_volumes => String.t(), :numero_onu => String.t(), :quantidade_total => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_medida => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao_volumes", :descricao_volumes, :string}, {"numero_onu", :numero_onu, :string}, {"quantidade_total", :quantidade_total, :scalar}, {"unidade_medida", :unidade_medida, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadAereoProdutosPerigososItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAereoTarifa do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classe, :unset}, {:codigo, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classe => (String.t() | :unset), :codigo => (String.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classe", :classe, {:optional, :string}}, {"codigo", :codigo, {:optional, :string}}, {"valor", :valor, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadAereoTarifa"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAquaviario do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:adicional_frete, :unset}, {:balsas, :unset}, {:containers, :unset}, {:direcao, :unset}, {:identificacao_navio, :unset}, {:irin_navio, :unset}, {:numero_viagem, :unset}, {:tipo_navegacao, :unset}, {:valor_prestacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:adicional_frete => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :balsas => ([String.t()] | :unset), :containers => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAquaviarioContainersItem.t()] | :unset), :direcao => (String.t() | :unset), :identificacao_navio => (String.t() | :unset), :irin_navio => (String.t() | :unset), :numero_viagem => (String.t() | :unset), :tipo_navegacao => (String.t() | :unset), :valor_prestacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"adicional_frete", :adicional_frete, {:optional, :scalar}}, {"balsas", :balsas, {:optional, {:array, :string}}}, {"containers", :containers, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAquaviarioContainersItem}}}, {"direcao", :direcao, {:optional, :string}}, {"identificacao_navio", :identificacao_navio, {:optional, :string}}, {"irin_navio", :irin_navio, {:optional, :string}}, {"numero_viagem", :numero_viagem, {:optional, :string}}, {"tipo_navegacao", :tipo_navegacao, {:optional, :string}}, {"valor_prestacao", :valor_prestacao, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadAquaviario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAquaviarioContainersItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:documentos, :unset}, {:identificacao, :unset}, {:lacres, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:documentos => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAquaviarioContainersItemDocumentosItem.t()] | :unset), :identificacao => String.t(), :lacres => ([String.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"documentos", :documentos, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAquaviarioContainersItemDocumentosItem}}}, {"identificacao", :identificacao, :string}, {"lacres", :lacres, {:optional, {:array, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadAquaviarioContainersItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadAquaviarioContainersItemDocumentosItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:medida_rateada, :unset}, {:numero, :unset}, {:serie, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :medida_rateada => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero => (String.t() | :unset), :serie => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"medida_rateada", :medida_rateada, {:optional, :scalar}}, {"numero", :numero, {:optional, :string}}, {"serie", :serie, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadAquaviarioContainersItemDocumentosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCarga do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:caracteristicas, :unset}, {:fluxo, :unset}, {:produto_predominante, :unset}, {:quantidades, :unset}, {:seguro, :unset}, {:valor_averbacao, :unset}, {:valor_total, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:caracteristicas => (String.t() | :unset), :fluxo => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCargaFluxo.t() | :unset), :produto_predominante => String.t(), :quantidades => [Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCargaQuantidadesItem.t()], :seguro => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCargaSeguro.t() | :unset), :valor_averbacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"caracteristicas", :caracteristicas, {:optional, :string}}, {"fluxo", :fluxo, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCargaFluxo}}, {"produto_predominante", :produto_predominante, :string}, {"quantidades", :quantidades, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCargaQuantidadesItem}}, {"seguro", :seguro, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCargaSeguro}}, {"valor_averbacao", :valor_averbacao, {:optional, :scalar}}, {"valor_total", :valor_total, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadCarga"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCargaFluxo do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:destino, :unset}, {:origem, :unset}, {:passagens, :unset}, {:rota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:destino => (String.t() | :unset), :origem => (String.t() | :unset), :passagens => ([String.t()] | :unset), :rota => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"destino", :destino, {:optional, :string}}, {"origem", :origem, {:optional, :string}}, {"passagens", :passagens, {:optional, {:array, :string}}}, {"rota", :rota, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadCargaFluxo"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCargaQuantidadesItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade, :unset}, {:tipo_medida, :unset}, {:unidade_medida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :tipo_medida => (String.t() | :unset), :unidade_medida => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade", :quantidade, :scalar}, {"tipo_medida", :tipo_medida, {:optional, :string}}, {"unidade_medida", :unidade_medida, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadCargaQuantidadesItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCargaSeguro do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nome_razao_seguradora, :unset}, {:numero_apolice, :unset}, {:responsavel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nome_razao_seguradora => (String.t() | :unset), :numero_apolice => (String.t() | :unset), :responsavel => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nome_razao_seguradora", :nome_razao_seguradora, {:optional, :string}}, {"numero_apolice", :numero_apolice, {:optional, :string}}, {"responsavel", :responsavel, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadCargaSeguro"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCobranca do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:duplicatas, :unset}, {:fatura, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:duplicatas => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCobrancaDuplicatasItem.t()] | :unset), :fatura => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCobrancaFatura.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"duplicatas", :duplicatas, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCobrancaDuplicatasItem}}}, {"fatura", :fatura, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCobrancaFatura}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadCobranca"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCobrancaDuplicatasItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_vencimento, :unset}, {:numero, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_vencimento => (String.t() | :unset), :numero => (String.t() | :unset), :valor => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_vencimento", :data_vencimento, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"valor", :valor, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadCobrancaDuplicatasItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadCobrancaFatura do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:numero, :unset}, {:valor_desconto, :unset}, {:valor_liquido, :unset}, {:valor_original, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:numero => (String.t() | :unset), :valor_desconto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_liquido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_original => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"numero", :numero, {:optional, :string}}, {"valor_desconto", :valor_desconto, {:optional, :scalar}}, {"valor_liquido", :valor_liquido, {:optional, :scalar}}, {"valor_original", :valor_original, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadCobrancaFatura"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDestinatario do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:cnpj, :unset}, {:codigo_pais, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:ie, :unset}, {:isuf, :unset}, {:nome_razao, :unset}, {:numero, :unset}, {:telefone, :unset}, {:uf, :unset}, {:nome_fantasia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :complemento => (String.t() | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (String.t() | :unset), :ie => (String.t() | :unset), :isuf => (String.t() | :unset), :nome_razao => (String.t() | :unset), :numero => (String.t() | :unset), :telefone => (String.t() | :unset), :uf => (String.t() | :unset), :nome_fantasia => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"isuf", :isuf, {:optional, :string}}, {"nome_razao", :nome_razao, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"nome_fantasia", :nome_fantasia, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadDestinatario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosAnterioresItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:documentos, :unset}, {:emissor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:documentos => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosAnterioresItemDocumentosItem.t()] | :unset), :emissor => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosAnterioresItemEmissor.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"documentos", :documentos, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosAnterioresItemDocumentosItem}}}, {"emissor", :emissor, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosAnterioresItemEmissor}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadDocumentosAnterioresItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosAnterioresItemDocumentosItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:data_emissao, :unset}, {:numero, :unset}, {:serie, :unset}, {:tipo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :data_emissao => (String.t() | :unset), :numero => (String.t() | :unset), :serie => (String.t() | :unset), :tipo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"serie", :serie, {:optional, :string}}, {"tipo", :tipo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadDocumentosAnterioresItemDocumentosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosAnterioresItemEmissor do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:ie, :unset}, {:nome_razao, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :ie => (String.t() | :unset), :nome_razao => (String.t() | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"nome_razao", :nome_razao, {:optional, :string}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadDocumentosAnterioresItemEmissor"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:base_calculo, :unset}, {:base_calculo_st, :unset}, {:cfop, :unset}, {:chave, :unset}, {:data_emissao, :unset}, {:descricao, :unset}, {:icms, :unset}, {:icms_st, :unset}, {:modelo, :unset}, {:numero, :unset}, {:numero_pedido, :unset}, {:numero_romaneio, :unset}, {:peso, :unset}, {:pin, :unset}, {:previsao_entrega, :unset}, {:serie, :unset}, {:tipo, :unset}, {:unidades_carga, :unset}, {:unidades_transporte, :unset}, {:valor_produtos, :unset}, {:valor_total, :unset}, {:CFOP, :unset}, {:subserie, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :base_calculo_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cfop => (String.t() | :unset), :chave => (String.t() | :unset), :data_emissao => (String.t() | :unset), :descricao => (String.t() | :unset), :icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :icms_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :numero => (String.t() | :unset), :numero_pedido => (String.t() | :unset), :numero_romaneio => (String.t() | :unset), :peso => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pin => (String.t() | :unset), :previsao_entrega => (String.t() | :unset), :serie => (String.t() | :unset), :tipo => (String.t() | :unset), :unidades_carga => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesCargaItem.t()] | :unset), :unidades_transporte => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItem.t()] | :unset), :valor_produtos => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CFOP => (String.t() | :unset), :subserie => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"base_calculo", :base_calculo, {:optional, :scalar}}, {"base_calculo_st", :base_calculo_st, {:optional, :scalar}}, {"cfop", :cfop, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"descricao", :descricao, {:optional, :string}}, {"icms", :icms, {:optional, :scalar}}, {"icms_st", :icms_st, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"numero_pedido", :numero_pedido, {:optional, :string}}, {"numero_romaneio", :numero_romaneio, {:optional, :string}}, {"peso", :peso, {:optional, :scalar}}, {"pin", :pin, {:optional, :string}}, {"previsao_entrega", :previsao_entrega, {:optional, :string}}, {"serie", :serie, {:optional, :string}}, {"tipo", :tipo, {:optional, :string}}, {"unidades_carga", :unidades_carga, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesCargaItem}}}, {"unidades_transporte", :unidades_transporte, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItem}}}, {"valor_produtos", :valor_produtos, {:optional, :scalar}}, {"valor_total", :valor_total, {:optional, :scalar}}, {"CFOP", :CFOP, {:optional, :string}}, {"subserie", :subserie, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadDocumentosFiscaisItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesCargaItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:identificacao, :unset}, {:lacres, :unset}, {:quantidade_rateada, :unset}, {:tipo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:identificacao => String.t(), :lacres => ([String.t()] | :unset), :quantidade_rateada => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"identificacao", :identificacao, :string}, {"lacres", :lacres, {:optional, {:array, :string}}}, {"quantidade_rateada", :quantidade_rateada, {:optional, :scalar}}, {"tipo", :tipo, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesCargaItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:identificacao, :unset}, {:lacres, :unset}, {:quantidade_rateada, :unset}, {:tipo, :unset}, {:unidades_carga, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:identificacao => String.t(), :lacres => ([String.t()] | :unset), :quantidade_rateada => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo => String.t(), :unidades_carga => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItemUnidadesCargaItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"identificacao", :identificacao, :string}, {"lacres", :lacres, {:optional, {:array, :string}}}, {"quantidade_rateada", :quantidade_rateada, {:optional, :scalar}}, {"tipo", :tipo, :string}, {"unidades_carga", :unidades_carga, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItemUnidadesCargaItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItemUnidadesCargaItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:identificacao, :unset}, {:lacres, :unset}, {:quantidade_rateada, :unset}, {:tipo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:identificacao => String.t(), :lacres => ([String.t()] | :unset), :quantidade_rateada => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"identificacao", :identificacao, :string}, {"lacres", :lacres, {:optional, {:array, :string}}}, {"quantidade_rateada", :quantidade_rateada, {:optional, :scalar}}, {"tipo", :tipo, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadDocumentosFiscaisItemUnidadesTransporteItemUnidadesCargaItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadDutoviario do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_inicio_prestacao, :unset}, {:data_termino_prestacao, :unset}, {:valor_tarifa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_inicio_prestacao => (String.t() | :unset), :data_termino_prestacao => (String.t() | :unset), :valor_tarifa => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_inicio_prestacao", :data_inicio_prestacao, {:optional, :string}}, {"data_termino_prestacao", :data_termino_prestacao, {:optional, :string}}, {"valor_tarifa", :valor_tarifa, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadDutoviario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadEntrega do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data, :unset}, {:data_final, :unset}, {:data_inicial, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data => (String.t() | :unset), :data_final => (String.t() | :unset), :data_inicial => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data", :data, {:optional, :string}}, {"data_final", :data_final, {:optional, :string}}, {"data_inicial", :data_inicial, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadEntrega"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadExpedidor do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:cnpj, :unset}, {:codigo_pais, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:ie, :unset}, {:nome_razao, :unset}, {:numero, :unset}, {:telefone, :unset}, {:uf, :unset}, {:nome_fantasia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :complemento => (String.t() | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (String.t() | :unset), :ie => (String.t() | :unset), :nome_razao => (String.t() | :unset), :numero => (String.t() | :unset), :telefone => (String.t() | :unset), :uf => (String.t() | :unset), :nome_fantasia => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"nome_razao", :nome_razao, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"nome_fantasia", :nome_fantasia, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadExpedidor"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadFerroviario do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cte_origem, :unset}, {:ferrovias, :unset}, {:fluxo, :unset}, {:responsavel_emissao, :unset}, {:responsavel_faturamento, :unset}, {:tipo_trafego, :unset}, {:valor_frete, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cte_origem => (String.t() | :unset), :ferrovias => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadFerroviarioFerroviasItem.t()] | :unset), :fluxo => (String.t() | :unset), :responsavel_emissao => (String.t() | :unset), :responsavel_faturamento => (String.t() | :unset), :tipo_trafego => (String.t() | :unset), :valor_frete => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cte_origem", :cte_origem, {:optional, :string}}, {"ferrovias", :ferrovias, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadFerroviarioFerroviasItem}}}, {"fluxo", :fluxo, {:optional, :string}}, {"responsavel_emissao", :responsavel_emissao, {:optional, :string}}, {"responsavel_faturamento", :responsavel_faturamento, {:optional, :string}}, {"tipo_trafego", :tipo_trafego, {:optional, :string}}, {"valor_frete", :valor_frete, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadFerroviario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadFerroviarioFerroviasItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:cnpj, :unset}, {:complemento, :unset}, {:endereco, :unset}, {:ie, :unset}, {:nome_razao, :unset}, {:numero, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => String.t(), :cnpj => String.t(), :complemento => (String.t() | :unset), :endereco => String.t(), :ie => (String.t() | :unset), :nome_razao => String.t(), :numero => (String.t() | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, :string}, {"cnpj", :cnpj, :string}, {"complemento", :complemento, {:optional, :string}}, {"endereco", :endereco, :string}, {"ie", :ie, {:optional, :string}}, {"nome_razao", :nome_razao, :string}, {"numero", :numero, {:optional, :string}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadFerroviarioFerroviasItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostos do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:beneficio_fiscal, :unset}, {:cfop, :unset}, {:classificacao_tributaria, :unset}, {:cofins, :unset}, {:csll, :unset}, {:icms, :unset}, {:inss, :unset}, {:ir, :unset}, {:pis, :unset}, {:ibs_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:beneficio_fiscal => (String.t() | :unset), :cfop => String.t(), :classificacao_tributaria => String.t(), :cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :csll => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :icms => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIcms.t() | :unset), :inss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ir => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ibs_cbs => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"beneficio_fiscal", :beneficio_fiscal, {:optional, :string}}, {"cfop", :cfop, :string}, {"classificacao_tributaria", :classificacao_tributaria, :string}, {"cofins", :cofins, {:optional, :scalar}}, {"csll", :csll, {:optional, :scalar}}, {"icms", :icms, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIcms}}, {"inss", :inss, {:optional, :scalar}}, {"ir", :ir, {:optional, :scalar}}, {"pis", :pis, {:optional, :scalar}}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadImpostos"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIcms do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:aliquota_st_retido, :unset}, {:bc_st_retido, :unset}, {:credito_outorgado, :unset}, {:devido_origem, :unset}, {:partilha, :unset}, {:percentual_reducao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_st_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_st_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :credito_outorgado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :devido_origem => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :partilha => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIcmsPartilha.t() | :unset), :percentual_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :scalar}}, {"aliquota_st_retido", :aliquota_st_retido, {:optional, :scalar}}, {"bc_st_retido", :bc_st_retido, {:optional, :scalar}}, {"credito_outorgado", :credito_outorgado, {:optional, :scalar}}, {"devido_origem", :devido_origem, {:optional, :scalar}}, {"partilha", :partilha, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIcmsPartilha}}, {"percentual_reducao", :percentual_reducao, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadImpostosIcms"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIcmsPartilha do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_fcp_uf_destino, :unset}, {:aliquota_icms_interestadual, :unset}, {:aliquota_icms_uf_destino, :unset}, {:aliquota_icms_uf_origem, :unset}, {:base_calculo, :unset}, {:valor_icms_uf_remetente, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_fcp_uf_destino => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_icms_interestadual => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_icms_uf_destino => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_icms_uf_origem => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_icms_uf_remetente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_fcp_uf_destino", :aliquota_fcp_uf_destino, {:optional, :scalar}}, {"aliquota_icms_interestadual", :aliquota_icms_interestadual, {:optional, :scalar}}, {"aliquota_icms_uf_destino", :aliquota_icms_uf_destino, {:optional, :scalar}}, {"aliquota_icms_uf_origem", :aliquota_icms_uf_origem, {:optional, :scalar}}, {"base_calculo", :base_calculo, {:optional, :scalar}}, {"valor_icms_uf_remetente", :valor_icms_uf_remetente, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadImpostosIcmsPartilha"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbs do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:compra_governamental, :unset}, {:estorno_credito, :unset}, {:indicador_doacao, :unset}, {:situacao_tributaria, :unset}, {:classificacao_tributaria, :unset}, {:situacao_tributaria_regular, :unset}, {:classificacao_tributaria_regular, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:compra_governamental => ((Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsCompraGovernamentalVariant0.t() | nil) | :unset), :estorno_credito => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsEstornoCredito.t() | :unset), :indicador_doacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :situacao_tributaria => (String.t() | :unset), :classificacao_tributaria => (String.t() | :unset), :situacao_tributaria_regular => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :ibs_estadual => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsIbsMunicipal.t() | :unset), :cbs => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsCbs.t() | :unset), :credito_presumido => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsCreditoPresumido.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"compra_governamental", :compra_governamental, {:optional, {:nullable, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsCompraGovernamentalVariant0}}}, {"estorno_credito", :estorno_credito, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsEstornoCredito}}, {"indicador_doacao", :indicador_doacao, {:optional, :scalar}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :string}}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsIbsMunicipal}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsCbs}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsCreditoPresumido}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsCompraGovernamentalVariant0 do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_reducao, :unset}, {:ente, :unset}, {:referencias_dfe, :unset}, {:tipo_operacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :referencias_dfe => (([String.t()] | nil) | :unset), :tipo_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_reducao", :aliquota_reducao, {:optional, :scalar}}, {"ente", :ente, {:optional, :scalar}}, {"referencias_dfe", :referencias_dfe, {:optional, {:nullable, {:array, :string}}}}, {"tipo_operacao", :tipo_operacao, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsCompraGovernamentalVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsEstornoCredito do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_cbs, :unset}, {:valor_ibs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_cbs", :valor_cbs, {:optional, :scalar}}, {"valor_ibs", :valor_ibs, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsEstornoCredito"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_devolvido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_devolvido", :valor_devolvido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_devolvido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_devolvido", :valor_devolvido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsCbs do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_devolvido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_devolvido", :valor_devolvido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadImpostosIbsCbsCreditoPresumido do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => (String.t() | :unset), :aliquota_ibs => (String.t() | :unset), :aliquota_cbs => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, {:optional, :string}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :string}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadImpostosIbsCbsCreditoPresumido"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadLocalInicioPrestacao do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cidade, :unset}, {:cod_ibge, :unset}, {:codigo_municipio, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cidade => (String.t() | :unset), :cod_ibge => (String.t() | :unset), :codigo_municipio => ((String.t() | nil) | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cidade", :cidade, {:optional, :string}}, {"cod_ibge", :cod_ibge, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, {:nullable, :string}}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadLocalInicioPrestacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadLocalTerminoPrestacao do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cidade, :unset}, {:cod_ibge, :unset}, {:codigo_municipio, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cidade => (String.t() | :unset), :cod_ibge => (String.t() | :unset), :codigo_municipio => ((String.t() | nil) | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cidade", :cidade, {:optional, :string}}, {"cod_ibge", :cod_ibge, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, {:nullable, :string}}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadLocalTerminoPrestacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadMultimodal do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cotm, :unset}, {:negociavel, :unset}, {:seguro, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cotm => (String.t() | :unset), :negociavel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :seguro => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadMultimodalSeguro.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cotm", :cotm, {:optional, :string}}, {"negociavel", :negociavel, {:optional, :scalar}}, {"seguro", :seguro, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadMultimodalSeguro}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadMultimodal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadMultimodalSeguro do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj_seguradora, :unset}, {:nome_razao_seguradora, :unset}, {:numero_apolice, :unset}, {:numero_averbacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj_seguradora => (String.t() | :unset), :nome_razao_seguradora => (String.t() | :unset), :numero_apolice => (String.t() | :unset), :numero_averbacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj_seguradora", :cnpj_seguradora, {:optional, :string}}, {"nome_razao_seguradora", :nome_razao_seguradora, {:optional, :string}}, {"numero_apolice", :numero_apolice, {:optional, :string}}, {"numero_averbacao", :numero_averbacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadMultimodalSeguro"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadObservacoesContribuinteItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao, :unset}, {:identificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao => String.t(), :identificacao => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao", :descricao, :string}, {"identificacao", :identificacao, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadObservacoesContribuinteItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadObservacoesFiscoItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao, :unset}, {:identificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao => String.t(), :identificacao => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao", :descricao, :string}, {"identificacao", :identificacao, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadObservacoesFiscoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadPagamentosVinculadosItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj_base_psp, :unset}, {:cnpj_recebedor, :unset}, {:id_transacao, :unset}, {:n_pag, :unset}, {:tp_meio_pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj_base_psp => String.t(), :cnpj_recebedor => String.t(), :id_transacao => String.t(), :n_pag => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :tp_meio_pagamento => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj_base_psp", :cnpj_base_psp, :string}, {"cnpj_recebedor", :cnpj_recebedor, :string}, {"id_transacao", :id_transacao, :string}, {"n_pag", :n_pag, :scalar}, {"tp_meio_pagamento", :tp_meio_pagamento, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadPagamentosVinculadosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRecebedor do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:cnpj, :unset}, {:codigo_pais, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:ie, :unset}, {:nome_razao, :unset}, {:numero, :unset}, {:telefone, :unset}, {:uf, :unset}, {:nome_fantasia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :complemento => (String.t() | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (String.t() | :unset), :ie => (String.t() | :unset), :nome_razao => (String.t() | :unset), :numero => (String.t() | :unset), :telefone => (String.t() | :unset), :uf => (String.t() | :unset), :nome_fantasia => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"nome_razao", :nome_razao, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"nome_fantasia", :nome_fantasia, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadRecebedor"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRemetente do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:cnpj, :unset}, {:codigo_pais, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:ie, :unset}, {:nome_fantasia, :unset}, {:nome_razao, :unset}, {:numero, :unset}, {:telefone, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :complemento => (String.t() | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (String.t() | :unset), :ie => (String.t() | :unset), :nome_fantasia => (String.t() | :unset), :nome_razao => (String.t() | :unset), :numero => (String.t() | :unset), :telefone => (String.t() | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"nome_fantasia", :nome_fantasia, {:optional, :string}}, {"nome_razao", :nome_razao, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadRemetente"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviario do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_viagem, :unset}, {:ordens_coleta, :unset}, {:registro_estadual_cte_os, :unset}, {:rntrc, :unset}, {:taf_cte_os, :unset}, {:tipo_fretamento, :unset}, {:veiculo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_viagem => (String.t() | :unset), :ordens_coleta => ([Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioOrdensColetaItem.t()] | :unset), :registro_estadual_cte_os => (String.t() | :unset), :rntrc => (String.t() | :unset), :taf_cte_os => (String.t() | :unset), :tipo_fretamento => (String.t() | :unset), :veiculo => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioVeiculo.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_viagem", :data_viagem, {:optional, :string}}, {"ordens_coleta", :ordens_coleta, {:optional, {:array, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioOrdensColetaItem}}}, {"registro_estadual_cte_os", :registro_estadual_cte_os, {:optional, :string}}, {"rntrc", :rntrc, {:optional, :string}}, {"taf_cte_os", :taf_cte_os, {:optional, :string}}, {"tipo_fretamento", :tipo_fretamento, {:optional, :string}}, {"veiculo", :veiculo, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioVeiculo}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadRodoviario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioOrdensColetaItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_emissao, :unset}, {:emissor, :unset}, {:numero, :unset}, {:serie, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_emissao => (String.t() | :unset), :emissor => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioOrdensColetaItemEmissor.t() | :unset), :numero => (String.t() | :unset), :serie => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_emissao", :data_emissao, {:optional, :string}}, {"emissor", :emissor, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioOrdensColetaItemEmissor}}, {"numero", :numero, {:optional, :string}}, {"serie", :serie, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadRodoviarioOrdensColetaItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioOrdensColetaItemEmissor do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:ie, :unset}, {:telefone, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :ie => (String.t() | :unset), :telefone => (String.t() | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadRodoviarioOrdensColetaItemEmissor"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioVeiculo do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:placa, :unset}, {:proprietario, :unset}, {:renavam, :unset}, {:uf_licenciamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:placa => (String.t() | :unset), :proprietario => (Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioVeiculoProprietario.t() | :unset), :renavam => (String.t() | :unset), :uf_licenciamento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"placa", :placa, {:optional, :string}}, {"proprietario", :proprietario, {:optional, Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioVeiculoProprietario}}, {"renavam", :renavam, {:optional, :string}}, {"uf_licenciamento", :uf_licenciamento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadRodoviarioVeiculo"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadRodoviarioVeiculoProprietario do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:ie, :unset}, {:nome_razao, :unset}, {:registro_estadual, :unset}, {:taf, :unset}, {:tipo, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :ie => (String.t() | :unset), :nome_razao => (String.t() | :unset), :registro_estadual => (String.t() | :unset), :taf => (String.t() | :unset), :tipo => (String.t() | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"nome_razao", :nome_razao, {:optional, :string}}, {"registro_estadual", :registro_estadual, {:optional, :string}}, {"taf", :taf, {:optional, :string}}, {"tipo", :tipo, {:optional, :string}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadRodoviarioVeiculoProprietario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadServico do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:componentes, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:valor_recebido, :unset}, {:valor_total, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:componentes => ([Webmania.JSON.value()] | :unset), :descricao => (String.t() | :unset), :tipo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_recebido => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_total => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"componentes", :componentes, {:optional, {:array, :value}}}, {"descricao", :descricao, {:optional, :string}}, {"tipo", :tipo, {:optional, :scalar}}, {"valor_recebido", :valor_recebido, :scalar}, {"valor_total", :valor_total, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadServico"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadTomador do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:cnpj, :unset}, {:codigo_pais, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:ie, :unset}, {:nome_fantasia, :unset}, {:nome_razao, :unset}, {:numero, :unset}, {:telefone, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :complemento => (String.t() | :unset), :cpf => (String.t() | :unset), :email => (String.t() | :unset), :endereco => (String.t() | :unset), :ie => (String.t() | :unset), :nome_fantasia => (String.t() | :unset), :nome_razao => (String.t() | :unset), :numero => (String.t() | :unset), :telefone => (String.t() | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"nome_fantasia", :nome_fantasia, {:optional, :string}}, {"nome_razao", :nome_razao, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadTomador"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueCtePayloadVeiculosNovosItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chassi, :unset}, {:cor, :unset}, {:cor_descricao, :unset}, {:marca_modelo, :unset}, {:valor_frete_unitario, :unset}, {:valor_unitario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chassi => String.t(), :cor => String.t(), :cor_descricao => String.t(), :marca_modelo => String.t(), :valor_frete_unitario => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_unitario => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chassi", :chassi, :string}, {"cor", :cor, :string}, {"cor_descricao", :cor_descricao, :string}, {"marca_modelo", :marca_modelo, :string}, {"valor_frete_unitario", :valor_frete_unitario, :scalar}, {"valor_unitario", :valor_unitario, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueCtePayloadVeiculosNovosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterIssueSimplifiedCtePayload do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:modelo, :unset}, {:nfe_xml, :unset}, {:origem, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :modelo => String.t(), :nfe_xml => String.t(), :origem => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, :scalar}, {"modelo", :modelo, :string}, {"nfe_xml", :nfe_xml, :string}, {"origem", :origem, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterIssueSimplifiedCtePayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterCancelCtePayload do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:justificativa, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :justificativa => String.t(), :uuid => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"justificativa", :justificativa, :string}, {"uuid", :uuid, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterCancelCtePayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterCorrectCtePayload do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:alteracoes, :unset}, {:ambiente, :unset}, {:chave, :unset}, {:origem, :unset}, {:sequencia, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:alteracoes => [Webmania.Models.Api2CteIssuance.EmitterCorrectCtePayloadAlteracoesItem.t()], :ambiente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :chave => (Webmania.JSON.value() | :unset), :origem => (String.t() | :unset), :sequencia => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"alteracoes", :alteracoes, {:array, Webmania.Models.Api2CteIssuance.EmitterCorrectCtePayloadAlteracoesItem}}, {"ambiente", :ambiente, {:optional, :scalar}}, {"chave", :chave, {:optional, :value}}, {"origem", :origem, {:optional, :string}}, {"sequencia", :sequencia, {:optional, :scalar}}, {"uuid", :uuid, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterCorrectCtePayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterCorrectCtePayloadAlteracoesItem do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:campo, :unset}, {:grupo, :unset}, {:item, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:campo => String.t(), :grupo => String.t(), :item => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"campo", :campo, :string}, {"grupo", :grupo, :string}, {"item", :item, {:optional, :scalar}}, {"valor", :valor, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterCorrectCtePayloadAlteracoesItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterConfirmCteDeliveryPayload do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:comprovante, :unset}, {:data_hora, :unset}, {:documento_recebedor, :unset}, {:informacoes, :unset}, {:latitude, :unset}, {:longitude, :unset}, {:nome_recebedor, :unset}, {:notas_fiscais, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :comprovante => String.t(), :data_hora => (String.t() | :unset), :documento_recebedor => (String.t() | :unset), :informacoes => (String.t() | :unset), :latitude => (String.t() | :unset), :longitude => (String.t() | :unset), :nome_recebedor => (String.t() | :unset), :notas_fiscais => ([String.t()] | :unset), :uuid => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"comprovante", :comprovante, :string}, {"data_hora", :data_hora, {:optional, :string}}, {"documento_recebedor", :documento_recebedor, {:optional, :string}}, {"informacoes", :informacoes, {:optional, :string}}, {"latitude", :latitude, {:optional, :string}}, {"longitude", :longitude, {:optional, :string}}, {"nome_recebedor", :nome_recebedor, {:optional, :string}}, {"notas_fiscais", :notas_fiscais, {:optional, {:array, :string}}}, {"uuid", :uuid, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterConfirmCteDeliveryPayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterCancelCteDeliveryPayload do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:protocolo, :unset}, {:sequencia, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :protocolo => (String.t() | :unset), :sequencia => (String.t() | :unset), :uuid => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"protocolo", :protocolo, {:optional, :string}}, {"sequencia", :sequencia, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterCancelCteDeliveryPayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterLinkCtePaymentPayload do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:pagamento, :unset}, {:protocolo, :unset}, {:sequencia, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :pagamento => Webmania.Models.Api2CteIssuance.EmitterLinkCtePaymentPayloadPagamento.t(), :protocolo => ((String.t() | nil) | :unset), :sequencia => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"pagamento", :pagamento, Webmania.Models.Api2CteIssuance.EmitterLinkCtePaymentPayloadPagamento}, {"protocolo", :protocolo, {:optional, {:nullable, :string}}}, {"sequencia", :sequencia, {:optional, :scalar}}, {"uuid", :uuid, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterLinkCtePaymentPayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterLinkCtePaymentPayloadPagamento do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj_base_psp, :unset}, {:cnpj_recebedor, :unset}, {:id_transacao, :unset}, {:n_pag, :unset}, {:tp_meio_pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj_base_psp => String.t(), :cnpj_recebedor => String.t(), :id_transacao => String.t(), :n_pag => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :tp_meio_pagamento => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj_base_psp", :cnpj_base_psp, :string}, {"cnpj_recebedor", :cnpj_recebedor, :string}, {"id_transacao", :id_transacao, :string}, {"n_pag", :n_pag, :scalar}, {"tp_meio_pagamento", :tp_meio_pagamento, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterLinkCtePaymentPayloadPagamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.EmitterCancelCtePaymentLinkPayload do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:protocolo, :unset}, {:protocolo_vinculacao, :unset}, {:sequencia, :unset}, {:sequencia_vinculacao, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :protocolo => ((String.t() | nil) | :unset), :protocolo_vinculacao => (String.t() | :unset), :sequencia => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :sequencia_vinculacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"protocolo", :protocolo, {:optional, {:nullable, :string}}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :string}}, {"sequencia", :sequencia, {:optional, :scalar}}, {"sequencia_vinculacao", :sequencia_vinculacao, {:optional, :scalar}}, {"uuid", :uuid, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::EmitterCancelCtePaymentLinkPayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteDocumentedGroup654 do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:numero, :unset}, {:status, :unset}, {:motivo, :unset}, {:epec, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:dacte, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :chave => (String.t() | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => (String.t() | :unset), :motivo => (String.t() | :unset), :epec => (boolean() | :unset), :xml => (String.t() | :unset), :xml_cancelamento => (String.t() | :unset), :dacte => (String.t() | :unset), :log => ([Webmania.JSON.value()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"serie", :serie, {:optional, :scalar}}, {"numero", :numero, {:optional, :scalar}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :string}}, {"epec", :epec, {:optional, :boolean}}, {"xml", :xml, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, :string}}, {"dacte", :dacte, {:optional, :string}}, {"log", :log, {:optional, {:array, :value}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteDocumentedGroup654"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteDocumentedGroup5669 do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:justificativa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :justificativa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"justificativa", :justificativa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteDocumentedGroup5669"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteDocumentedGroup5730 do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:comprovante, :unset}, {:nome_recebedor, :unset}, {:documento_recebedor, :unset}, {:notas_fiscais, :unset}, {:data_hora, :unset}, {:informacoes, :unset}, {:longitude, :unset}, {:latitude, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :comprovante => (String.t() | :unset), :nome_recebedor => (String.t() | :unset), :documento_recebedor => (String.t() | :unset), :notas_fiscais => (String.t() | :unset), :data_hora => (String.t() | :unset), :informacoes => (String.t() | :unset), :longitude => (String.t() | :unset), :latitude => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"comprovante", :comprovante, {:optional, :string}}, {"nome_recebedor", :nome_recebedor, {:optional, :string}}, {"documento_recebedor", :documento_recebedor, {:optional, :string}}, {"notas_fiscais", :notas_fiscais, {:optional, :string}}, {"data_hora", :data_hora, {:optional, :string}}, {"informacoes", :informacoes, {:optional, :string}}, {"longitude", :longitude, {:optional, :string}}, {"latitude", :latitude, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteDocumentedGroup5730"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteDocumentedGroup5835 do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:sequencia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :sequencia => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"sequencia", :sequencia, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteDocumentedGroup5835"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteDocumentedGroup5904 do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:alteracoes, :unset}, {:ambiente, :unset}, {:sequencia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :alteracoes => ([Webmania.JSON.value()] | :unset), :ambiente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :sequencia => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"alteracoes", :alteracoes, {:optional, {:array, :value}}}, {"ambiente", :ambiente, {:optional, :scalar}}, {"sequencia", :sequencia, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteDocumentedGroup5904"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteDocumentedGroup5949 do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:grupo, :unset}, {:campo, :unset}, {:valor, :unset}, {:item, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:grupo => (String.t() | :unset), :campo => (String.t() | :unset), :valor => (String.t() | :unset), :item => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"grupo", :grupo, {:optional, :string}}, {"campo", :campo, {:optional, :string}}, {"valor", :valor, {:optional, :string}}, {"item", :item, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteDocumentedGroup5949"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteDocumentedGroup6032 do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:protocolo, :unset}, {:sequencia, :unset}, {:pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :protocolo => (String.t() | :unset), :sequencia => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pagamento => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"protocolo", :protocolo, {:optional, :string}}, {"sequencia", :sequencia, {:optional, :scalar}}, {"pagamento", :pagamento, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteDocumentedGroup6032"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteDocumentedGroup6120 do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:protocolo, :unset}, {:protocolo_vinculacao, :unset}, {:sequencia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :protocolo => (String.t() | :unset), :protocolo_vinculacao => (String.t() | :unset), :sequencia => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"protocolo", :protocolo, {:optional, :string}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :string}}, {"sequencia", :sequencia, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteDocumentedGroup6120"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteServiceGroup do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:componentes, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:valor_recebido, :unset}, {:valor_total, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:componentes => ([Webmania.JSON.value()] | :unset), :descricao => (String.t() | :unset), :tipo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_recebido => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_total => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"componentes", :componentes, {:optional, {:array, :value}}}, {"descricao", :descricao, {:optional, :string}}, {"tipo", :tipo, {:optional, :scalar}}, {"valor_recebido", :valor_recebido, :scalar}, {"valor_total", :valor_total, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteServiceGroup"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2CteIssuance.CteOsServiceGroup do
  @moduledoc "Nominal model from the pinned api2_cte_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:componentes, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:valor_recebido, :unset}, {:valor_total, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:componentes => ([Webmania.JSON.value()] | :unset), :descricao => String.t(), :tipo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_recebido => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_total => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"componentes", :componentes, {:optional, {:array, :value}}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :scalar}, {"valor_recebido", :valor_recebido, :scalar}, {"valor_total", :valor_total, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_cte_issuance::CteOsServiceGroup"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
