# Generated. Run scripts/generate.py in the pinned Docker toolchain.
defmodule Webmania.Models.Api2EmitterReads.EmitterError do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:status, :unset}, {:configured, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => (String.t() | :unset), :message => (String.t() | :unset), :status => (boolean() | :unset), :configured => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, {:optional, :string}}, {"message", :message, {:optional, :string}}, {"status", :status, {:optional, :boolean}}, {"configured", :configured, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::EmitterError"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfseServiceCode do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:descricao, :unset}, {:id_cnae, :unset}, {:codigo_tributacao, :unset}, {:aliquota_sugerida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :descricao => String.t(), :id_cnae => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_tributacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_sugerida => (Webmania.Models.Api2EmitterReads.NfseServiceCodeAliquotaSugerida.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, :scalar}, {"descricao", :descricao, :string}, {"id_cnae", :id_cnae, {:optional, :scalar}}, {"codigo_tributacao", :codigo_tributacao, {:optional, :scalar}}, {"aliquota_sugerida", :aliquota_sugerida, {:optional, Webmania.Models.Api2EmitterReads.NfseServiceCodeAliquotaSugerida}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfseServiceCode"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfseServiceCodeAliquotaSugerida do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:iss, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"iss", :iss, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfseServiceCodeAliquotaSugerida"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfseProviderStatus do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:modelo, :unset}, {:versao, :unset}, {:ambientes, :unset}, {:autenticacao, :unset}, {:emissao, :unset}, {:funcoes, :unset}, {:pdf_nfse, :unset}, {:pdf_sincrono, :unset}, {:codigo_servico, :unset}, {:parametros_disponiveis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => boolean(), :modelo => (String.t() | :unset), :versao => (String.t() | :unset), :ambientes => [integer()], :autenticacao => [String.t()], :emissao => [String.t()], :funcoes => [String.t()], :pdf_nfse => boolean(), :pdf_sincrono => boolean(), :codigo_servico => ([Webmania.Models.Api2EmitterReads.NfseServiceCode.t()] | :unset), :parametros_disponiveis => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, :boolean}, {"modelo", :modelo, {:optional, :string}}, {"versao", :versao, {:optional, :string}}, {"ambientes", :ambientes, {:array, :i64}}, {"autenticacao", :autenticacao, {:array, :string}}, {"emissao", :emissao, {:array, :string}}, {"funcoes", :funcoes, {:array, :string}}, {"pdf_nfse", :pdf_nfse, :boolean}, {"pdf_sincrono", :pdf_sincrono, :boolean}, {"codigo_servico", :codigo_servico, {:optional, {:array, Webmania.Models.Api2EmitterReads.NfseServiceCode}}}, {"parametros_disponiveis", :parametros_disponiveis, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfseProviderStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfcomServiceStatus do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:operacional, :unset}, {:mensagem, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:operacional => boolean(), :mensagem => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"operacional", :operacional, :boolean}, {"mensagem", :mensagem, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfcomServiceStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfseFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:chave, :unset}, {:numero_lote, :unset}, {:serie_lote, :unset}, {:protocolo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:serie_rps, :unset}, {:numero_rps, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:atualizado_em, :unset}, {:motivo, :unset}, {:quantidade_rps, :unset}, {:nfse_substituida, :unset}, {:info_nfse, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :uuid => String.t(), :modelo => String.t(), :status => String.t(), :chave => (String.t() | :unset), :numero_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie_lote => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :serie_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :xml => (String.t() | :unset), :xml_cancelamento => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :atualizado_em => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfse_substituida => (Webmania.Models.Api2EmitterReads.NfseFiscalResponseNfseSubstituida.t() | :unset), :info_nfse => ([Webmania.Models.Api2EmitterReads.NfseFiscalResponseInfoNfseItem.t()] | :unset), :log => (Webmania.Models.Api2EmitterReads.NfseFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"uuid", :uuid, :string}, {"modelo", :modelo, :string}, {"status", :status, :string}, {"chave", :chave, {:optional, :string}}, {"numero_lote", :numero_lote, {:optional, :scalar}}, {"serie_lote", :serie_lote, {:optional, :scalar}}, {"protocolo", :protocolo, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"serie_rps", :serie_rps, {:optional, :scalar}}, {"numero_rps", :numero_rps, {:optional, :scalar}}, {"xml", :xml, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}, {"atualizado_em", :atualizado_em, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"quantidade_rps", :quantidade_rps, {:optional, :scalar}}, {"nfse_substituida", :nfse_substituida, {:optional, Webmania.Models.Api2EmitterReads.NfseFiscalResponseNfseSubstituida}}, {"info_nfse", :info_nfse, {:optional, {:array, Webmania.Models.Api2EmitterReads.NfseFiscalResponseInfoNfseItem}}}, {"log", :log, {:optional, Webmania.Models.Api2EmitterReads.NfseFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfseFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfseFiscalResponseNfseSubstituida do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfseFiscalResponseNfseSubstituida"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfseFiscalResponseInfoNfseItem do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:modelo, :unset}, {:status, :unset}, {:motivo, :unset}, {:numero, :unset}, {:codigo_verificacao, :unset}, {:xml, :unset}, {:pdf_nfse, :unset}, {:pdf_nfse_status, :unset}, {:pdf_rps, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :modelo => (String.t() | :unset), :status => (String.t() | :unset), :motivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :xml => (String.t() | :unset), :pdf_nfse => (String.t() | :unset), :pdf_nfse_status => (String.t() | :unset), :pdf_rps => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :scalar}}, {"numero", :numero, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"pdf_nfse", :pdf_nfse, {:optional, :string}}, {"pdf_nfse_status", :pdf_nfse_status, {:optional, :string}}, {"pdf_rps", :pdf_rps, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfseFiscalResponseInfoNfseItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfseFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfseFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfcomPaymentEvent do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:codigo, :unset}, {:motivo, :unset}, {:protocolo_evento, :unset}, {:protocolo_nfcom, :unset}, {:protocolo_vinculacao, :unset}, {:data_evento, :unset}, {:n_seq_evento, :unset}, {:pagamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => ((String.t() | nil) | :unset), :codigo => ((String.t() | nil) | :unset), :motivo => ((String.t() | nil) | :unset), :protocolo_evento => ((String.t() | nil) | :unset), :protocolo_nfcom => ((String.t() | nil) | :unset), :protocolo_vinculacao => ((String.t() | nil) | :unset), :data_evento => ((String.t() | nil) | :unset), :n_seq_evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pagamento => ((Webmania.Models.Api2EmitterReads.NfcomPaymentEventPagamentoVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, {:optional, {:nullable, :string}}}, {"codigo", :codigo, {:optional, {:nullable, :string}}}, {"motivo", :motivo, {:optional, {:nullable, :string}}}, {"protocolo_evento", :protocolo_evento, {:optional, {:nullable, :string}}}, {"protocolo_nfcom", :protocolo_nfcom, {:optional, {:nullable, :string}}}, {"protocolo_vinculacao", :protocolo_vinculacao, {:optional, {:nullable, :string}}}, {"data_evento", :data_evento, {:optional, {:nullable, :string}}}, {"n_seq_evento", :n_seq_evento, {:optional, :scalar}}, {"pagamento", :pagamento, {:optional, {:nullable, Webmania.Models.Api2EmitterReads.NfcomPaymentEventPagamentoVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfcomPaymentEvent"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfcomPaymentEventPagamentoVariant0 do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nPag, :unset}, {:idTransacao, :unset}, {:tpMeioPgto, :unset}, {:CNPJReceb, :unset}, {:CNPJBasePSP, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nPag => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :idTransacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tpMeioPgto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJReceb => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :CNPJBasePSP => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nPag", :nPag, {:optional, :scalar}}, {"idTransacao", :idTransacao, {:optional, :scalar}}, {"tpMeioPgto", :tpMeioPgto, {:optional, :scalar}}, {"CNPJReceb", :CNPJReceb, {:optional, :scalar}}, {"CNPJBasePSP", :CNPJBasePSP, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfcomPaymentEventPagamentoVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfcomFiscalResponse do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:serie, :unset}, {:nfcom, :unset}, {:status, :unset}, {:motivo, :unset}, {:modelo, :unset}, {:contingencia, :unset}, {:xml, :unset}, {:danfecom, :unset}, {:xml_cancelamento, :unset}, {:protocolo, :unset}, {:data_autorizacao, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:consulta_eventos_pagamento, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :nfcom => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => String.t(), :motivo => (String.t() | :unset), :modelo => String.t(), :contingencia => (boolean() | :unset), :xml => (String.t() | :unset), :danfecom => (String.t() | :unset), :xml_cancelamento => ((String.t() | nil) | :unset), :protocolo => (String.t() | :unset), :data_autorizacao => ((String.t() | nil) | :unset), :eventos_pagamento => ([Webmania.Models.Api2EmitterReads.NfcomPaymentEvent.t()] | :unset), :total_eventos => (integer() | :unset), :consulta_eventos_pagamento => (String.t() | :unset), :log => (Webmania.Models.Api2EmitterReads.NfcomFiscalResponseLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"serie", :serie, {:optional, :scalar}}, {"nfcom", :nfcom, {:optional, :scalar}}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :string}}, {"modelo", :modelo, :string}, {"contingencia", :contingencia, {:optional, :boolean}}, {"xml", :xml, {:optional, :string}}, {"danfecom", :danfecom, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, {:nullable, :string}}}, {"protocolo", :protocolo, {:optional, :string}}, {"data_autorizacao", :data_autorizacao, {:optional, {:nullable, :string}}}, {"eventos_pagamento", :eventos_pagamento, {:optional, {:array, Webmania.Models.Api2EmitterReads.NfcomPaymentEvent}}}, {"total_eventos", :total_eventos, {:optional, :i64}}, {"consulta_eventos_pagamento", :consulta_eventos_pagamento, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api2EmitterReads.NfcomFiscalResponseLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfcomFiscalResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfcomFiscalResponseLog do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Object, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :List, value: [Webmania.JSON.value()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Object, :map}, {:List, {:array, :value}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfcomFiscalResponseLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfcomPaymentEvents do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:chave, :unset}, {:status, :unset}, {:eventos_pagamento, :unset}, {:total_eventos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :chave => ((String.t() | nil) | :unset), :status => String.t(), :eventos_pagamento => [Webmania.Models.Api2EmitterReads.NfcomPaymentEvent.t()], :total_eventos => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"chave", :chave, {:optional, {:nullable, :string}}}, {"status", :status, :string}, {"eventos_pagamento", :eventos_pagamento, {:array, Webmania.Models.Api2EmitterReads.NfcomPaymentEvent}}, {"total_eventos", :total_eventos, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfcomPaymentEvents"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.NfseManifestationRequest do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:chave, :unset}, {:manifestador, :unset}, {:evento, :unset}, {:motivo_rejeicao, :unset}, {:justificativa_rejeicao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :chave => String.t(), :manifestador => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :evento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :motivo_rejeicao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :justificativa_rejeicao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, :scalar}, {"chave", :chave, :string}, {"manifestador", :manifestador, :scalar}, {"evento", :evento, :scalar}, {"motivo_rejeicao", :motivo_rejeicao, {:optional, :scalar}}, {"justificativa_rejeicao", :justificativa_rejeicao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::NfseManifestationRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.EmitterFunctionalError do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:status, :unset}, {:configured, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => String.t(), :message => (String.t() | :unset), :status => (boolean() | :unset), :configured => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, :string}, {"message", :message, {:optional, :string}}, {"status", :status, {:optional, :boolean}}, {"configured", :configured, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::EmitterFunctionalError"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterReads.EmitterGetNfseProviderStatusQuery do
  @moduledoc "Nominal model from the pinned api2_emitter_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:todos_servicos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:todos_servicos => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"todos_servicos", :todos_servicos, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_reads::EmitterGetNfseProviderStatusQuery"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
