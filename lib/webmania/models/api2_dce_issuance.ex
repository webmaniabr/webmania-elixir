# Generated. Run scripts/generate.py in the pinned Docker toolchain.
defmodule Webmania.Models.Api2DceIssuance.EmitterError do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:status, :unset}, {:configured, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => (String.t() | :unset), :message => (String.t() | :unset), :status => (boolean() | :unset), :configured => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, {:optional, :string}}, {"message", :message, {:optional, :string}}, {"status", :status, {:optional, :boolean}}, {"configured", :configured, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::EmitterError"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfseServiceCode do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:descricao, :unset}, {:id_cnae, :unset}, {:codigo_tributacao, :unset}, {:aliquota_sugerida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :descricao => String.t(), :id_cnae => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_tributacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_sugerida => (Webmania.Models.Api2DceIssuance.NfseServiceCodeAliquotaSugerida.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, :scalar}, {"descricao", :descricao, :string}, {"id_cnae", :id_cnae, {:optional, :scalar}}, {"codigo_tributacao", :codigo_tributacao, {:optional, :scalar}}, {"aliquota_sugerida", :aliquota_sugerida, {:optional, Webmania.Models.Api2DceIssuance.NfseServiceCodeAliquotaSugerida}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfseServiceCode"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfseServiceCodeAliquotaSugerida do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:iss, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"iss", :iss, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfseServiceCodeAliquotaSugerida"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfseProviderStatus do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:modelo, :unset}, {:versao, :unset}, {:ambientes, :unset}, {:autenticacao, :unset}, {:emissao, :unset}, {:funcoes, :unset}, {:pdf_nfse, :unset}, {:pdf_sincrono, :unset}, {:codigo_servico, :unset}, {:parametros_disponiveis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => boolean(), :modelo => (String.t() | :unset), :versao => (String.t() | :unset), :ambientes => [integer()], :autenticacao => [String.t()], :emissao => [String.t()], :funcoes => [String.t()], :pdf_nfse => boolean(), :pdf_sincrono => boolean(), :codigo_servico => ([Webmania.Models.Api2DceIssuance.NfseServiceCode.t()] | :unset), :parametros_disponiveis => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, :boolean}, {"modelo", :modelo, {:optional, :string}}, {"versao", :versao, {:optional, :string}}, {"ambientes", :ambientes, {:array, :i64}}, {"autenticacao", :autenticacao, {:array, :string}}, {"emissao", :emissao, {:array, :string}}, {"funcoes", :funcoes, {:array, :string}}, {"pdf_nfse", :pdf_nfse, :boolean}, {"pdf_sincrono", :pdf_sincrono, :boolean}, {"codigo_servico", :codigo_servico, {:optional, {:array, Webmania.Models.Api2DceIssuance.NfseServiceCode}}}, {"parametros_disponiveis", :parametros_disponiveis, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfseProviderStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfcomServiceStatus do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:operacional, :unset}, {:mensagem, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:operacional => boolean(), :mensagem => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"operacional", :operacional, :boolean}, {"mensagem", :mensagem, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfcomServiceStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfseFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:chave, :unset}, {:numero_lote, :unset}, {:serie_lote, :unset}, {:protocolo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:serie_rps, :unset}, {:numero_rps, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:atualizado_em, :unset}, {:motivo, :unset}, {:quantidade_rps, :unset}, {:nfse_substituida, :unset}, {:info_nfse, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :uuid => String.t(), :modelo => String.t(), :status => String.t(), :chave => (String.t() | :unset), :numero_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :serie_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :xml => (String.t() | :unset), :xml_cancelamento => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :atualizado_em => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfse_substituida => (Webmania.Models.Api2DceIssuance.NfseFiscalResponseNfseSubstituida.t() | :unset), :info_nfse => ([Webmania.Models.Api2DceIssuance.NfseFiscalResponseInfoNfseItem.t()] | :unset), :log => (Webmania.Models.Api2DceIssuance.NfseFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"uuid", :uuid, :string}, {"modelo", :modelo, :string}, {"status", :status, :string}, {"chave", :chave, {:optional, :string}}, {"numero_lote", :numero_lote, {:optional, :scalar}}, {"serie_lote", :serie_lote, {:optional, :scalar}}, {"protocolo", :protocolo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"serie_rps", :serie_rps, {:optional, :scalar}}, {"numero_rps", :numero_rps, {:optional, :scalar}}, {"xml", :xml, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}, {"atualizado_em", :atualizado_em, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"quantidade_rps", :quantidade_rps, {:optional, :scalar}}, {"nfse_substituida", :nfse_substituida, {:optional, Webmania.Models.Api2DceIssuance.NfseFiscalResponseNfseSubstituida}}, {"info_nfse", :info_nfse, {:optional, {:array, Webmania.Models.Api2DceIssuance.NfseFiscalResponseInfoNfseItem}}}, {"log", :log, {:optional, Webmania.Models.Api2DceIssuance.NfseFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfseFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfseFiscalResponseNfseSubstituida do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfseFiscalResponseNfseSubstituida"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfseFiscalResponseInfoNfseItem do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:motivo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:xml, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :modelo => (String.t() | :unset), :status => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :xml => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfseFiscalResponseInfoNfseItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfseFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfseFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfcomPaymentEvent do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_nfcom, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => ((String.t() | nil) | :unset), :codigo => ((String.t() | nil) | :unset), :motivo => ((String.t() | nil) | :unset), :protocolo_evento => ((String.t() | nil) | :unset), :protocolo_nfcom => ((String.t() | nil) | :unset), :protocolo_vinculacao => ((String.t() | nil) | :unset), :data_evento => ((String.t() | nil) | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pagamento => ((Webmania.Models.Api2DceIssuance.NfcomPaymentEventPagamentoVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, {:nullable, :string}}}, {"codigo", :codigo, {:optional, {:nullable, :string}}}, {"motivo", :motivo, {:optional, {:nullable, :string}}}, {"protocolo_evento", :protocolo_evento, {:optional, {:nullable, :string}}}, {"protocolo_nfcom", :protocolo_nfcom, {:optional, {:nullable, :string}}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, {:nullable, :string}}}, {"data_evento", :data_evento, {:optional, {:nullable, :string}}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}, {"pagamento", :pagamento, {:optional, {:nullable, Webmania.Models.Api2DceIssuance.NfcomPaymentEventPagamentoVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfcomPaymentEvent"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfcomPaymentEventPagamentoVariant0 do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nPag, :unset}, {:idTransacao, :unset}, {:tpMeioPgto, :unset}, {:CNPJReceb, :unset}, {:CNPJBasePSP, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nPag => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :idTransacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tpMeioPgto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJReceb => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJBasePSP => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nPag", :nPag, {:optional, :scalar}}, {"idTransacao", :idTransacao, {:optional, :scalar}}, {"tpMeioPgto", :tpMeioPgto, {:optional, :scalar}}, {"CNPJReceb", :CNPJReceb, {:optional, :scalar}}, {"CNPJBasePSP", :CNPJBasePSP, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfcomPaymentEventPagamentoVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfcomFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:nfcom, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:contingencia, :unset}, {:xml, :unset}, {:danfecom, :unset}, {:xml_cancelamento, :unset}, {:protocolo, :unset}, {:data_autorizacao, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:consulta_eventos_pagamento, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfcom => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (String.t() | :unset), :modelo => String.t(), :contingencia => (boolean() | :unset), :xml => (String.t() | :unset), :danfecom => (String.t() | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :protocolo => (String.t() | :unset), :data_autorizacao => ((String.t() | nil) | :unset), :eventos_pagamento => ([Webmania.Models.Api2DceIssuance.NfcomPaymentEvent.t()] | :unset), :total_eventos => (integer() | :unset), :consulta_eventos_pagamento => (String.t() | :unset), :log => (Webmania.Models.Api2DceIssuance.NfcomFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"nfcom", :nfcom, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :string}}, {"modelo", :modelo, :string}, {"contingencia", :contingencia, {:optional, :boolean}}, {"xml", :xml, {:optional, :string}}, {"danfecom", :danfecom, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"protocolo", :protocolo, {:optional, :string}}, {"data_autorizacao", :data_autorizacao, {:optional, {:nullable, :string}}}, {"eventos_pagamento", :eventos_pagamento, {:optional, {:array, Webmania.Models.Api2DceIssuance.NfcomPaymentEvent}}}, {"total_eventos", :total_eventos, {:optional, :i64}}, {"consulta_eventos_pagamento", :consulta_eventos_pagamento, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api2DceIssuance.NfcomFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfcomFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfcomFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfcomFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfcomPaymentEvents do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:status, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :status => String.t(), :eventos_pagamento => [Webmania.Models.Api2DceIssuance.NfcomPaymentEvent.t()], :total_eventos => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"status", :status, :string}, {"eventos_pagamento", :eventos_pagamento, {:array, Webmania.Models.Api2DceIssuance.NfcomPaymentEvent}}, {"total_eventos", :total_eventos, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfcomPaymentEvents"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.NfseManifestationRequest do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:chave, :unset}, {:manifestador, :unset}, {:evento, :unset}, {:motivo_rejeicao, :unset}, {:justificativa_rejeicao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :chave => String.t(), :manifestador => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :evento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :motivo_rejeicao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :justificativa_rejeicao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, :scalar}, {"chave", :chave, :string}, {"manifestador", :manifestador, :scalar}, {"evento", :evento, :scalar}, {"motivo_rejeicao", :motivo_rejeicao, {:optional, :scalar}}, {"justificativa_rejeicao", :justificativa_rejeicao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::NfseManifestationRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.CteFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:cte, :unset}, {:epec, :unset}, {:dacte, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:consulta_eventos_pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2DceIssuance.CteFiscalResponseLog.t() | :unset), :cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :epec => (boolean() | :unset), :dacte => ((String.t() | nil) | :unset), :eventos_pagamento => ([Webmania.Models.Api2DceIssuance.CteFiscalResponseEventosPagamentoItem.t()] | :unset), :total_eventos => (integer() | :unset), :consulta_eventos_pagamento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2DceIssuance.CteFiscalResponseLog}}, {"cte", :cte, {:optional, :scalar}}, {"epec", :epec, {:optional, :boolean}}, {"dacte", :dacte, {:optional, {:nullable, :string}}}, {"eventos_pagamento", :eventos_pagamento, {:optional, {:array, Webmania.Models.Api2DceIssuance.CteFiscalResponseEventosPagamentoItem}}}, {"total_eventos", :total_eventos, {:optional, :i64}}, {"consulta_eventos_pagamento", :consulta_eventos_pagamento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::CteFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.CteFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::CteFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.CteFiscalResponseEventosPagamentoItem do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_cte, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_vinculacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, :scalar}}, {"codigo", :codigo, {:optional, :scalar}}, {"motivo", :motivo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :scalar}}, {"protocolo_cte", :protocolo_cte, {:optional, :scalar}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :scalar}}, {"data_evento", :data_evento, {:optional, :scalar}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::CteFiscalResponseEventosPagamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.MdfeFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:mdfe, :unset}, {:damdfe, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2DceIssuance.MdfeFiscalResponseLog.t() | :unset), :mdfe => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :damdfe => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2DceIssuance.MdfeFiscalResponseLog}}, {"mdfe", :mdfe, {:optional, :scalar}}, {"damdfe", :damdfe, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::MdfeFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.MdfeFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::MdfeFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.DceFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:numero, :unset}, {:dace, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :log => (Webmania.Models.Api2DceIssuance.DceFiscalResponseLog.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :dace => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :scalar}}, {"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"log", :log, {:optional, Webmania.Models.Api2DceIssuance.DceFiscalResponseLog}}, {"numero", :numero, {:optional, :scalar}}, {"dace", :dace, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::DceFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.DceFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::DceFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.FiscalEventResponse do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:evento, :unset}, {:status, :unset}, {:motivo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:dacce, :unset}, {:log, :unset}, {:codigo, :unset}, {:protocolo_evento, :unset}, {:data_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :chave => (String.t() | :unset), :evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => ((String.t() | nil) | :unset), :xml => ((String.t() | nil) | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :dacce => (String.t() | :unset), :log => (Webmania.Models.Api2DceIssuance.FiscalEventResponseLog.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (String.t() | :unset), :data_evento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"evento", :evento, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, {:nullable, :string}}}, {"xml", :xml, {:optional, {:nullable, :string}}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"dacce", :dacce, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api2DceIssuance.FiscalEventResponseLog}}, {"codigo", :codigo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :string}}, {"data_evento", :data_evento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::FiscalEventResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.FiscalEventResponseLog do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::FiscalEventResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.CtePaymentEvents do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:status, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => (String.t() | :unset), :status => String.t(), :eventos_pagamento => [Webmania.Models.Api2DceIssuance.CtePaymentEventsEventosPagamentoItem.t()], :total_eventos => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, :string}}, {"status", :status, :string}, {"eventos_pagamento", :eventos_pagamento, {:array, Webmania.Models.Api2DceIssuance.CtePaymentEventsEventosPagamentoItem}}, {"total_eventos", :total_eventos, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::CtePaymentEvents"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.CtePaymentEventsEventosPagamentoItem do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_cte, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_cte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo_vinculacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, :scalar}}, {"codigo", :codigo, {:optional, :scalar}}, {"motivo", :motivo, {:optional, :scalar}}, {"protocolo_evento", :protocolo_evento, {:optional, :scalar}}, {"protocolo_cte", :protocolo_cte, {:optional, :scalar}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, :scalar}}, {"data_evento", :data_evento, {:optional, :scalar}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::CtePaymentEventsEventosPagamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.EmitterIssueDcePayload do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:ambiente, :unset}, {:informacoes_adicionais, :unset}, {:informacoes_adicionais_emitente, :unset}, {:itens, :unset}, {:observacoes, :unset}, {:observacoes_emitente, :unset}, {:origem, :unset}, {:solicitacao, :unset}, {:url_notificacao, :unset}, {:cliente, :unset}, {:emitente, :unset}, {:transporte, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => ((String.t() | nil) | :unset), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :informacoes_adicionais => ((String.t() | nil) | :unset), :informacoes_adicionais_emitente => ((String.t() | nil) | :unset), :itens => [Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadItensItem.t()], :observacoes => (([Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadObservacoesVariant0Item.t()] | nil) | :unset), :observacoes_emitente => (([Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadObservacoesEmitenteVariant0Item.t()] | nil) | :unset), :origem => ((String.t() | nil) | :unset), :solicitacao => ((String.t() | nil) | :unset), :url_notificacao => ((String.t() | nil) | :unset), :cliente => (Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadCliente.t() | :unset), :emitente => (Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadEmitente.t() | :unset), :transporte => (Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadTransporte.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, {:nullable, :string}}}, {"ambiente", :ambiente, :scalar}, {"informacoes_adicionais", :informacoes_adicionais, {:optional, {:nullable, :string}}}, {"informacoes_adicionais_emitente", :informacoes_adicionais_emitente, {:optional, {:nullable, :string}}}, {"itens", :itens, {:array, Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadItensItem}}, {"observacoes", :observacoes, {:optional, {:nullable, {:array, Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadObservacoesVariant0Item}}}}, {"observacoes_emitente", :observacoes_emitente, {:optional, {:nullable, {:array, Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadObservacoesEmitenteVariant0Item}}}}, {"origem", :origem, {:optional, {:nullable, :string}}}, {"solicitacao", :solicitacao, {:optional, {:nullable, :string}}}, {"url_notificacao", :url_notificacao, {:optional, {:nullable, :string}}}, {"cliente", :cliente, {:optional, Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadCliente}}, {"emitente", :emitente, {:optional, Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadEmitente}}, {"transporte", :transporte, {:optional, Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadTransporte}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::EmitterIssueDcePayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadItensItem do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao, :unset}, {:informacoes_adicionais, :unset}, {:ncm, :unset}, {:quantidade, :unset}, {:valor_unitario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao => String.t(), :informacoes_adicionais => ((String.t() | nil) | :unset), :ncm => String.t(), :quantidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_unitario => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao", :descricao, :string}, {"informacoes_adicionais", :informacoes_adicionais, {:optional, {:nullable, :string}}}, {"ncm", :ncm, :string}, {"quantidade", :quantidade, :scalar}, {"valor_unitario", :valor_unitario, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::EmitterIssueDcePayloadItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadObservacoesVariant0Item do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:campo, :unset}, {:texto, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:campo => (String.t() | :unset), :texto => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"campo", :campo, {:optional, :string}}, {"texto", :texto, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::EmitterIssueDcePayloadObservacoesVariant0Item"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadObservacoesEmitenteVariant0Item do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:campo, :unset}, {:texto, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:campo => (String.t() | :unset), :texto => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"campo", :campo, {:optional, :string}}, {"texto", :texto, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::EmitterIssueDcePayloadObservacoesEmitenteVariant0Item"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadCliente do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cnpj, :unset}, {:codigo_municipio, :unset}, {:codigo_pais, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:email, :unset}, {:endereco, :unset}, {:identificacao_alternativa, :unset}, {:logradouro, :unset}, {:municipio, :unset}, {:nome_completo, :unset}, {:numero, :unset}, {:pais, :unset}, {:razao_social, :unset}, {:telefone, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_municipio => (String.t() | :unset), :codigo_pais => (String.t() | :unset), :complemento => ((String.t() | nil) | :unset), :cpf => (String.t() | :unset), :email => ((String.t() | nil) | :unset), :endereco => ([Webmania.JSON.value()] | :unset), :identificacao_alternativa => (String.t() | :unset), :logradouro => (String.t() | :unset), :municipio => (String.t() | :unset), :nome_completo => (String.t() | :unset), :numero => (String.t() | :unset), :pais => (String.t() | :unset), :razao_social => (String.t() | :unset), :telefone => ((String.t() | nil) | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"codigo_pais", :codigo_pais, {:optional, :string}}, {"complemento", :complemento, {:optional, {:nullable, :string}}}, {"cpf", :cpf, {:optional, :string}}, {"email", :email, {:optional, {:nullable, :string}}}, {"endereco", :endereco, {:optional, {:array, :value}}}, {"identificacao_alternativa", :identificacao_alternativa, {:optional, :string}}, {"logradouro", :logradouro, {:optional, :string}}, {"municipio", :municipio, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"pais", :pais, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"telefone", :telefone, {:optional, {:nullable, :string}}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::EmitterIssueDcePayloadCliente"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadEmitente do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bairro, :unset}, {:cep, :unset}, {:cnpj, :unset}, {:codigo_municipio, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:endereco, :unset}, {:identificacao_alternativa, :unset}, {:logradouro, :unset}, {:municipio, :unset}, {:nome_completo, :unset}, {:numero, :unset}, {:razao_social, :unset}, {:telefone, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cnpj => (String.t() | :unset), :codigo_municipio => (String.t() | :unset), :complemento => ((String.t() | nil) | :unset), :cpf => (String.t() | :unset), :endereco => ([Webmania.JSON.value()] | :unset), :identificacao_alternativa => (String.t() | :unset), :logradouro => (String.t() | :unset), :municipio => (String.t() | :unset), :nome_completo => (String.t() | :unset), :numero => (String.t() | :unset), :razao_social => (String.t() | :unset), :telefone => ((String.t() | nil) | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"complemento", :complemento, {:optional, {:nullable, :string}}}, {"cpf", :cpf, {:optional, :string}}, {"endereco", :endereco, {:optional, {:array, :value}}}, {"identificacao_alternativa", :identificacao_alternativa, {:optional, :string}}, {"logradouro", :logradouro, {:optional, :string}}, {"municipio", :municipio, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"telefone", :telefone, {:optional, {:nullable, :string}}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::EmitterIssueDcePayloadEmitente"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.EmitterIssueDcePayloadTransporte do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj_transportadora, :unset}, {:modalidade, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj_transportadora => ((String.t() | nil) | :unset), :modalidade => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj_transportadora", :cnpj_transportadora, {:optional, {:nullable, :string}}}, {"modalidade", :modalidade, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::EmitterIssueDcePayloadTransporte"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.EmitterCancelDcePayload do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:justificativa, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :justificativa => String.t(), :uuid => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"justificativa", :justificativa, :string}, {"uuid", :uuid, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::EmitterCancelDcePayload"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.DceDocumentedGroup282 do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:numero, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:dace, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :uuid => (String.t() | :unset), :chave => (String.t() | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => (String.t() | :unset), :motivo => (String.t() | :unset), :modelo => (String.t() | :unset), :xml => (String.t() | :unset), :xml_cancelamento => (String.t() | :unset), :dace => (String.t() | :unset), :log => ([Webmania.JSON.value()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"serie", :serie, {:optional, :scalar}}, {"numero", :numero, {:optional, :scalar}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, :string}}, {"dace", :dace, {:optional, :string}}, {"log", :log, {:optional, {:array, :value}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::DceDocumentedGroup282"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.DceDocumentedGroup1106 do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:justificativa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :chave => (String.t() | :unset), :justificativa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"justificativa", :justificativa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::DceDocumentedGroup1106"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2DceIssuance.DceItemGroup do
  @moduledoc "Nominal model from the pinned api2_dce_issuance contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao, :unset}, {:informacoes_adicionais, :unset}, {:ncm, :unset}, {:quantidade, :unset}, {:valor_unitario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao => String.t(), :informacoes_adicionais => ((String.t() | nil) | :unset), :ncm => String.t(), :quantidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_unitario => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao", :descricao, :string}, {"informacoes_adicionais", :informacoes_adicionais, {:optional, {:nullable, :string}}}, {"ncm", :ncm, :string}, {"quantidade", :quantidade, :scalar}, {"valor_unitario", :valor_unitario, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_dce_issuance::DceItemGroup"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
