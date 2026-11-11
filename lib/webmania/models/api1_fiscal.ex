# Generated. Run scripts/generate.py in the pinned Docker toolchain.
defmodule Webmania.Models.Api1Fiscal.Api1Error do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:code, :unset}, {:status, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => Webmania.Models.Api1Fiscal.Api1ErrorError.t(), :message => (String.t() | :unset), :code => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :status => (String.t() | :unset), :log => (Webmania.Models.Api1Fiscal.Api1ErrorLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, Webmania.Models.Api1Fiscal.Api1ErrorError}, {"message", :message, {:optional, :string}}, {"code", :code, {:optional, :scalar}}, {"status", :status, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api1Fiscal.Api1ErrorLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::Api1Error"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.Api1ErrorError do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::Api1ErrorError"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.Api1ErrorLogVariant1 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cStat, :unset}, {:xMotivo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cStat => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :xMotivo => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cStat", :cStat, {:optional, :scalar}}, {"xMotivo", :xMotivo, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::Api1ErrorLogVariant1"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.Api1ErrorLog do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :Api1ErrorLogVariant1, value: Webmania.Models.Api1Fiscal.Api1ErrorLogVariant1.t()}
  @doc false
  def __variants__, do: [{:Text, :string}, {:Api1ErrorLogVariant1, Webmania.Models.Api1Fiscal.Api1ErrorLogVariant1}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::Api1ErrorLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.SefazLog do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cStat, :unset}, {:xMotivo, :unset}, {:nProt, :unset}, {:tpAmb, :unset}, {:dhRecbto, :unset}, {:chNFe, :unset}, {:verAplic, :unset}, {:evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cStat => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :xMotivo => (String.t() | :unset), :nProt => (String.t() | :unset), :tpAmb => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :dhRecbto => (String.t() | :unset), :chNFe => (String.t() | :unset), :verAplic => (String.t() | :unset), :evento => (Webmania.Models.Api1Fiscal.SefazLogEvento.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cStat", :cStat, {:optional, :scalar}}, {"xMotivo", :xMotivo, {:optional, :string}}, {"nProt", :nProt, {:optional, :string}}, {"tpAmb", :tpAmb, {:optional, :scalar}}, {"dhRecbto", :dhRecbto, {:optional, :string}}, {"chNFe", :chNFe, {:optional, :string}}, {"verAplic", :verAplic, {:optional, :string}}, {"evento", :evento, {:optional, Webmania.Models.Api1Fiscal.SefazLogEvento}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::SefazLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.SefazLogEventoVariant0 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cStat, :unset}, {:xMotivo, :unset}, {:nProt, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cStat => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :xMotivo => (String.t() | :unset), :nProt => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cStat", :cStat, {:optional, :scalar}}, {"xMotivo", :xMotivo, {:optional, :string}}, {"nProt", :nProt, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::SefazLogEventoVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.SefazLogEventoVariant1Item do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cStat, :unset}, {:xMotivo, :unset}, {:nProt, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cStat => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :xMotivo => (String.t() | :unset), :nProt => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cStat", :cStat, {:optional, :scalar}}, {"xMotivo", :xMotivo, {:optional, :string}}, {"nProt", :nProt, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::SefazLogEventoVariant1Item"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.SefazLogEvento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :SefazLogEventoVariant0, value: Webmania.Models.Api1Fiscal.SefazLogEventoVariant0.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.SefazLogEventoVariant1Item.t()]}
  @doc false
  def __variants__, do: [{:SefazLogEventoVariant0, Webmania.Models.Api1Fiscal.SefazLogEventoVariant0}, {:List, {:array, Webmania.Models.Api1Fiscal.SefazLogEventoVariant1Item}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::SefazLogEvento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeDocument do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:status, :unset}, {:motivo, :unset}, {:nfe, :unset}, {:serie, :unset}, {:recibo, :unset}, {:chave, :unset}, {:modelo, :unset}, {:epec, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:danfe, :unset}, {:danfe_simples, :unset}, {:danfe_etiqueta, :unset}, {:log, :unset}, {:log_cancelamento, :unset}, {:data, :unset}, {:evento, :unset}, {:dacce, :unset}, {:protocolo_evento, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :status => String.t(), :motivo => (String.t() | :unset), :nfe => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :recibo => (String.t() | :unset), :chave => (String.t() | :unset), :modelo => (String.t() | :unset), :epec => (boolean() | :unset), :xml => (String.t() | :unset), :xml_cancelamento => (String.t() | :unset), :danfe => (String.t() | :unset), :danfe_simples => (String.t() | :unset), :danfe_etiqueta => (String.t() | :unset), :log => (Webmania.Models.Api1Fiscal.NfeDocumentLog.t() | :unset), :log_cancelamento => (Webmania.Models.Api1Fiscal.NfeDocumentLogCancelamento.t() | :unset), :data => (String.t() | :unset), :evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :dacce => (String.t() | :unset), :protocolo_evento => (String.t() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :string}}, {"nfe", :nfe, {:optional, :scalar}}, {"serie", :serie, {:optional, :scalar}}, {"recibo", :recibo, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"epec", :epec, {:optional, :boolean}}, {"xml", :xml, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, :string}}, {"danfe", :danfe, {:optional, :string}}, {"danfe_simples", :danfe_simples, {:optional, :string}}, {"danfe_etiqueta", :danfe_etiqueta, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api1Fiscal.NfeDocumentLog}}, {"log_cancelamento", :log_cancelamento, {:optional, Webmania.Models.Api1Fiscal.NfeDocumentLogCancelamento}}, {"data", :data, {:optional, :string}}, {"evento", :evento, {:optional, :scalar}}, {"dacce", :dacce, {:optional, :string}}, {"protocolo_evento", :protocolo_evento, {:optional, :string}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeDocument"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeDocumentLog do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :SefazLog, value: Webmania.Models.Api1Fiscal.SefazLog.t()} | %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.SefazLog.t()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:SefazLog, Webmania.Models.Api1Fiscal.SefazLog}, {:Text, :string}, {:List, {:array, Webmania.Models.Api1Fiscal.SefazLog}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeDocumentLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeDocumentLogCancelamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :SefazLog, value: Webmania.Models.Api1Fiscal.SefazLog.t()} | %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.SefazLog.t()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:SefazLog, Webmania.Models.Api1Fiscal.SefazLog}, {:Text, :string}, {:List, {:array, Webmania.Models.Api1Fiscal.SefazLog}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeDocumentLogCancelamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeEventResult do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:status, :unset}, {:evento, :unset}, {:modelo, :unset}, {:chave, :unset}, {:cod_evento, :unset}, {:xml, :unset}, {:dacce, :unset}, {:protocolo_evento, :unset}, {:log, :unset}, {:motivo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :status => String.t(), :evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :chave => (String.t() | :unset), :cod_evento => (String.t() | :unset), :xml => (String.t() | :unset), :dacce => (String.t() | :unset), :protocolo_evento => (String.t() | :unset), :log => (Webmania.Models.Api1Fiscal.NfeEventResultLog.t() | :unset), :motivo => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"status", :status, :string}, {"evento", :evento, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"cod_evento", :cod_evento, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"dacce", :dacce, {:optional, :string}}, {"protocolo_evento", :protocolo_evento, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api1Fiscal.NfeEventResultLog}}, {"motivo", :motivo, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeEventResult"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeEventResultLog do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :SefazLog, value: Webmania.Models.Api1Fiscal.SefazLog.t()} | %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.SefazLog.t()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:SefazLog, Webmania.Models.Api1Fiscal.SefazLog}, {:Text, :string}, {:List, {:array, Webmania.Models.Api1Fiscal.SefazLog}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeEventResultLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeCancelResult do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:log, :unset}, {:motivo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => String.t(), :xml => (String.t() | :unset), :xml_cancelamento => (String.t() | :unset), :log => (Webmania.Models.Api1Fiscal.NfeCancelResultLog.t() | :unset), :motivo => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, :string}, {"xml", :xml, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api1Fiscal.NfeCancelResultLog}}, {"motivo", :motivo, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeCancelResult"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeCancelResultLog do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :SefazLog, value: Webmania.Models.Api1Fiscal.SefazLog.t()} | %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.SefazLog.t()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:SefazLog, Webmania.Models.Api1Fiscal.SefazLog}, {:Text, :string}, {:List, {:array, Webmania.Models.Api1Fiscal.SefazLog}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeCancelResultLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeVoidResult do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:xml, :unset}, {:log, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:xml => String.t(), :log => (Webmania.Models.Api1Fiscal.NfeVoidResultLog.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"xml", :xml, :string}, {"log", :log, {:optional, Webmania.Models.Api1Fiscal.NfeVoidResultLog}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeVoidResult"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeVoidResultLog do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :SefazLog, value: Webmania.Models.Api1Fiscal.SefazLog.t()} | %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.SefazLog.t()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:SefazLog, Webmania.Models.Api1Fiscal.SefazLog}, {:Text, :string}, {:List, {:array, Webmania.Models.Api1Fiscal.SefazLog}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeVoidResultLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeCertificateValidity do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:expiration, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:expiration => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"expiration", :expiration, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeCertificateValidity"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeSefazStatus do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeSefazStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeLookupRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:ID, :unset}, {:id, :unset}, {:ambiente, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :ID => (String.t() | :unset), :id => (String.t() | :unset), :ambiente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"ID", :ID, {:optional, :string}}, {"id", :id, {:optional, :string}}, {"ambiente", :ambiente, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeLookupRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeCorrectionRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:correcao, :unset}, {:ambiente, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :correcao => String.t(), :ambiente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"correcao", :correcao, :string}, {"ambiente", :ambiente, {:optional, :scalar}}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeCorrectionRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeManifestationRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:evento, :unset}, {:justificativa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :evento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :justificativa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"evento", :evento, :scalar}, {"justificativa", :justificativa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeManifestationRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeCancelRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:motivo, :unset}, {:nfce_referenciada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :motivo => String.t(), :nfce_referenciada => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"motivo", :motivo, :string}, {"nfce_referenciada", :nfce_referenciada, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeCancelRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeVoidRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:sequencia, :unset}, {:motivo, :unset}, {:ambiente, :unset}, {:serie, :unset}, {:modelo, :unset}, {:ver_aplic, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:sequencia => String.t(), :motivo => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :serie => String.t(), :modelo => String.t(), :ver_aplic => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"sequencia", :sequencia, :string}, {"motivo", :motivo, :string}, {"ambiente", :ambiente, :scalar}, {"serie", :serie, :string}, {"modelo", :modelo, :string}, {"ver_aplic", :ver_aplic, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeVoidRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfePaymentEventItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:indicador_pagamento, :unset}, {:forma_pagamento, :unset}, {:desc_pagamento, :unset}, {:valor_pagamento, :unset}, {:data_pagamento, :unset}, {:cnpj_transacional_pag, :unset}, {:uf_pagamento, :unset}, {:cnpj_instituicao_financeira, :unset}, {:bandeira, :unset}, {:autorizacao, :unset}, {:cnpj_beneficiario, :unset}, {:uf_beneficiario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:indicador_pagamento => (integer() | :unset), :forma_pagamento => String.t(), :desc_pagamento => (String.t() | :unset), :valor_pagamento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :data_pagamento => String.t(), :cnpj_transacional_pag => (String.t() | :unset), :uf_pagamento => (String.t() | :unset), :cnpj_instituicao_financeira => (String.t() | :unset), :bandeira => (String.t() | :unset), :autorizacao => (String.t() | :unset), :cnpj_beneficiario => (String.t() | :unset), :uf_beneficiario => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"indicador_pagamento", :indicador_pagamento, {:optional, :i64}}, {"forma_pagamento", :forma_pagamento, :string}, {"desc_pagamento", :desc_pagamento, {:optional, :string}}, {"valor_pagamento", :valor_pagamento, :scalar}, {"data_pagamento", :data_pagamento, :string}, {"cnpj_transacional_pag", :cnpj_transacional_pag, {:optional, :string}}, {"uf_pagamento", :uf_pagamento, {:optional, :string}}, {"cnpj_instituicao_financeira", :cnpj_instituicao_financeira, {:optional, :string}}, {"bandeira", :bandeira, {:optional, :string}}, {"autorizacao", :autorizacao, {:optional, :string}}, {"cnpj_beneficiario", :cnpj_beneficiario, {:optional, :string}}, {"uf_beneficiario", :uf_beneficiario, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfePaymentEventItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfePaymentEventRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:pagamento, :unset}, {:pagamentos, :unset}, {:ambiente, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :pagamento => (Webmania.Models.Api1Fiscal.NfePaymentEventItem.t() | :unset), :pagamentos => ([Webmania.Models.Api1Fiscal.NfePaymentEventItem.t()] | :unset), :ambiente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"pagamento", :pagamento, {:optional, Webmania.Models.Api1Fiscal.NfePaymentEventItem}}, {"pagamentos", :pagamentos, {:optional, {:array, Webmania.Models.Api1Fiscal.NfePaymentEventItem}}}, {"ambiente", :ambiente, {:optional, :scalar}}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfePaymentEventRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfePaymentEventCancelRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfePaymentEventCancelRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeIbsCbsEventCancelRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:ambiente, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :ambiente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"ambiente", :ambiente, {:optional, :scalar}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeIbsCbsEventCancelRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassDeleteRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => Webmania.Models.Api1Fiscal.TaxClassDeleteRequestReferencia.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, Webmania.Models.Api1Fiscal.TaxClassDeleteRequestReferencia}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassDeleteRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassDeleteRequestReferencia do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassDeleteRequestReferencia"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassDeleteItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:msg, :unset}, {:error, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => String.t(), :msg => (String.t() | :unset), :error => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, :string}, {"msg", :msg, {:optional, :string}}, {"error", :error, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassDeleteItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassNoResults do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:msg, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:msg => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"msg", :msg, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassNoResults"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:icms, :unset}, {:ipi, :unset}, {:pis, :unset}, {:cofins, :unset}, {:issqn, :unset}, {:ibs_cbs, :unset}, {:informacoes_fisco, :unset}, {:informacoes_complementares, :unset}, {:tipo, :unset}, {:tributos_federais, :unset}, {:tributos_estaduais, :unset}, {:type, :unset}, {:data, :unset}, {:updated_date, :unset}, {:status, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => (String.t() | :unset), :icms => (Webmania.Models.Api1Fiscal.TaxClassListItemIcms.t() | :unset), :ipi => ([Webmania.Models.Api1Fiscal.TaxClassListIpi.t()] | :unset), :pis => (Webmania.Models.Api1Fiscal.TaxClassListItemPis.t() | :unset), :cofins => (Webmania.Models.Api1Fiscal.TaxClassListItemCofins.t() | :unset), :issqn => ([Webmania.Models.Api1Fiscal.TaxClassListIssqn.t()] | :unset), :ibs_cbs => (Webmania.Models.Api1Fiscal.TaxClassListItemIbsCbs.t() | :unset), :informacoes_fisco => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :tipo => (String.t() | :unset), :tributos_federais => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tributos_estaduais => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :type => String.t(), :data => (String.t() | :unset), :updated_date => (String.t() | :unset), :status => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, {:optional, :string}}, {"icms", :icms, {:optional, Webmania.Models.Api1Fiscal.TaxClassListItemIcms}}, {"ipi", :ipi, {:optional, {:array, Webmania.Models.Api1Fiscal.TaxClassListIpi}}}, {"pis", :pis, {:optional, Webmania.Models.Api1Fiscal.TaxClassListItemPis}}, {"cofins", :cofins, {:optional, Webmania.Models.Api1Fiscal.TaxClassListItemCofins}}, {"issqn", :issqn, {:optional, {:array, Webmania.Models.Api1Fiscal.TaxClassListIssqn}}}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.TaxClassListItemIbsCbs}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}, {"tipo", :tipo, {:optional, :string}}, {"tributos_federais", :tributos_federais, {:optional, :scalar}}, {"tributos_estaduais", :tributos_estaduais, {:optional, :scalar}}, {"type", :type, :string}, {"data", :data, {:optional, :string}}, {"updated_date", :updated_date, {:optional, :string}}, {"status", :status, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListIcms do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_tributacao, :unset}, {:cenario, :unset}, {:tipo_pessoa, :unset}, {:nao_contribuinte, :unset}, {:codigo_cfop, :unset}, {:situacao_tributaria, :unset}, {:aliquota_importacao, :unset}, {:aliquota_credito, :unset}, {:aliquota_reducao_destino, :unset}, {:aliquota_mva, :unset}, {:aliquota, :unset}, {:aliquota_st, :unset}, {:aliquota_fcp, :unset}, {:aliquota_fcp_st, :unset}, {:aliquota_diferimento, :unset}, {:aliquota_diferimento_fcp, :unset}, {:aliquota_reducao, :unset}, {:aliquota_reducao_st, :unset}, {:aliquota_efetiva_icms, :unset}, {:aliquota_efetiva_icms_st, :unset}, {:codigo_beneficio_reducao_bc, :unset}, {:motivo_desoneracao, :unset}, {:deducao_desoneracao, :unset}, {:motivo_desoneracao_st, :unset}, {:beneficio_fiscal, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_tributacao => (String.t() | :unset), :cenario => (String.t() | :unset), :tipo_pessoa => (String.t() | :unset), :nao_contribuinte => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cfop => (String.t() | :unset), :situacao_tributaria => (String.t() | :unset), :aliquota_importacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_credito => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao_destino => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_mva => (Webmania.Models.Api1Fiscal.TaxClassListStateRates.t() | :unset), :aliquota => (Webmania.Models.Api1Fiscal.TaxClassListStateRates.t() | :unset), :aliquota_st => (Webmania.Models.Api1Fiscal.TaxClassListStateRates.t() | :unset), :aliquota_fcp => (Webmania.Models.Api1Fiscal.TaxClassListStateRates.t() | :unset), :aliquota_fcp_st => (Webmania.Models.Api1Fiscal.TaxClassListStateRates.t() | :unset), :aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_diferimento_fcp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_efetiva_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_efetiva_icms_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_beneficio_reducao_bc => (String.t() | :unset), :motivo_desoneracao => (String.t() | :unset), :deducao_desoneracao => (String.t() | :unset), :motivo_desoneracao_st => (String.t() | :unset), :beneficio_fiscal => ([Webmania.Models.Api1Fiscal.G043.t()] | :unset), :credito_presumido => ([Webmania.Models.Api1Fiscal.TaxClassListIcmsPresumedCredit.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_tributacao", :tipo_tributacao, {:optional, :string}}, {"cenario", :cenario, {:optional, :string}}, {"tipo_pessoa", :tipo_pessoa, {:optional, :string}}, {"nao_contribuinte", :nao_contribuinte, {:optional, :scalar}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"aliquota_importacao", :aliquota_importacao, {:optional, :scalar}}, {"aliquota_credito", :aliquota_credito, {:optional, :scalar}}, {"aliquota_reducao_destino", :aliquota_reducao_destino, {:optional, :scalar}}, {"aliquota_mva", :aliquota_mva, {:optional, Webmania.Models.Api1Fiscal.TaxClassListStateRates}}, {"aliquota", :aliquota, {:optional, Webmania.Models.Api1Fiscal.TaxClassListStateRates}}, {"aliquota_st", :aliquota_st, {:optional, Webmania.Models.Api1Fiscal.TaxClassListStateRates}}, {"aliquota_fcp", :aliquota_fcp, {:optional, Webmania.Models.Api1Fiscal.TaxClassListStateRates}}, {"aliquota_fcp_st", :aliquota_fcp_st, {:optional, Webmania.Models.Api1Fiscal.TaxClassListStateRates}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"aliquota_diferimento_fcp", :aliquota_diferimento_fcp, {:optional, :scalar}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :scalar}}, {"aliquota_reducao_st", :aliquota_reducao_st, {:optional, :scalar}}, {"aliquota_efetiva_icms", :aliquota_efetiva_icms, {:optional, :scalar}}, {"aliquota_efetiva_icms_st", :aliquota_efetiva_icms_st, {:optional, :scalar}}, {"codigo_beneficio_reducao_bc", :codigo_beneficio_reducao_bc, {:optional, :string}}, {"motivo_desoneracao", :motivo_desoneracao, {:optional, :string}}, {"deducao_desoneracao", :deducao_desoneracao, {:optional, :string}}, {"motivo_desoneracao_st", :motivo_desoneracao_st, {:optional, :string}}, {"beneficio_fiscal", :beneficio_fiscal, {:optional, {:array, Webmania.Models.Api1Fiscal.G043}}}, {"credito_presumido", :credito_presumido, {:optional, {:array, Webmania.Models.Api1Fiscal.TaxClassListIcmsPresumedCredit}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListIcms"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListStateRate do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estado, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estado => (String.t() | :unset), :aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estado", :estado, {:optional, :string}}, {"aliquota", :aliquota, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListStateRate"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListStateRatesVariant0Item do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :TaxClassListStateRate, value: Webmania.Models.Api1Fiscal.TaxClassListStateRate.t()} | %__MODULE__{variant: :TaxClassListBareRate, value: nil | boolean() | String.t() | integer() | Webmania.Number.t()}
  @doc false
  def __variants__, do: [{:TaxClassListStateRate, Webmania.Models.Api1Fiscal.TaxClassListStateRate}, {:TaxClassListBareRate, :scalar}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListStateRatesVariant0Item"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListStateRates do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.TaxClassListStateRatesVariant0Item.t()]} | %__MODULE__{variant: :TaxClassListStateRate, value: Webmania.Models.Api1Fiscal.TaxClassListStateRate.t()} | %__MODULE__{variant: :TaxClassListBareRate, value: nil | boolean() | String.t() | integer() | Webmania.Number.t()} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:List, {:array, Webmania.Models.Api1Fiscal.TaxClassListStateRatesVariant0Item}}, {:TaxClassListStateRate, Webmania.Models.Api1Fiscal.TaxClassListStateRate}, {:TaxClassListBareRate, :scalar}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListStateRates"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G043 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estado, :unset}, {:codigo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estado => String.t(), :codigo => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estado", :estado, :string}, {"codigo", :codigo, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G043"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListIcmsPresumedCredit do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estado, :unset}, {:codigo_beneficio_fiscal, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estado => (String.t() | :unset), :codigo_beneficio_fiscal => (String.t() | :unset), :aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estado", :estado, {:optional, :string}}, {"codigo_beneficio_fiscal", :codigo_beneficio_fiscal, {:optional, :string}}, {"aliquota", :aliquota, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListIcmsPresumedCredit"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListItemIcms do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.TaxClassListIcms.t()]} | %__MODULE__{variant: :TaxClassListGroupObject, value: %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __variants__, do: [{:List, {:array, Webmania.Models.Api1Fiscal.TaxClassListIcms}}, {:TaxClassListGroupObject, :map}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListItemIcms"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListIpi do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:tipo_pessoa, :unset}, {:situacao_tributaria, :unset}, {:codigo_enquadramento, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => (String.t() | :unset), :tipo_pessoa => (String.t() | :unset), :situacao_tributaria => (String.t() | :unset), :codigo_enquadramento => (String.t() | :unset), :aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, {:optional, :string}}, {"tipo_pessoa", :tipo_pessoa, {:optional, :string}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"codigo_enquadramento", :codigo_enquadramento, {:optional, :string}}, {"aliquota", :aliquota, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListIpi"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListPis do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:tipo_pessoa, :unset}, {:situacao_tributaria, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => (String.t() | :unset), :tipo_pessoa => (String.t() | :unset), :situacao_tributaria => (String.t() | :unset), :aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, {:optional, :string}}, {"tipo_pessoa", :tipo_pessoa, {:optional, :string}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"aliquota", :aliquota, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListPis"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListItemPis do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.TaxClassListPis.t()]} | %__MODULE__{variant: :TaxClassListGroupObject, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :Number, value: Webmania.Number.t() | integer()}
  @doc false
  def __variants__, do: [{:List, {:array, Webmania.Models.Api1Fiscal.TaxClassListPis}}, {:TaxClassListGroupObject, :map}, {:Number, :number}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListItemPis"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListCofins do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:tipo_pessoa, :unset}, {:situacao_tributaria, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => (String.t() | :unset), :tipo_pessoa => (String.t() | :unset), :situacao_tributaria => (String.t() | :unset), :aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, {:optional, :string}}, {"tipo_pessoa", :tipo_pessoa, {:optional, :string}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"aliquota", :aliquota, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListCofins"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListItemCofins do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.TaxClassListCofins.t()]} | %__MODULE__{variant: :TaxClassListGroupObject, value: %{String.t() => Webmania.JSON.value()}} | %__MODULE__{variant: :Number, value: Webmania.Number.t() | integer()}
  @doc false
  def __variants__, do: [{:List, {:array, Webmania.Models.Api1Fiscal.TaxClassListCofins}}, {:TaxClassListGroupObject, :map}, {:Number, :number}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListItemCofins"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListIssqn do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:tipo_pessoa, :unset}, {:codigo_cfop, :unset}, {:exigibilidade, :unset}, {:item_servico, :unset}, {:incentivo_fiscal, :unset}, {:aliquota, :unset}, {:municipio, :unset}, {:codigo_servico, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => (String.t() | :unset), :tipo_pessoa => (String.t() | :unset), :codigo_cfop => (String.t() | :unset), :exigibilidade => (String.t() | :unset), :item_servico => (String.t() | :unset), :incentivo_fiscal => (String.t() | :unset), :aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :municipio => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, {:optional, :string}}, {"tipo_pessoa", :tipo_pessoa, {:optional, :string}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"exigibilidade", :exigibilidade, {:optional, :string}}, {"item_servico", :item_servico, {:optional, :string}}, {"incentivo_fiscal", :incentivo_fiscal, {:optional, :string}}, {"aliquota", :aliquota, {:optional, :scalar}}, {"municipio", :municipio, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListIssqn"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListIbsCbs do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:tipo_pessoa, :unset}, {:situacao_tributaria, :unset}, {:classificacao_tributaria, :unset}, {:situacao_tributaria_regular, :unset}, {:classificacao_tributaria_regular, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => (String.t() | :unset), :tipo_pessoa => (String.t() | :unset), :situacao_tributaria => (String.t() | :unset), :classificacao_tributaria => (String.t() | :unset), :situacao_tributaria_regular => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :ibs_estadual => (Webmania.Models.Api1Fiscal.TaxClassListIbsCbsDeferral.t() | :unset), :ibs_municipal => (Webmania.Models.Api1Fiscal.TaxClassListIbsCbsDeferral.t() | :unset), :cbs => (Webmania.Models.Api1Fiscal.TaxClassListIbsCbsDeferral.t() | :unset), :credito_presumido => (Webmania.Models.Api1Fiscal.TaxClassListPresumedCredit.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, {:optional, :string}}, {"tipo_pessoa", :tipo_pessoa, {:optional, :string}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :string}}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api1Fiscal.TaxClassListIbsCbsDeferral}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api1Fiscal.TaxClassListIbsCbsDeferral}}, {"cbs", :cbs, {:optional, Webmania.Models.Api1Fiscal.TaxClassListIbsCbsDeferral}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api1Fiscal.TaxClassListPresumedCredit}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListIbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListIbsCbsDeferral do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListIbsCbsDeferral"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListPresumedCredit do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => ((String.t() | nil) | :unset), :aliquota_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, {:optional, {:nullable, :string}}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :scalar}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListPresumedCredit"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassListItemIbsCbs do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.TaxClassListIbsCbs.t()]} | %__MODULE__{variant: :TaxClassListGroupObject, value: %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __variants__, do: [{:List, {:array, Webmania.Models.Api1Fiscal.TaxClassListIbsCbs}}, {:TaxClassListGroupObject, :map}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassListItemIbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G002 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:status, :unset}, {:motivo, :unset}, {:nfe, :unset}, {:serie, :unset}, {:recibo, :unset}, {:chave, :unset}, {:modelo, :unset}, {:epec, :unset}, {:xml, :unset}, {:danfe, :unset}, {:log, :unset}, {:data, :unset}, {:log_cancelamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :status => (String.t() | :unset), :motivo => (String.t() | :unset), :nfe => (integer() | :unset), :serie => (integer() | :unset), :recibo => (String.t() | :unset), :chave => (String.t() | :unset), :modelo => (String.t() | :unset), :epec => (boolean() | :unset), :xml => (String.t() | :unset), :danfe => (String.t() | :unset), :log => (Webmania.Models.Api1Fiscal.G002Log.t() | :unset), :data => (Webmania.Models.Api1Fiscal.NfeIssueRequest.t() | :unset), :log_cancelamento => (Webmania.Models.Api1Fiscal.G002LogCancelamento.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"motivo", :motivo, {:optional, :string}}, {"nfe", :nfe, {:optional, :i64}}, {"serie", :serie, {:optional, :i64}}, {"recibo", :recibo, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"epec", :epec, {:optional, :boolean}}, {"xml", :xml, {:optional, :string}}, {"danfe", :danfe, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api1Fiscal.G002Log}}, {"data", :data, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequest}}, {"log_cancelamento", :log_cancelamento, {:optional, Webmania.Models.Api1Fiscal.G002LogCancelamento}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G002"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G002Log do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :SefazLog, value: Webmania.Models.Api1Fiscal.SefazLog.t()} | %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.SefazLog.t()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:SefazLog, Webmania.Models.Api1Fiscal.SefazLog}, {:Text, :string}, {:List, {:array, Webmania.Models.Api1Fiscal.SefazLog}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G002Log"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeIssueRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:operacao, :unset}, {:natureza_operacao, :unset}, {:modelo, :unset}, {:finalidade, :unset}, {:ambiente, :unset}, {:tipo_credito, :unset}, {:tipo_debito, :unset}, {:url_notificacao, :unset}, {:cliente, :unset}, {:produtos, :unset}, {:pedido, :unset}, {:transporte, :unset}, {:fatura, :unset}, {:parcelas, :unset}, {:exportacao, :unset}, {:agropecuario, :unset}, {:compra_governamental, :unset}, {:inscricao_suframa, :unset}, {:codigo_indicador_operacao, :unset}, {:data_emissao, :unset}, {:data_entrada_saida, :unset}, {:data_previsao_entrega, :unset}, {:data_servico, :unset}, {:nfe_referenciada, :unset}, {:cte_referenciada, :unset}, {:ecf_referenciada, :unset}, {:nf_rural_referenciada, :unset}, {:calculo_impostos, :unset}, {:previa_danfe, :unset}, {:assincrono, :unset}, {:responsavel_tecnico, :unset}, {:duplicatas, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :operacao => integer(), :natureza_operacao => String.t(), :modelo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :finalidade => integer(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :tipo_credito => (integer() | :unset), :tipo_debito => (integer() | :unset), :url_notificacao => (String.t() | :unset), :cliente => (Webmania.Models.Api1Fiscal.NfeCustomer.t() | :unset), :produtos => [Webmania.Models.Api1Fiscal.NfeProduct.t()], :pedido => Webmania.Models.Api1Fiscal.NfeOrder.t(), :transporte => (Webmania.Models.Api1Fiscal.NfeTransport.t() | :unset), :fatura => (Webmania.Models.Api1Fiscal.G028.t() | :unset), :parcelas => ([Webmania.Models.Api1Fiscal.G029.t()] | :unset), :exportacao => (Webmania.Models.Api1Fiscal.G030.t() | :unset), :agropecuario => (Webmania.Models.Api1Fiscal.G031.t() | :unset), :compra_governamental => (Webmania.Models.Api1Fiscal.G034.t() | :unset), :inscricao_suframa => (String.t() | :unset), :codigo_indicador_operacao => (String.t() | :unset), :data_emissao => (String.t() | :unset), :data_entrada_saida => (String.t() | :unset), :data_previsao_entrega => (String.t() | :unset), :data_servico => (String.t() | :unset), :nfe_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestNfeReferenciada.t() | :unset), :cte_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestCteReferenciada.t() | :unset), :ecf_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestEcfReferenciada.t() | :unset), :nf_rural_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestNfRuralReferenciada.t() | :unset), :calculo_impostos => (boolean() | :unset), :previa_danfe => (boolean() | :unset), :assincrono => (boolean() | :unset), :responsavel_tecnico => (Webmania.Models.Api1Fiscal.G068.t() | :unset), :duplicatas => ([Webmania.Models.Api1Fiscal.G029.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"operacao", :operacao, :i64}, {"natureza_operacao", :natureza_operacao, :string}, {"modelo", :modelo, :scalar}, {"finalidade", :finalidade, :i64}, {"ambiente", :ambiente, :scalar}, {"tipo_credito", :tipo_credito, {:optional, :i64}}, {"tipo_debito", :tipo_debito, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"cliente", :cliente, {:optional, Webmania.Models.Api1Fiscal.NfeCustomer}}, {"produtos", :produtos, {:array, Webmania.Models.Api1Fiscal.NfeProduct}}, {"pedido", :pedido, Webmania.Models.Api1Fiscal.NfeOrder}, {"transporte", :transporte, {:optional, Webmania.Models.Api1Fiscal.NfeTransport}}, {"fatura", :fatura, {:optional, Webmania.Models.Api1Fiscal.G028}}, {"parcelas", :parcelas, {:optional, {:array, Webmania.Models.Api1Fiscal.G029}}}, {"exportacao", :exportacao, {:optional, Webmania.Models.Api1Fiscal.G030}}, {"agropecuario", :agropecuario, {:optional, Webmania.Models.Api1Fiscal.G031}}, {"compra_governamental", :compra_governamental, {:optional, Webmania.Models.Api1Fiscal.G034}}, {"inscricao_suframa", :inscricao_suframa, {:optional, :string}}, {"codigo_indicador_operacao", :codigo_indicador_operacao, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"data_entrada_saida", :data_entrada_saida, {:optional, :string}}, {"data_previsao_entrega", :data_previsao_entrega, {:optional, :string}}, {"data_servico", :data_servico, {:optional, :string}}, {"nfe_referenciada", :nfe_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestNfeReferenciada}}, {"cte_referenciada", :cte_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestCteReferenciada}}, {"ecf_referenciada", :ecf_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestEcfReferenciada}}, {"nf_rural_referenciada", :nf_rural_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestNfRuralReferenciada}}, {"calculo_impostos", :calculo_impostos, {:optional, :boolean}}, {"previa_danfe", :previa_danfe, {:optional, :boolean}}, {"assincrono", :assincrono, {:optional, :boolean}}, {"responsavel_tecnico", :responsavel_tecnico, {:optional, Webmania.Models.Api1Fiscal.G068}}, {"duplicatas", :duplicatas, {:optional, {:array, Webmania.Models.Api1Fiscal.G029}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeIssueRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeCustomer do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cpf, :unset}, {:nome_completo, :unset}, {:cnpj, :unset}, {:razao_social, :unset}, {:ie, :unset}, {:suframa, :unset}, {:substituto_tributario, :unset}, {:consumidor_final, :unset}, {:contribuinte, :unset}, {:microcervejaria, :unset}, {:endereco, :unset}, {:complemento, :unset}, {:numero, :unset}, {:bairro, :unset}, {:cidade, :unset}, {:uf, :unset}, {:cep, :unset}, {:telefone, :unset}, {:email, :unset}, {:id_estrangeiro, :unset}, {:nome_estrangeiro, :unset}, {:cod_pais, :unset}, {:nome_pais, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cpf => (String.t() | :unset), :nome_completo => (String.t() | :unset), :cnpj => (String.t() | :unset), :razao_social => (String.t() | :unset), :ie => (String.t() | :unset), :suframa => (String.t() | :unset), :substituto_tributario => (String.t() | :unset), :consumidor_final => (integer() | :unset), :contribuinte => (integer() | :unset), :microcervejaria => (boolean() | :unset), :endereco => (String.t() | :unset), :complemento => (String.t() | :unset), :numero => (String.t() | :unset), :bairro => (String.t() | :unset), :cidade => (String.t() | :unset), :uf => (String.t() | :unset), :cep => (String.t() | :unset), :telefone => (String.t() | :unset), :email => (String.t() | :unset), :id_estrangeiro => (String.t() | :unset), :nome_estrangeiro => (String.t() | :unset), :cod_pais => (String.t() | :unset), :nome_pais => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cpf", :cpf, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"suframa", :suframa, {:optional, :string}}, {"substituto_tributario", :substituto_tributario, {:optional, :string}}, {"consumidor_final", :consumidor_final, {:optional, :i64}}, {"contribuinte", :contribuinte, {:optional, :i64}}, {"microcervejaria", :microcervejaria, {:optional, :boolean}}, {"endereco", :endereco, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"nome_estrangeiro", :nome_estrangeiro, {:optional, :string}}, {"cod_pais", :cod_pais, {:optional, :string}}, {"nome_pais", :nome_pais, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeCustomer"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeProduct do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:item, :unset}, {:nome, :unset}, {:codigo, :unset}, {:ncm, :unset}, {:quantidade, :unset}, {:quantidade_tributavel, :unset}, {:unidade, :unset}, {:unidade_tributavel, :unset}, {:peso, :unset}, {:origem, :unset}, {:desconto, :unset}, {:subtotal, :unset}, {:subtotal_tributavel, :unset}, {:total, :unset}, {:ind_valor_total, :unset}, {:classe_imposto, :unset}, {:impostos, :unset}, {:dfe_referenciado, :unset}, {:cest, :unset}, {:beneficio_fiscal, :unset}, {:informacoes_adicionais, :unset}, {:ind_escala, :unset}, {:cnpj_fabricante, :unset}, {:gtin, :unset}, {:gtin_tributavel, :unset}, {:cod_barras, :unset}, {:cod_barras_tributavel, :unset}, {:nve, :unset}, {:nrecopi, :unset}, {:ativo_permanente, :unset}, {:veiculo_usado, :unset}, {:ex_ipi, :unset}, {:combustiveis, :unset}, {:medicamento, :unset}, {:armamentos, :unset}, {:veiculos_novos, :unset}, {:rastro, :unset}, {:drawback, :unset}, {:reg_exportacao, :unset}, {:nfe_exportacao, :unset}, {:qtd_exportacao, :unset}, {:ndoc_importacao, :unset}, {:ddoc_importacao, :unset}, {:local_desembaraco, :unset}, {:uf_desembaraco, :unset}, {:data_desembaraco, :unset}, {:via_transporte, :unset}, {:intermediacao, :unset}, {:adicao, :unset}, {:seq_adicao, :unset}, {:fabricante, :unset}, {:desc_di, :unset}, {:afrmm, :unset}, {:cnpj_terceiro, :unset}, {:cpf_terceiro, :unset}, {:uf_terceiro, :unset}, {:cod_exportador, :unset}, {:nfci, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (integer() | :unset), :item => (integer() | :unset), :nome => String.t(), :codigo => String.t(), :ncm => String.t(), :quantidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :quantidade_tributavel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :unidade => String.t(), :unidade_tributavel => (String.t() | :unset), :peso => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :origem => (integer() | :unset), :desconto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :subtotal => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :subtotal_tributavel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :total => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :ind_valor_total => (integer() | :unset), :classe_imposto => (String.t() | :unset), :impostos => (Webmania.Models.Api1Fiscal.G069.t() | :unset), :dfe_referenciado => (Webmania.Models.Api1Fiscal.G015.t() | :unset), :cest => (String.t() | :unset), :beneficio_fiscal => (String.t() | :unset), :informacoes_adicionais => (String.t() | :unset), :ind_escala => (String.t() | :unset), :cnpj_fabricante => (String.t() | :unset), :gtin => (String.t() | :unset), :gtin_tributavel => (String.t() | :unset), :cod_barras => (String.t() | :unset), :cod_barras_tributavel => (String.t() | :unset), :nve => (String.t() | :unset), :nrecopi => (String.t() | :unset), :ativo_permanente => (boolean() | :unset), :veiculo_usado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ex_ipi => (String.t() | :unset), :combustiveis => (Webmania.Models.Api1Fiscal.G016.t() | :unset), :medicamento => (Webmania.Models.Api1Fiscal.G018.t() | :unset), :armamentos => (Webmania.Models.Api1Fiscal.G019.t() | :unset), :veiculos_novos => (Webmania.Models.Api1Fiscal.G020.t() | :unset), :rastro => ([Webmania.Models.Api1Fiscal.G014.t()] | :unset), :drawback => (String.t() | :unset), :reg_exportacao => (String.t() | :unset), :nfe_exportacao => (String.t() | :unset), :qtd_exportacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ndoc_importacao => (String.t() | :unset), :ddoc_importacao => (String.t() | :unset), :local_desembaraco => (String.t() | :unset), :uf_desembaraco => (String.t() | :unset), :data_desembaraco => (String.t() | :unset), :via_transporte => (String.t() | :unset), :intermediacao => (String.t() | :unset), :adicao => (String.t() | :unset), :seq_adicao => (String.t() | :unset), :fabricante => (String.t() | :unset), :desc_di => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :afrmm => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cnpj_terceiro => (String.t() | :unset), :cpf_terceiro => (String.t() | :unset), :uf_terceiro => (String.t() | :unset), :cod_exportador => (String.t() | :unset), :nfci => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :i64}}, {"item", :item, {:optional, :i64}}, {"nome", :nome, :string}, {"codigo", :codigo, :string}, {"ncm", :ncm, :string}, {"quantidade", :quantidade, :scalar}, {"quantidade_tributavel", :quantidade_tributavel, {:optional, :scalar}}, {"unidade", :unidade, :string}, {"unidade_tributavel", :unidade_tributavel, {:optional, :string}}, {"peso", :peso, {:optional, :scalar}}, {"origem", :origem, {:optional, :i64}}, {"desconto", :desconto, {:optional, :scalar}}, {"subtotal", :subtotal, :scalar}, {"subtotal_tributavel", :subtotal_tributavel, {:optional, :scalar}}, {"total", :total, :scalar}, {"ind_valor_total", :ind_valor_total, {:optional, :i64}}, {"classe_imposto", :classe_imposto, {:optional, :string}}, {"impostos", :impostos, {:optional, Webmania.Models.Api1Fiscal.G069}}, {"dfe_referenciado", :dfe_referenciado, {:optional, Webmania.Models.Api1Fiscal.G015}}, {"cest", :cest, {:optional, :string}}, {"beneficio_fiscal", :beneficio_fiscal, {:optional, :string}}, {"informacoes_adicionais", :informacoes_adicionais, {:optional, :string}}, {"ind_escala", :ind_escala, {:optional, :string}}, {"cnpj_fabricante", :cnpj_fabricante, {:optional, :string}}, {"gtin", :gtin, {:optional, :string}}, {"gtin_tributavel", :gtin_tributavel, {:optional, :string}}, {"cod_barras", :cod_barras, {:optional, :string}}, {"cod_barras_tributavel", :cod_barras_tributavel, {:optional, :string}}, {"nve", :nve, {:optional, :string}}, {"nrecopi", :nrecopi, {:optional, :string}}, {"ativo_permanente", :ativo_permanente, {:optional, :boolean}}, {"veiculo_usado", :veiculo_usado, {:optional, :scalar}}, {"ex_ipi", :ex_ipi, {:optional, :string}}, {"combustiveis", :combustiveis, {:optional, Webmania.Models.Api1Fiscal.G016}}, {"medicamento", :medicamento, {:optional, Webmania.Models.Api1Fiscal.G018}}, {"armamentos", :armamentos, {:optional, Webmania.Models.Api1Fiscal.G019}}, {"veiculos_novos", :veiculos_novos, {:optional, Webmania.Models.Api1Fiscal.G020}}, {"rastro", :rastro, {:optional, {:array, Webmania.Models.Api1Fiscal.G014}}}, {"drawback", :drawback, {:optional, :string}}, {"reg_exportacao", :reg_exportacao, {:optional, :string}}, {"nfe_exportacao", :nfe_exportacao, {:optional, :string}}, {"qtd_exportacao", :qtd_exportacao, {:optional, :scalar}}, {"ndoc_importacao", :ndoc_importacao, {:optional, :string}}, {"ddoc_importacao", :ddoc_importacao, {:optional, :string}}, {"local_desembaraco", :local_desembaraco, {:optional, :string}}, {"uf_desembaraco", :uf_desembaraco, {:optional, :string}}, {"data_desembaraco", :data_desembaraco, {:optional, :string}}, {"via_transporte", :via_transporte, {:optional, :string}}, {"intermediacao", :intermediacao, {:optional, :string}}, {"adicao", :adicao, {:optional, :string}}, {"seq_adicao", :seq_adicao, {:optional, :string}}, {"fabricante", :fabricante, {:optional, :string}}, {"desc_di", :desc_di, {:optional, :scalar}}, {"afrmm", :afrmm, {:optional, :scalar}}, {"cnpj_terceiro", :cnpj_terceiro, {:optional, :string}}, {"cpf_terceiro", :cpf_terceiro, {:optional, :string}}, {"uf_terceiro", :uf_terceiro, {:optional, :string}}, {"cod_exportador", :cod_exportador, {:optional, :string}}, {"nfci", :nfci, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeProduct"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G069 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:icms, :unset}, {:ipi, :unset}, {:pis, :unset}, {:cofins, :unset}, {:issqn, :unset}, {:retencao_tributos, :unset}, {:importacao, :unset}, {:ibs_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:icms => (Webmania.Models.Api1Fiscal.NfeIcms.t() | :unset), :ipi => (Webmania.Models.Api1Fiscal.G092.t() | :unset), :pis => (Webmania.Models.Api1Fiscal.G093.t() | :unset), :cofins => (Webmania.Models.Api1Fiscal.G094.t() | :unset), :issqn => (Webmania.Models.Api1Fiscal.G095.t() | :unset), :retencao_tributos => (Webmania.Models.Api1Fiscal.G096.t() | :unset), :importacao => (Webmania.Models.Api1Fiscal.G097.t() | :unset), :ibs_cbs => (Webmania.Models.Api1Fiscal.G100.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"icms", :icms, {:optional, Webmania.Models.Api1Fiscal.NfeIcms}}, {"ipi", :ipi, {:optional, Webmania.Models.Api1Fiscal.G092}}, {"pis", :pis, {:optional, Webmania.Models.Api1Fiscal.G093}}, {"cofins", :cofins, {:optional, Webmania.Models.Api1Fiscal.G094}}, {"issqn", :issqn, {:optional, Webmania.Models.Api1Fiscal.G095}}, {"retencao_tributos", :retencao_tributos, {:optional, Webmania.Models.Api1Fiscal.G096}}, {"importacao", :importacao, {:optional, Webmania.Models.Api1Fiscal.G097}}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G100}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G069"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeIcms do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:aliquota_fcp, :unset}, {:aliquota_interestadual, :unset}, {:codigo_cfop, :unset}, {:situacao_tributaria, :unset}, {:aliquota_importacao, :unset}, {:industria, :unset}, {:majoracao, :unset}, {:bc_icms, :unset}, {:bc_icms_st, :unset}, {:valor_icms, :unset}, {:aliquota_diferimento, :unset}, {:credito_presumido, :unset}, {:aliquota_credito, :unset}, {:aliquota_st, :unset}, {:aliquota_fcp_st, :unset}, {:aliquota_mva, :unset}, {:aliquota_reducao, :unset}, {:aliquota_reducao_st, :unset}, {:bc_st_retido, :unset}, {:aliquota_st_retido, :unset}, {:valor_st_retido, :unset}, {:valor_icms_substituto, :unset}, {:valor_fcp_retido, :unset}, {:aliquota_fcp_retido, :unset}, {:aliquota_bc_efetivo, :unset}, {:aliquota_icms_efetivo, :unset}, {:difal_antecipacao, :unset}, {:codigo_beneficio_reducao_bc, :unset}, {:pauta_fiscal, :unset}, {:quantidade_bc, :unset}, {:motivo_desoneracao_st, :unset}, {:quantidade_retencao, :unset}, {:aliquota_retencao, :unset}, {:percentual_reducao, :unset}, {:motivo_reducao, :unset}, {:motivo_desoneracao, :unset}, {:deducao_desoneracao, :unset}, {:aliquota_diferimento_fcp, :unset}, {:bc_st_dest, :unset}, {:valor_st_dest, :unset}, {:valor_operacao, :unset}, {:codigo_beneficio_fiscal, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_interestadual => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cfop => String.t(), :situacao_tributaria => String.t(), :aliquota_importacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :industria => (String.t() | :unset), :majoracao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_icms_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :credito_presumido => ([Webmania.Models.Api1Fiscal.G091.t()] | :unset), :aliquota_credito => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_mva => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_st_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_st_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_st_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_icms_substituto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_fcp_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_bc_efetivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_icms_efetivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :difal_antecipacao => (boolean() | :unset), :codigo_beneficio_reducao_bc => (String.t() | :unset), :pauta_fiscal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_bc => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo_desoneracao_st => (String.t() | :unset), :quantidade_retencao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_retencao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :percentual_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo_reducao => (String.t() | :unset), :motivo_desoneracao => (String.t() | :unset), :deducao_desoneracao => (String.t() | :unset), :aliquota_diferimento_fcp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_st_dest => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_st_dest => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_beneficio_fiscal => (String.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :scalar}}, {"aliquota_fcp", :aliquota_fcp, {:optional, :scalar}}, {"aliquota_interestadual", :aliquota_interestadual, {:optional, :scalar}}, {"codigo_cfop", :codigo_cfop, :string}, {"situacao_tributaria", :situacao_tributaria, :string}, {"aliquota_importacao", :aliquota_importacao, {:optional, :scalar}}, {"industria", :industria, {:optional, :string}}, {"majoracao", :majoracao, {:optional, :scalar}}, {"bc_icms", :bc_icms, {:optional, :scalar}}, {"bc_icms_st", :bc_icms_st, {:optional, :scalar}}, {"valor_icms", :valor_icms, {:optional, :scalar}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"credito_presumido", :credito_presumido, {:optional, {:array, Webmania.Models.Api1Fiscal.G091}}}, {"aliquota_credito", :aliquota_credito, {:optional, :scalar}}, {"aliquota_st", :aliquota_st, {:optional, :scalar}}, {"aliquota_fcp_st", :aliquota_fcp_st, {:optional, :scalar}}, {"aliquota_mva", :aliquota_mva, {:optional, :scalar}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :scalar}}, {"aliquota_reducao_st", :aliquota_reducao_st, {:optional, :scalar}}, {"bc_st_retido", :bc_st_retido, {:optional, :scalar}}, {"aliquota_st_retido", :aliquota_st_retido, {:optional, :scalar}}, {"valor_st_retido", :valor_st_retido, {:optional, :scalar}}, {"valor_icms_substituto", :valor_icms_substituto, {:optional, :scalar}}, {"valor_fcp_retido", :valor_fcp_retido, {:optional, :scalar}}, {"aliquota_fcp_retido", :aliquota_fcp_retido, {:optional, :scalar}}, {"aliquota_bc_efetivo", :aliquota_bc_efetivo, {:optional, :scalar}}, {"aliquota_icms_efetivo", :aliquota_icms_efetivo, {:optional, :scalar}}, {"difal_antecipacao", :difal_antecipacao, {:optional, :boolean}}, {"codigo_beneficio_reducao_bc", :codigo_beneficio_reducao_bc, {:optional, :string}}, {"pauta_fiscal", :pauta_fiscal, {:optional, :scalar}}, {"quantidade_bc", :quantidade_bc, {:optional, :scalar}}, {"motivo_desoneracao_st", :motivo_desoneracao_st, {:optional, :string}}, {"quantidade_retencao", :quantidade_retencao, {:optional, :scalar}}, {"aliquota_retencao", :aliquota_retencao, {:optional, :scalar}}, {"percentual_reducao", :percentual_reducao, {:optional, :scalar}}, {"motivo_reducao", :motivo_reducao, {:optional, :string}}, {"motivo_desoneracao", :motivo_desoneracao, {:optional, :string}}, {"deducao_desoneracao", :deducao_desoneracao, {:optional, :string}}, {"aliquota_diferimento_fcp", :aliquota_diferimento_fcp, {:optional, :scalar}}, {"bc_st_dest", :bc_st_dest, {:optional, :scalar}}, {"valor_st_dest", :valor_st_dest, {:optional, :scalar}}, {"valor_operacao", :valor_operacao, {:optional, :scalar}}, {"codigo_beneficio_fiscal", :codigo_beneficio_fiscal, {:optional, :string}}, {"valor", :valor, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeIcms"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G091 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_beneficio_fiscal, :unset}, {:aliquota, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_beneficio_fiscal => (String.t() | :unset), :aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_beneficio_fiscal", :codigo_beneficio_fiscal, {:optional, :string}}, {"aliquota", :aliquota, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G091"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G092 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:codigo_enquadramento, :unset}, {:aliquota, :unset}, {:percentual_devolvido, :unset}, {:ipi_devolvido, :unset}, {:codigo_selo, :unset}, {:qtd_selo, :unset}, {:bc_ipi, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => String.t(), :codigo_enquadramento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :percentual_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ipi_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_selo => (String.t() | :unset), :qtd_selo => (String.t() | :unset), :bc_ipi => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, :string}, {"codigo_enquadramento", :codigo_enquadramento, :scalar}, {"aliquota", :aliquota, :scalar}, {"percentual_devolvido", :percentual_devolvido, {:optional, :scalar}}, {"ipi_devolvido", :ipi_devolvido, {:optional, :scalar}}, {"codigo_selo", :codigo_selo, {:optional, :string}}, {"qtd_selo", :qtd_selo, {:optional, :string}}, {"bc_ipi", :bc_ipi, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G092"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G093 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:aliquota, :unset}, {:majoracao, :unset}, {:bc_pis, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :majoracao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, :string}, {"aliquota", :aliquota, :scalar}, {"majoracao", :majoracao, {:optional, :scalar}}, {"bc_pis", :bc_pis, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G093"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G094 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:aliquota, :unset}, {:majoracao, :unset}, {:bc_cofins, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :majoracao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, :string}, {"aliquota", :aliquota, :scalar}, {"majoracao", :majoracao, {:optional, :scalar}}, {"bc_cofins", :bc_cofins, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G094"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G095 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_cfop, :unset}, {:exigibilidade, :unset}, {:item_servico, :unset}, {:incentivo_fiscal, :unset}, {:aliquota, :unset}, {:deducao, :unset}, {:retencoes, :unset}, {:desconto_incondicionado, :unset}, {:desconto_condicionado, :unset}, {:iss_retido, :unset}, {:municipio, :unset}, {:codigo_servico, :unset}, {:processo, :unset}, {:cnae, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_cfop => String.t(), :exigibilidade => integer(), :item_servico => String.t(), :incentivo_fiscal => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :deducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :retencoes => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :desconto_incondicionado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :desconto_condicionado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :iss_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :municipio => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :processo => (String.t() | :unset), :cnae => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_cfop", :codigo_cfop, :string}, {"exigibilidade", :exigibilidade, :i64}, {"item_servico", :item_servico, :string}, {"incentivo_fiscal", :incentivo_fiscal, :string}, {"aliquota", :aliquota, :scalar}, {"deducao", :deducao, {:optional, :scalar}}, {"retencoes", :retencoes, {:optional, :scalar}}, {"desconto_incondicionado", :desconto_incondicionado, {:optional, :scalar}}, {"desconto_condicionado", :desconto_condicionado, {:optional, :scalar}}, {"iss_retido", :iss_retido, {:optional, :scalar}}, {"municipio", :municipio, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"processo", :processo, {:optional, :string}}, {"cnae", :cnae, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G095"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G096 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_pis, :unset}, {:valor_cofins, :unset}, {:valor_csll, :unset}, {:bc_irrf, :unset}, {:valor_irrf, :unset}, {:bc_previdencia, :unset}, {:valor_previdencia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_csll => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_irrf => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_irrf => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_previdencia => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_previdencia => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_pis", :valor_pis, {:optional, :scalar}}, {"valor_cofins", :valor_cofins, {:optional, :scalar}}, {"valor_csll", :valor_csll, {:optional, :scalar}}, {"bc_irrf", :bc_irrf, {:optional, :scalar}}, {"valor_irrf", :valor_irrf, {:optional, :scalar}}, {"bc_previdencia", :bc_previdencia, {:optional, :scalar}}, {"valor_previdencia", :valor_previdencia, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G096"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G097 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:iof, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :iof => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, :scalar}, {"iof", :iof, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G097"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G100 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:classificacao_tributaria, :unset}, {:situacao_tributaria_regular, :unset}, {:classificacao_tributaria_regular, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:tributacao_monofasica, :unset}, {:credito_presumido, :unset}, {:transferencia_credito, :unset}, {:ajuste_competencia, :unset}, {:estorno_credito, :unset}, {:base_calculo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => String.t(), :classificacao_tributaria => String.t(), :situacao_tributaria_regular => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :ibs_estadual => (Webmania.Models.Api1Fiscal.G101.t() | :unset), :ibs_municipal => (Webmania.Models.Api1Fiscal.G102.t() | :unset), :cbs => (Webmania.Models.Api1Fiscal.G103.t() | :unset), :tributacao_monofasica => (Webmania.Models.Api1Fiscal.G105.t() | :unset), :credito_presumido => (Webmania.Models.Api1Fiscal.G106.t() | :unset), :transferencia_credito => (Webmania.Models.Api1Fiscal.G108.t() | :unset), :ajuste_competencia => (Webmania.Models.Api1Fiscal.G109.t() | :unset), :estorno_credito => (Webmania.Models.Api1Fiscal.G110.t() | :unset), :base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, :string}, {"classificacao_tributaria", :classificacao_tributaria, :string}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api1Fiscal.G101}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api1Fiscal.G102}}, {"cbs", :cbs, {:optional, Webmania.Models.Api1Fiscal.G103}}, {"tributacao_monofasica", :tributacao_monofasica, {:optional, Webmania.Models.Api1Fiscal.G105}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api1Fiscal.G106}}, {"transferencia_credito", :transferencia_credito, {:optional, Webmania.Models.Api1Fiscal.G108}}, {"ajuste_competencia", :ajuste_competencia, {:optional, Webmania.Models.Api1Fiscal.G109}}, {"estorno_credito", :estorno_credito, {:optional, Webmania.Models.Api1Fiscal.G110}}, {"base_calculo", :base_calculo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G100"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G101 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G101"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G102 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:valor_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G102"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G103 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:percentual_devolvido, :unset}, {:valor_devolvido, :unset}, {:alc_zfm_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :percentual_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_devolvido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :alc_zfm_cbs => (Webmania.Models.Api1Fiscal.G104.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"percentual_devolvido", :percentual_devolvido, {:optional, :scalar}}, {"valor_devolvido", :valor_devolvido, {:optional, :scalar}}, {"alc_zfm_cbs", :alc_zfm_cbs, {:optional, Webmania.Models.Api1Fiscal.G104}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G103"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G104 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_aplicacao, :unset}, {:numero_processo_suframa, :unset}, {:aliquota_efetiva_referencia, :unset}, {:valor_efetivo_referencia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_aplicacao => String.t(), :numero_processo_suframa => (String.t() | :unset), :aliquota_efetiva_referencia => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_efetivo_referencia => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_aplicacao", :tipo_aplicacao, :string}, {"numero_processo_suframa", :numero_processo_suframa, {:optional, :string}}, {"aliquota_efetiva_referencia", :aliquota_efetiva_referencia, :scalar}, {"valor_efetivo_referencia", :valor_efetivo_referencia, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G104"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G105 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_bc, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:quantidade_bc_retencao, :unset}, {:aliquota_ibs_retencao, :unset}, {:aliquota_cbs_retencao, :unset}, {:quantidade_bc_retido, :unset}, {:aliquota_ibs_retido, :unset}, {:aliquota_cbs_retido, :unset}, {:aliquota_diferimento_ibs, :unset}, {:aliquota_diferimento_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_bc => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_bc_retencao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_ibs_retencao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_cbs_retencao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_bc_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_ibs_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_cbs_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_diferimento_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_diferimento_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_bc", :quantidade_bc, {:optional, :scalar}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :scalar}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :scalar}}, {"quantidade_bc_retencao", :quantidade_bc_retencao, {:optional, :scalar}}, {"aliquota_ibs_retencao", :aliquota_ibs_retencao, {:optional, :scalar}}, {"aliquota_cbs_retencao", :aliquota_cbs_retencao, {:optional, :scalar}}, {"quantidade_bc_retido", :quantidade_bc_retido, {:optional, :scalar}}, {"aliquota_ibs_retido", :aliquota_ibs_retido, {:optional, :scalar}}, {"aliquota_cbs_retido", :aliquota_cbs_retido, {:optional, :scalar}}, {"aliquota_diferimento_ibs", :aliquota_diferimento_ibs, {:optional, :scalar}}, {"aliquota_diferimento_cbs", :aliquota_diferimento_cbs, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G105"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G106 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:bc, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => String.t(), :bc => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :aliquota_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, :string}, {"bc", :bc, :scalar}, {"aliquota_ibs", :aliquota_ibs, {:optional, :scalar}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G106"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G108 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G108"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G109 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:competencia_apuracao, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:competencia_apuracao => String.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"competencia_apuracao", :competencia_apuracao, :string}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G109"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G110 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G110"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G015 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:item, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :item => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"item", :item, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G015"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G016 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_anp, :unset}, {:descricao_anp, :unset}, {:uf_consumo, :unset}, {:percentual_glp, :unset}, {:percentual_gnn, :unset}, {:percentual_gni, :unset}, {:percentual_biodiesel, :unset}, {:partida, :unset}, {:codif, :unset}, {:qtd_temperatura, :unset}, {:bc_cide, :unset}, {:valor_cide, :unset}, {:bico, :unset}, {:bomba, :unset}, {:tanque, :unset}, {:encerrante_inicio, :unset}, {:encerrante_final, :unset}, {:origem, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_anp => String.t(), :descricao_anp => String.t(), :uf_consumo => String.t(), :percentual_glp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :percentual_gnn => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :percentual_gni => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :percentual_biodiesel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :partida => (String.t() | :unset), :codif => (String.t() | :unset), :qtd_temperatura => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_cide => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cide => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bico => (integer() | :unset), :bomba => (integer() | :unset), :tanque => (integer() | :unset), :encerrante_inicio => (integer() | :unset), :encerrante_final => (integer() | :unset), :origem => ([Webmania.Models.Api1Fiscal.G017.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_anp", :codigo_anp, :string}, {"descricao_anp", :descricao_anp, :string}, {"uf_consumo", :uf_consumo, :string}, {"percentual_glp", :percentual_glp, {:optional, :scalar}}, {"percentual_gnn", :percentual_gnn, {:optional, :scalar}}, {"percentual_gni", :percentual_gni, {:optional, :scalar}}, {"percentual_biodiesel", :percentual_biodiesel, {:optional, :scalar}}, {"partida", :partida, {:optional, :string}}, {"codif", :codif, {:optional, :string}}, {"qtd_temperatura", :qtd_temperatura, {:optional, :scalar}}, {"bc_cide", :bc_cide, {:optional, :scalar}}, {"valor_cide", :valor_cide, {:optional, :scalar}}, {"bico", :bico, {:optional, :i64}}, {"bomba", :bomba, {:optional, :i64}}, {"tanque", :tanque, {:optional, :i64}}, {"encerrante_inicio", :encerrante_inicio, {:optional, :i64}}, {"encerrante_final", :encerrante_final, {:optional, :i64}}, {"origem", :origem, {:optional, {:array, Webmania.Models.Api1Fiscal.G017}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G016"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G017 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:indicador_importacao, :unset}, {:uf_origem, :unset}, {:percentual_originario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:indicador_importacao => (String.t() | :unset), :uf_origem => (String.t() | :unset), :percentual_originario => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"indicador_importacao", :indicador_importacao, {:optional, :string}}, {"uf_origem", :uf_origem, {:optional, :string}}, {"percentual_originario", :percentual_originario, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G017"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G018 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_anvisa, :unset}, {:pmc, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_anvisa => String.t(), :pmc => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_anvisa", :codigo_anvisa, :string}, {"pmc", :pmc, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G018"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G019 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo, :unset}, {:serie_arma, :unset}, {:serie_cano, :unset}, {:descricao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo => integer(), :serie_arma => String.t(), :serie_cano => String.t(), :descricao => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo", :tipo, :i64}, {"serie_arma", :serie_arma, :string}, {"serie_cano", :serie_cano, :string}, {"descricao", :descricao, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G019"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G020 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_operacao, :unset}, {:chassi, :unset}, {:cor, :unset}, {:cor_descricao, :unset}, {:cv, :unset}, {:cilindrada, :unset}, {:peso_liquido, :unset}, {:peso_bruto, :unset}, {:serie, :unset}, {:tipo_combustivel, :unset}, {:numero_motor, :unset}, {:cmt, :unset}, {:dist, :unset}, {:ano_modelo, :unset}, {:ano_fabricacao, :unset}, {:tipo_pintura, :unset}, {:tipo_veiculo, :unset}, {:especie_veiculo, :unset}, {:vin, :unset}, {:condicao_veiculo, :unset}, {:marca_modelo, :unset}, {:cor_denatran, :unset}, {:lotacao, :unset}, {:restricao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_operacao => integer(), :chassi => String.t(), :cor => String.t(), :cor_descricao => String.t(), :cv => String.t(), :cilindrada => String.t(), :peso_liquido => integer(), :peso_bruto => integer(), :serie => String.t(), :tipo_combustivel => integer(), :numero_motor => String.t(), :cmt => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :dist => String.t(), :ano_modelo => String.t(), :ano_fabricacao => String.t(), :tipo_pintura => String.t(), :tipo_veiculo => integer(), :especie_veiculo => integer(), :vin => String.t(), :condicao_veiculo => integer(), :marca_modelo => String.t(), :cor_denatran => integer(), :lotacao => integer(), :restricao => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_operacao", :tipo_operacao, :i64}, {"chassi", :chassi, :string}, {"cor", :cor, :string}, {"cor_descricao", :cor_descricao, :string}, {"cv", :cv, :string}, {"cilindrada", :cilindrada, :string}, {"peso_liquido", :peso_liquido, :i64}, {"peso_bruto", :peso_bruto, :i64}, {"serie", :serie, :string}, {"tipo_combustivel", :tipo_combustivel, :i64}, {"numero_motor", :numero_motor, :string}, {"cmt", :cmt, :scalar}, {"dist", :dist, :string}, {"ano_modelo", :ano_modelo, :string}, {"ano_fabricacao", :ano_fabricacao, :string}, {"tipo_pintura", :tipo_pintura, :string}, {"tipo_veiculo", :tipo_veiculo, :i64}, {"especie_veiculo", :especie_veiculo, :i64}, {"vin", :vin, :string}, {"condicao_veiculo", :condicao_veiculo, :i64}, {"marca_modelo", :marca_modelo, :string}, {"cor_denatran", :cor_denatran, :i64}, {"lotacao", :lotacao, :i64}, {"restricao", :restricao, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G020"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G014 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:lote, :unset}, {:quantidade, :unset}, {:data_fabricacao, :unset}, {:data_validade, :unset}, {:codigo_agregacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:lote => String.t(), :quantidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :data_fabricacao => String.t(), :data_validade => String.t(), :codigo_agregacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"lote", :lote, :string}, {"quantidade", :quantidade, :scalar}, {"data_fabricacao", :data_fabricacao, :string}, {"data_validade", :data_validade, :string}, {"codigo_agregacao", :codigo_agregacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G014"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrder do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:presenca, :unset}, {:intermediador, :unset}, {:cnpj_intermediador, :unset}, {:id_intermediador, :unset}, {:modalidade_frete, :unset}, {:frete, :unset}, {:desconto, :unset}, {:total, :unset}, {:despesas_acessorias, :unset}, {:despesas_aduaneiras, :unset}, {:informacoes_fisco, :unset}, {:informacoes_complementares, :unset}, {:observacoes_contribuinte, :unset}, {:pedido_compra, :unset}, {:contrato, :unset}, {:nota_empenho, :unset}, {:pagamento, :unset}, {:forma_pagamento, :unset}, {:desc_pagamento, :unset}, {:data_pagamento, :unset}, {:cnpj_transacional_pag, :unset}, {:uf_estabelecimento_pag, :unset}, {:tipo_integracao, :unset}, {:valor_pagamento, :unset}, {:cnpj_credenciadora, :unset}, {:bandeira, :unset}, {:autorizacao, :unset}, {:cnpj_beneficiario, :unset}, {:id_terminal_pag, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:presenca => integer(), :intermediador => (integer() | :unset), :cnpj_intermediador => (String.t() | :unset), :id_intermediador => (String.t() | :unset), :modalidade_frete => integer(), :frete => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :desconto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :despesas_acessorias => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :despesas_aduaneiras => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :informacoes_fisco => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :observacoes_contribuinte => ([Webmania.Models.Api1Fiscal.NfeContributorObservation.t()] | :unset), :pedido_compra => (String.t() | :unset), :contrato => (String.t() | :unset), :nota_empenho => (String.t() | :unset), :pagamento => Webmania.Models.Api1Fiscal.NfeOrderPagamento.t(), :forma_pagamento => Webmania.Models.Api1Fiscal.NfeOrderFormaPagamento.t(), :desc_pagamento => (Webmania.Models.Api1Fiscal.NfeOrderDescPagamento.t() | :unset), :data_pagamento => (Webmania.Models.Api1Fiscal.NfeOrderDataPagamento.t() | :unset), :cnpj_transacional_pag => (Webmania.Models.Api1Fiscal.NfeOrderCnpjTransacionalPag.t() | :unset), :uf_estabelecimento_pag => (Webmania.Models.Api1Fiscal.NfeOrderUfEstabelecimentoPag.t() | :unset), :tipo_integracao => (Webmania.Models.Api1Fiscal.NfeOrderTipoIntegracao.t() | :unset), :valor_pagamento => (Webmania.Models.Api1Fiscal.NfeOrderValorPagamento.t() | :unset), :cnpj_credenciadora => (Webmania.Models.Api1Fiscal.NfeOrderCnpjCredenciadora.t() | :unset), :bandeira => (Webmania.Models.Api1Fiscal.NfeOrderBandeira.t() | :unset), :autorizacao => (Webmania.Models.Api1Fiscal.NfeOrderAutorizacao.t() | :unset), :cnpj_beneficiario => (Webmania.Models.Api1Fiscal.NfeOrderCnpjBeneficiario.t() | :unset), :id_terminal_pag => (Webmania.Models.Api1Fiscal.NfeOrderIdTerminalPag.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"presenca", :presenca, :i64}, {"intermediador", :intermediador, {:optional, :i64}}, {"cnpj_intermediador", :cnpj_intermediador, {:optional, :string}}, {"id_intermediador", :id_intermediador, {:optional, :string}}, {"modalidade_frete", :modalidade_frete, :i64}, {"frete", :frete, {:optional, :scalar}}, {"desconto", :desconto, {:optional, :scalar}}, {"total", :total, {:optional, :scalar}}, {"despesas_acessorias", :despesas_acessorias, {:optional, :scalar}}, {"despesas_aduaneiras", :despesas_aduaneiras, {:optional, :scalar}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}, {"observacoes_contribuinte", :observacoes_contribuinte, {:optional, {:array, Webmania.Models.Api1Fiscal.NfeContributorObservation}}}, {"pedido_compra", :pedido_compra, {:optional, :string}}, {"contrato", :contrato, {:optional, :string}}, {"nota_empenho", :nota_empenho, {:optional, :string}}, {"pagamento", :pagamento, Webmania.Models.Api1Fiscal.NfeOrderPagamento}, {"forma_pagamento", :forma_pagamento, Webmania.Models.Api1Fiscal.NfeOrderFormaPagamento}, {"desc_pagamento", :desc_pagamento, {:optional, Webmania.Models.Api1Fiscal.NfeOrderDescPagamento}}, {"data_pagamento", :data_pagamento, {:optional, Webmania.Models.Api1Fiscal.NfeOrderDataPagamento}}, {"cnpj_transacional_pag", :cnpj_transacional_pag, {:optional, Webmania.Models.Api1Fiscal.NfeOrderCnpjTransacionalPag}}, {"uf_estabelecimento_pag", :uf_estabelecimento_pag, {:optional, Webmania.Models.Api1Fiscal.NfeOrderUfEstabelecimentoPag}}, {"tipo_integracao", :tipo_integracao, {:optional, Webmania.Models.Api1Fiscal.NfeOrderTipoIntegracao}}, {"valor_pagamento", :valor_pagamento, {:optional, Webmania.Models.Api1Fiscal.NfeOrderValorPagamento}}, {"cnpj_credenciadora", :cnpj_credenciadora, {:optional, Webmania.Models.Api1Fiscal.NfeOrderCnpjCredenciadora}}, {"bandeira", :bandeira, {:optional, Webmania.Models.Api1Fiscal.NfeOrderBandeira}}, {"autorizacao", :autorizacao, {:optional, Webmania.Models.Api1Fiscal.NfeOrderAutorizacao}}, {"cnpj_beneficiario", :cnpj_beneficiario, {:optional, Webmania.Models.Api1Fiscal.NfeOrderCnpjBeneficiario}}, {"id_terminal_pag", :id_terminal_pag, {:optional, Webmania.Models.Api1Fiscal.NfeOrderIdTerminalPag}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrder"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeContributorObservation do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:campo, :unset}, {:texto, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:campo => String.t(), :texto => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"campo", :campo, :string}, {"texto", :texto, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeContributorObservation"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderPagamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Integer, value: integer()} | %__MODULE__{variant: :List, value: [integer()]}
  @doc false
  def __variants__, do: [{:Integer, :i64}, {:List, {:array, :i64}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderPagamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderFormaPagamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderFormaPagamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderDescPagamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderDescPagamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderDataPagamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderDataPagamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderCnpjTransacionalPag do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderCnpjTransacionalPag"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderUfEstabelecimentoPag do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderUfEstabelecimentoPag"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderTipoIntegracao do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Integer, value: integer()} | %__MODULE__{variant: :List, value: [integer()]}
  @doc false
  def __variants__, do: [{:Integer, :i64}, {:List, {:array, :i64}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderTipoIntegracao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderValorPagamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :Number, value: Webmania.Number.t() | integer()} | %__MODULE__{variant: :List, value: [nil | boolean() | String.t() | integer() | Webmania.Number.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:Number, :number}, {:List, {:array, :scalar}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderValorPagamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderCnpjCredenciadora do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderCnpjCredenciadora"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderBandeira do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderBandeira"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderAutorizacao do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderAutorizacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderCnpjBeneficiario do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderCnpjBeneficiario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeOrderIdTerminalPag do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeOrderIdTerminalPag"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeTransport do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:volume, :unset}, {:especie, :unset}, {:peso_bruto, :unset}, {:peso_liquido, :unset}, {:marca, :unset}, {:numeracao, :unset}, {:lacres, :unset}, {:reboque, :unset}, {:entrega, :unset}, {:retirada, :unset}, {:cnpj, :unset}, {:razao_social, :unset}, {:ie, :unset}, {:cpf, :unset}, {:nome_completo, :unset}, {:endereco, :unset}, {:uf, :unset}, {:cidade, :unset}, {:cep, :unset}, {:placa, :unset}, {:uf_veiculo, :unset}, {:rntc, :unset}, {:seguro, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:volume => (String.t() | :unset), :especie => (String.t() | :unset), :peso_bruto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :peso_liquido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :marca => (String.t() | :unset), :numeracao => (String.t() | :unset), :lacres => (String.t() | :unset), :reboque => ([Webmania.Models.Api1Fiscal.G025.t()] | :unset), :entrega => (Webmania.Models.Api1Fiscal.G026.t() | :unset), :retirada => (Webmania.Models.Api1Fiscal.G027.t() | :unset), :cnpj => (String.t() | :unset), :razao_social => (String.t() | :unset), :ie => (String.t() | :unset), :cpf => (String.t() | :unset), :nome_completo => (String.t() | :unset), :endereco => (String.t() | :unset), :uf => (String.t() | :unset), :cidade => (String.t() | :unset), :cep => (String.t() | :unset), :placa => (String.t() | :unset), :uf_veiculo => (String.t() | :unset), :rntc => (String.t() | :unset), :seguro => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"volume", :volume, {:optional, :string}}, {"especie", :especie, {:optional, :string}}, {"peso_bruto", :peso_bruto, {:optional, :scalar}}, {"peso_liquido", :peso_liquido, {:optional, :scalar}}, {"marca", :marca, {:optional, :string}}, {"numeracao", :numeracao, {:optional, :string}}, {"lacres", :lacres, {:optional, :string}}, {"reboque", :reboque, {:optional, {:array, Webmania.Models.Api1Fiscal.G025}}}, {"entrega", :entrega, {:optional, Webmania.Models.Api1Fiscal.G026}}, {"retirada", :retirada, {:optional, Webmania.Models.Api1Fiscal.G027}}, {"cnpj", :cnpj, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"placa", :placa, {:optional, :string}}, {"uf_veiculo", :uf_veiculo, {:optional, :string}}, {"rntc", :rntc, {:optional, :string}}, {"seguro", :seguro, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeTransport"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G025 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:placa, :unset}, {:uf_veiculo, :unset}, {:rntc, :unset}, {:vagao, :unset}, {:balsa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:placa => (String.t() | :unset), :uf_veiculo => (String.t() | :unset), :rntc => (String.t() | :unset), :vagao => (integer() | :unset), :balsa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"placa", :placa, {:optional, :string}}, {"uf_veiculo", :uf_veiculo, {:optional, :string}}, {"rntc", :rntc, {:optional, :string}}, {"vagao", :vagao, {:optional, :i64}}, {"balsa", :balsa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G025"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G026 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:razao_social, :unset}, {:ie, :unset}, {:cpf, :unset}, {:nome_completo, :unset}, {:nome_estrangeiro, :unset}, {:cod_pais, :unset}, {:pais, :unset}, {:uf, :unset}, {:cep, :unset}, {:endereco, :unset}, {:numero, :unset}, {:complemento, :unset}, {:bairro, :unset}, {:cidade, :unset}, {:telefone, :unset}, {:email, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :razao_social => (String.t() | :unset), :ie => (String.t() | :unset), :cpf => (String.t() | :unset), :nome_completo => (String.t() | :unset), :nome_estrangeiro => (String.t() | :unset), :cod_pais => (String.t() | :unset), :pais => (String.t() | :unset), :uf => (String.t() | :unset), :cep => (String.t() | :unset), :endereco => String.t(), :numero => String.t(), :complemento => (String.t() | :unset), :bairro => String.t(), :cidade => String.t(), :telefone => (String.t() | :unset), :email => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"nome_estrangeiro", :nome_estrangeiro, {:optional, :string}}, {"cod_pais", :cod_pais, {:optional, :string}}, {"pais", :pais, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"endereco", :endereco, :string}, {"numero", :numero, :string}, {"complemento", :complemento, {:optional, :string}}, {"bairro", :bairro, :string}, {"cidade", :cidade, :string}, {"telefone", :telefone, {:optional, :string}}, {"email", :email, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G026"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G027 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:razao_social, :unset}, {:ie, :unset}, {:cpf, :unset}, {:nome_completo, :unset}, {:nome_estrangeiro, :unset}, {:cod_pais, :unset}, {:pais, :unset}, {:uf, :unset}, {:cep, :unset}, {:endereco, :unset}, {:numero, :unset}, {:complemento, :unset}, {:bairro, :unset}, {:cidade, :unset}, {:telefone, :unset}, {:email, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :razao_social => (String.t() | :unset), :ie => (String.t() | :unset), :cpf => (String.t() | :unset), :nome_completo => (String.t() | :unset), :nome_estrangeiro => (String.t() | :unset), :cod_pais => (String.t() | :unset), :pais => (String.t() | :unset), :uf => (String.t() | :unset), :cep => (String.t() | :unset), :endereco => String.t(), :numero => String.t(), :complemento => (String.t() | :unset), :bairro => String.t(), :cidade => String.t(), :telefone => (String.t() | :unset), :email => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"nome_estrangeiro", :nome_estrangeiro, {:optional, :string}}, {"cod_pais", :cod_pais, {:optional, :string}}, {"pais", :pais, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"endereco", :endereco, :string}, {"numero", :numero, :string}, {"complemento", :complemento, {:optional, :string}}, {"bairro", :bairro, :string}, {"cidade", :cidade, :string}, {"telefone", :telefone, {:optional, :string}}, {"email", :email, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G027"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G028 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:numero, :unset}, {:valor, :unset}, {:desconto, :unset}, {:valor_liquido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:numero => String.t(), :valor => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :desconto => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_liquido => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"numero", :numero, :string}, {"valor", :valor, :scalar}, {"desconto", :desconto, :scalar}, {"valor_liquido", :valor_liquido, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G028"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G029 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:vencimento, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:vencimento => String.t(), :valor => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"vencimento", :vencimento, :string}, {"valor", :valor, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G029"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G030 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uf_embarque, :unset}, {:local_embarque, :unset}, {:local_despacho, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uf_embarque => String.t(), :local_embarque => String.t(), :local_despacho => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uf_embarque", :uf_embarque, :string}, {"local_embarque", :local_embarque, :string}, {"local_despacho", :local_despacho, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G030"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G031 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:defensivos, :unset}, {:guia_transito, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:defensivos => ([Webmania.Models.Api1Fiscal.G032.t()] | :unset), :guia_transito => (Webmania.Models.Api1Fiscal.G033.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"defensivos", :defensivos, {:optional, {:array, Webmania.Models.Api1Fiscal.G032}}}, {"guia_transito", :guia_transito, {:optional, Webmania.Models.Api1Fiscal.G033}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G031"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G032 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:numero_receituario, :unset}, {:cpf_responsavel_tecnico, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:numero_receituario => String.t(), :cpf_responsavel_tecnico => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"numero_receituario", :numero_receituario, :string}, {"cpf_responsavel_tecnico", :cpf_responsavel_tecnico, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G032"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G033 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo, :unset}, {:uf, :unset}, {:serie, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo => integer(), :uf => String.t(), :serie => (String.t() | :unset), :numero => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo", :tipo, :i64}, {"uf", :uf, :string}, {"serie", :serie, {:optional, :string}}, {"numero", :numero, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G033"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G034 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_ente_governamental, :unset}, {:percentual_redutor, :unset}, {:tipo_operacao_governamental, :unset}, {:dfes_anteriores, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_ente_governamental => String.t(), :percentual_redutor => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :tipo_operacao_governamental => String.t(), :dfes_anteriores => ([String.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_ente_governamental", :tipo_ente_governamental, :string}, {"percentual_redutor", :percentual_redutor, :scalar}, {"tipo_operacao_governamental", :tipo_operacao_governamental, :string}, {"dfes_anteriores", :dfes_anteriores, {:optional, {:array, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G034"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeIssueRequestNfeReferenciada do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeIssueRequestNfeReferenciada"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeIssueRequestCteReferenciada do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :AccessKey, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:AccessKey, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeIssueRequestCteReferenciada"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G006 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:modelo, :unset}, {:n_ecf, :unset}, {:n_coo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:modelo => String.t(), :n_ecf => String.t(), :n_coo => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"modelo", :modelo, :string}, {"n_ecf", :n_ecf, :string}, {"n_coo", :n_coo, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G006"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeIssueRequestEcfReferenciada do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :G006, value: Webmania.Models.Api1Fiscal.G006.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.G006.t()]}
  @doc false
  def __variants__, do: [{:G006, Webmania.Models.Api1Fiscal.G006}, {:List, {:array, Webmania.Models.Api1Fiscal.G006}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeIssueRequestEcfReferenciada"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G007 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uf, :unset}, {:data, :unset}, {:cpf, :unset}, {:cnpj, :unset}, {:ie, :unset}, {:modelo, :unset}, {:serie, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uf => (String.t() | :unset), :data => (String.t() | :unset), :cpf => (String.t() | :unset), :cnpj => (String.t() | :unset), :ie => (String.t() | :unset), :modelo => (String.t() | :unset), :serie => (String.t() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uf", :uf, {:optional, :string}}, {"data", :data, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"serie", :serie, {:optional, :string}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G007"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeIssueRequestNfRuralReferenciada do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :G007, value: Webmania.Models.Api1Fiscal.G007.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.G007.t()]}
  @doc false
  def __variants__, do: [{:G007, Webmania.Models.Api1Fiscal.G007}, {:List, {:array, Webmania.Models.Api1Fiscal.G007}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeIssueRequestNfRuralReferenciada"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G068 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:contato, :unset}, {:email, :unset}, {:telefone, :unset}, {:id_csrt, :unset}, {:csrt, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :contato => (String.t() | :unset), :email => (String.t() | :unset), :telefone => (String.t() | :unset), :id_csrt => (String.t() | :unset), :csrt => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"contato", :contato, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"id_csrt", :id_csrt, {:optional, :string}}, {"csrt", :csrt, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G068"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G002LogCancelamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :SefazLog, value: Webmania.Models.Api1Fiscal.SefazLog.t()} | %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.SefazLog.t()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:SefazLog, Webmania.Models.Api1Fiscal.SefazLog}, {:Text, :string}, {:List, {:array, Webmania.Models.Api1Fiscal.SefazLog}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G002LogCancelamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G003 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:operacao, :unset}, {:natureza_operacao, :unset}, {:modelo, :unset}, {:finalidade, :unset}, {:ambiente, :unset}, {:tipo_credito, :unset}, {:tipo_debito, :unset}, {:url_notificacao, :unset}, {:cliente, :unset}, {:produtos, :unset}, {:pedido, :unset}, {:transporte, :unset}, {:fatura, :unset}, {:parcelas, :unset}, {:exportacao, :unset}, {:agropecuario, :unset}, {:compra_governamental, :unset}, {:inscricao_suframa, :unset}, {:codigo_indicador_operacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :operacao => (integer() | :unset), :natureza_operacao => (String.t() | :unset), :modelo => (String.t() | :unset), :finalidade => (integer() | :unset), :ambiente => (integer() | :unset), :tipo_credito => (integer() | :unset), :tipo_debito => (integer() | :unset), :url_notificacao => (String.t() | :unset), :cliente => (Webmania.Models.Api1Fiscal.NfeCustomer.t() | :unset), :produtos => ([Webmania.Models.Api1Fiscal.NfeProduct.t()] | :unset), :pedido => (Webmania.Models.Api1Fiscal.NfeOrder.t() | :unset), :transporte => (Webmania.Models.Api1Fiscal.NfeTransport.t() | :unset), :fatura => (Webmania.Models.Api1Fiscal.G028.t() | :unset), :parcelas => ([Webmania.Models.Api1Fiscal.G029.t()] | :unset), :exportacao => (Webmania.Models.Api1Fiscal.G030.t() | :unset), :agropecuario => (Webmania.Models.Api1Fiscal.G031.t() | :unset), :compra_governamental => (Webmania.Models.Api1Fiscal.G034.t() | :unset), :inscricao_suframa => (String.t() | :unset), :codigo_indicador_operacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"operacao", :operacao, {:optional, :i64}}, {"natureza_operacao", :natureza_operacao, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"finalidade", :finalidade, {:optional, :i64}}, {"ambiente", :ambiente, {:optional, :i64}}, {"tipo_credito", :tipo_credito, {:optional, :i64}}, {"tipo_debito", :tipo_debito, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"cliente", :cliente, {:optional, Webmania.Models.Api1Fiscal.NfeCustomer}}, {"produtos", :produtos, {:optional, {:array, Webmania.Models.Api1Fiscal.NfeProduct}}}, {"pedido", :pedido, {:optional, Webmania.Models.Api1Fiscal.NfeOrder}}, {"transporte", :transporte, {:optional, Webmania.Models.Api1Fiscal.NfeTransport}}, {"fatura", :fatura, {:optional, Webmania.Models.Api1Fiscal.G028}}, {"parcelas", :parcelas, {:optional, {:array, Webmania.Models.Api1Fiscal.G029}}}, {"exportacao", :exportacao, {:optional, Webmania.Models.Api1Fiscal.G030}}, {"agropecuario", :agropecuario, {:optional, Webmania.Models.Api1Fiscal.G031}}, {"compra_governamental", :compra_governamental, {:optional, Webmania.Models.Api1Fiscal.G034}}, {"inscricao_suframa", :inscricao_suframa, {:optional, :string}}, {"codigo_indicador_operacao", :codigo_indicador_operacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G003"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G004 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_emissao, :unset}, {:data_entrada_saida, :unset}, {:data_previsao_entrega, :unset}, {:data_servico, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_emissao => (String.t() | :unset), :data_entrada_saida => (String.t() | :unset), :data_previsao_entrega => (String.t() | :unset), :data_servico => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_emissao", :data_emissao, {:optional, :string}}, {"data_entrada_saida", :data_entrada_saida, {:optional, :string}}, {"data_previsao_entrega", :data_previsao_entrega, {:optional, :string}}, {"data_servico", :data_servico, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G004"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G005 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nfe_referenciada, :unset}, {:cte_referenciada, :unset}, {:ecf_referenciada, :unset}, {:nf_rural_referenciada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nfe_referenciada => (Webmania.Models.Api1Fiscal.G005NfeReferenciada.t() | :unset), :cte_referenciada => (Webmania.Models.Api1Fiscal.G005CteReferenciada.t() | :unset), :ecf_referenciada => (Webmania.Models.Api1Fiscal.G005EcfReferenciada.t() | :unset), :nf_rural_referenciada => (Webmania.Models.Api1Fiscal.G005NfRuralReferenciada.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nfe_referenciada", :nfe_referenciada, {:optional, Webmania.Models.Api1Fiscal.G005NfeReferenciada}}, {"cte_referenciada", :cte_referenciada, {:optional, Webmania.Models.Api1Fiscal.G005CteReferenciada}}, {"ecf_referenciada", :ecf_referenciada, {:optional, Webmania.Models.Api1Fiscal.G005EcfReferenciada}}, {"nf_rural_referenciada", :nf_rural_referenciada, {:optional, Webmania.Models.Api1Fiscal.G005NfRuralReferenciada}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G005"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G005NfeReferenciada do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :AccessKey, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:AccessKey, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G005NfeReferenciada"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G005CteReferenciada do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :AccessKey, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:AccessKey, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G005CteReferenciada"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G005EcfReferenciada do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :G006, value: Webmania.Models.Api1Fiscal.G006.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.G006.t()]}
  @doc false
  def __variants__, do: [{:G006, Webmania.Models.Api1Fiscal.G006}, {:List, {:array, Webmania.Models.Api1Fiscal.G006}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G005EcfReferenciada"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G005NfRuralReferenciada do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :G007, value: Webmania.Models.Api1Fiscal.G007.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.G007.t()]}
  @doc false
  def __variants__, do: [{:G007, Webmania.Models.Api1Fiscal.G007}, {:List, {:array, Webmania.Models.Api1Fiscal.G007}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G005NfRuralReferenciada"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G008 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:calculo_impostos, :unset}, {:previa_danfe, :unset}, {:assincrono, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:calculo_impostos => (boolean() | :unset), :previa_danfe => (boolean() | :unset), :assincrono => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"calculo_impostos", :calculo_impostos, {:optional, :boolean}}, {"previa_danfe", :previa_danfe, {:optional, :boolean}}, {"assincrono", :assincrono, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G008"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G009 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cpf, :unset}, {:nome_completo, :unset}, {:cnpj, :unset}, {:razao_social, :unset}, {:ie, :unset}, {:suframa, :unset}, {:substituto_tributario, :unset}, {:consumidor_final, :unset}, {:contribuinte, :unset}, {:microcervejaria, :unset}, {:endereco, :unset}, {:complemento, :unset}, {:numero, :unset}, {:bairro, :unset}, {:cidade, :unset}, {:uf, :unset}, {:cep, :unset}, {:telefone, :unset}, {:email, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cpf => (String.t() | :unset), :nome_completo => (String.t() | :unset), :cnpj => (String.t() | :unset), :razao_social => (String.t() | :unset), :ie => (String.t() | :unset), :suframa => (String.t() | :unset), :substituto_tributario => (String.t() | :unset), :consumidor_final => (integer() | :unset), :contribuinte => (integer() | :unset), :microcervejaria => (boolean() | :unset), :endereco => (String.t() | :unset), :complemento => (String.t() | :unset), :numero => (String.t() | :unset), :bairro => (String.t() | :unset), :cidade => (String.t() | :unset), :uf => (String.t() | :unset), :cep => (String.t() | :unset), :telefone => (String.t() | :unset), :email => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cpf", :cpf, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"suframa", :suframa, {:optional, :string}}, {"substituto_tributario", :substituto_tributario, {:optional, :string}}, {"consumidor_final", :consumidor_final, {:optional, :i64}}, {"contribuinte", :contribuinte, {:optional, :i64}}, {"microcervejaria", :microcervejaria, {:optional, :boolean}}, {"endereco", :endereco, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"email", :email, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G009"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G010 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:id_estrangeiro, :unset}, {:nome_estrangeiro, :unset}, {:cod_pais, :unset}, {:nome_pais, :unset}, {:endereco, :unset}, {:bairro, :unset}, {:numero, :unset}, {:complemento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:id_estrangeiro => (String.t() | :unset), :nome_estrangeiro => (String.t() | :unset), :cod_pais => (String.t() | :unset), :nome_pais => (String.t() | :unset), :endereco => (String.t() | :unset), :bairro => (String.t() | :unset), :numero => (String.t() | :unset), :complemento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"nome_estrangeiro", :nome_estrangeiro, {:optional, :string}}, {"cod_pais", :cod_pais, {:optional, :string}}, {"nome_pais", :nome_pais, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G010"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G011 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:item, :unset}, {:nome, :unset}, {:codigo, :unset}, {:ncm, :unset}, {:quantidade, :unset}, {:quantidade_tributavel, :unset}, {:unidade, :unset}, {:unidade_tributavel, :unset}, {:peso, :unset}, {:origem, :unset}, {:desconto, :unset}, {:subtotal, :unset}, {:subtotal_tributavel, :unset}, {:total, :unset}, {:ind_valor_total, :unset}, {:classe_imposto, :unset}, {:impostos, :unset}, {:dfe_referenciado, :unset}, {:cest, :unset}, {:beneficio_fiscal, :unset}, {:informacoes_adicionais, :unset}, {:ind_escala, :unset}, {:cnpj_fabricante, :unset}, {:gtin, :unset}, {:gtin_tributavel, :unset}, {:cod_barras, :unset}, {:cod_barras_tributavel, :unset}, {:nve, :unset}, {:nrecopi, :unset}, {:ativo_permanente, :unset}, {:veiculo_usado, :unset}, {:ex_ipi, :unset}, {:combustiveis, :unset}, {:medicamento, :unset}, {:armamentos, :unset}, {:veiculos_novos, :unset}, {:rastro, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (integer() | :unset), :item => (integer() | :unset), :nome => (String.t() | :unset), :codigo => (String.t() | :unset), :ncm => (String.t() | :unset), :quantidade => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_tributavel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :unidade => (String.t() | :unset), :unidade_tributavel => (String.t() | :unset), :peso => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :origem => (integer() | :unset), :desconto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :subtotal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :subtotal_tributavel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ind_valor_total => (integer() | :unset), :classe_imposto => (String.t() | :unset), :impostos => (Webmania.Models.Api1Fiscal.G069.t() | :unset), :dfe_referenciado => (Webmania.Models.Api1Fiscal.G015.t() | :unset), :cest => (String.t() | :unset), :beneficio_fiscal => (String.t() | :unset), :informacoes_adicionais => (String.t() | :unset), :ind_escala => (String.t() | :unset), :cnpj_fabricante => (String.t() | :unset), :gtin => (String.t() | :unset), :gtin_tributavel => (String.t() | :unset), :cod_barras => (String.t() | :unset), :cod_barras_tributavel => (String.t() | :unset), :nve => (String.t() | :unset), :nrecopi => (String.t() | :unset), :ativo_permanente => (boolean() | :unset), :veiculo_usado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ex_ipi => (String.t() | :unset), :combustiveis => (Webmania.Models.Api1Fiscal.G016.t() | :unset), :medicamento => (Webmania.Models.Api1Fiscal.G018.t() | :unset), :armamentos => (Webmania.Models.Api1Fiscal.G019.t() | :unset), :veiculos_novos => (Webmania.Models.Api1Fiscal.G020.t() | :unset), :rastro => ([Webmania.Models.Api1Fiscal.G014.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :i64}}, {"item", :item, {:optional, :i64}}, {"nome", :nome, {:optional, :string}}, {"codigo", :codigo, {:optional, :string}}, {"ncm", :ncm, {:optional, :string}}, {"quantidade", :quantidade, {:optional, :scalar}}, {"quantidade_tributavel", :quantidade_tributavel, {:optional, :scalar}}, {"unidade", :unidade, {:optional, :string}}, {"unidade_tributavel", :unidade_tributavel, {:optional, :string}}, {"peso", :peso, {:optional, :scalar}}, {"origem", :origem, {:optional, :i64}}, {"desconto", :desconto, {:optional, :scalar}}, {"subtotal", :subtotal, {:optional, :scalar}}, {"subtotal_tributavel", :subtotal_tributavel, {:optional, :scalar}}, {"total", :total, {:optional, :scalar}}, {"ind_valor_total", :ind_valor_total, {:optional, :i64}}, {"classe_imposto", :classe_imposto, {:optional, :string}}, {"impostos", :impostos, {:optional, Webmania.Models.Api1Fiscal.G069}}, {"dfe_referenciado", :dfe_referenciado, {:optional, Webmania.Models.Api1Fiscal.G015}}, {"cest", :cest, {:optional, :string}}, {"beneficio_fiscal", :beneficio_fiscal, {:optional, :string}}, {"informacoes_adicionais", :informacoes_adicionais, {:optional, :string}}, {"ind_escala", :ind_escala, {:optional, :string}}, {"cnpj_fabricante", :cnpj_fabricante, {:optional, :string}}, {"gtin", :gtin, {:optional, :string}}, {"gtin_tributavel", :gtin_tributavel, {:optional, :string}}, {"cod_barras", :cod_barras, {:optional, :string}}, {"cod_barras_tributavel", :cod_barras_tributavel, {:optional, :string}}, {"nve", :nve, {:optional, :string}}, {"nrecopi", :nrecopi, {:optional, :string}}, {"ativo_permanente", :ativo_permanente, {:optional, :boolean}}, {"veiculo_usado", :veiculo_usado, {:optional, :scalar}}, {"ex_ipi", :ex_ipi, {:optional, :string}}, {"combustiveis", :combustiveis, {:optional, Webmania.Models.Api1Fiscal.G016}}, {"medicamento", :medicamento, {:optional, Webmania.Models.Api1Fiscal.G018}}, {"armamentos", :armamentos, {:optional, Webmania.Models.Api1Fiscal.G019}}, {"veiculos_novos", :veiculos_novos, {:optional, Webmania.Models.Api1Fiscal.G020}}, {"rastro", :rastro, {:optional, {:array, Webmania.Models.Api1Fiscal.G014}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G011"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G012 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:drawback, :unset}, {:reg_exportacao, :unset}, {:nfe_exportacao, :unset}, {:qtd_exportacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:drawback => (String.t() | :unset), :reg_exportacao => (String.t() | :unset), :nfe_exportacao => (String.t() | :unset), :qtd_exportacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"drawback", :drawback, {:optional, :string}}, {"reg_exportacao", :reg_exportacao, {:optional, :string}}, {"nfe_exportacao", :nfe_exportacao, {:optional, :string}}, {"qtd_exportacao", :qtd_exportacao, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G012"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G013 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:subtotal, :unset}, {:total, :unset}, {:ndoc_importacao, :unset}, {:ddoc_importacao, :unset}, {:local_desembaraco, :unset}, {:uf_desembaraco, :unset}, {:data_desembaraco, :unset}, {:via_transporte, :unset}, {:intermediacao, :unset}, {:adicao, :unset}, {:seq_adicao, :unset}, {:fabricante, :unset}, {:desc_di, :unset}, {:afrmm, :unset}, {:cnpj_terceiro, :unset}, {:cpf_terceiro, :unset}, {:uf_terceiro, :unset}, {:cod_exportador, :unset}, {:nfci, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:subtotal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ndoc_importacao => (String.t() | :unset), :ddoc_importacao => (String.t() | :unset), :local_desembaraco => (String.t() | :unset), :uf_desembaraco => (String.t() | :unset), :data_desembaraco => (String.t() | :unset), :via_transporte => (String.t() | :unset), :intermediacao => (String.t() | :unset), :adicao => (String.t() | :unset), :seq_adicao => (String.t() | :unset), :fabricante => (String.t() | :unset), :desc_di => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :afrmm => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cnpj_terceiro => (String.t() | :unset), :cpf_terceiro => (String.t() | :unset), :uf_terceiro => (String.t() | :unset), :cod_exportador => (String.t() | :unset), :nfci => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"subtotal", :subtotal, {:optional, :scalar}}, {"total", :total, {:optional, :scalar}}, {"ndoc_importacao", :ndoc_importacao, {:optional, :string}}, {"ddoc_importacao", :ddoc_importacao, {:optional, :string}}, {"local_desembaraco", :local_desembaraco, {:optional, :string}}, {"uf_desembaraco", :uf_desembaraco, {:optional, :string}}, {"data_desembaraco", :data_desembaraco, {:optional, :string}}, {"via_transporte", :via_transporte, {:optional, :string}}, {"intermediacao", :intermediacao, {:optional, :string}}, {"adicao", :adicao, {:optional, :string}}, {"seq_adicao", :seq_adicao, {:optional, :string}}, {"fabricante", :fabricante, {:optional, :string}}, {"desc_di", :desc_di, {:optional, :scalar}}, {"afrmm", :afrmm, {:optional, :scalar}}, {"cnpj_terceiro", :cnpj_terceiro, {:optional, :string}}, {"cpf_terceiro", :cpf_terceiro, {:optional, :string}}, {"uf_terceiro", :uf_terceiro, {:optional, :string}}, {"cod_exportador", :cod_exportador, {:optional, :string}}, {"nfci", :nfci, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G013"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G021 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:presenca, :unset}, {:intermediador, :unset}, {:cnpj_intermediador, :unset}, {:id_intermediador, :unset}, {:modalidade_frete, :unset}, {:frete, :unset}, {:desconto, :unset}, {:total, :unset}, {:despesas_acessorias, :unset}, {:despesas_aduaneiras, :unset}, {:informacoes_fisco, :unset}, {:informacoes_complementares, :unset}, {:observacoes_contribuinte, :unset}, {:pedido_compra, :unset}, {:contrato, :unset}, {:nota_empenho, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:presenca => (integer() | :unset), :intermediador => (integer() | :unset), :cnpj_intermediador => (String.t() | :unset), :id_intermediador => (String.t() | :unset), :modalidade_frete => (integer() | :unset), :frete => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :desconto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :despesas_acessorias => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :despesas_aduaneiras => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :informacoes_fisco => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :observacoes_contribuinte => ([Webmania.Models.Api1Fiscal.NfeContributorObservation.t()] | :unset), :pedido_compra => (String.t() | :unset), :contrato => (String.t() | :unset), :nota_empenho => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"presenca", :presenca, {:optional, :i64}}, {"intermediador", :intermediador, {:optional, :i64}}, {"cnpj_intermediador", :cnpj_intermediador, {:optional, :string}}, {"id_intermediador", :id_intermediador, {:optional, :string}}, {"modalidade_frete", :modalidade_frete, {:optional, :i64}}, {"frete", :frete, {:optional, :scalar}}, {"desconto", :desconto, {:optional, :scalar}}, {"total", :total, {:optional, :scalar}}, {"despesas_acessorias", :despesas_acessorias, {:optional, :scalar}}, {"despesas_aduaneiras", :despesas_aduaneiras, {:optional, :scalar}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}, {"observacoes_contribuinte", :observacoes_contribuinte, {:optional, {:array, Webmania.Models.Api1Fiscal.NfeContributorObservation}}}, {"pedido_compra", :pedido_compra, {:optional, :string}}, {"contrato", :contrato, {:optional, :string}}, {"nota_empenho", :nota_empenho, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G021"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:pagamento, :unset}, {:forma_pagamento, :unset}, {:desc_pagamento, :unset}, {:data_pagamento, :unset}, {:cnpj_transacional_pag, :unset}, {:uf_estabelecimento_pag, :unset}, {:tipo_integracao, :unset}, {:valor_pagamento, :unset}, {:cnpj_credenciadora, :unset}, {:bandeira, :unset}, {:autorizacao, :unset}, {:cnpj_beneficiario, :unset}, {:id_terminal_pag, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:pagamento => (Webmania.Models.Api1Fiscal.G022Pagamento.t() | :unset), :forma_pagamento => (Webmania.Models.Api1Fiscal.G022FormaPagamento.t() | :unset), :desc_pagamento => (Webmania.Models.Api1Fiscal.G022DescPagamento.t() | :unset), :data_pagamento => (Webmania.Models.Api1Fiscal.G022DataPagamento.t() | :unset), :cnpj_transacional_pag => (Webmania.Models.Api1Fiscal.G022CnpjTransacionalPag.t() | :unset), :uf_estabelecimento_pag => (Webmania.Models.Api1Fiscal.G022UfEstabelecimentoPag.t() | :unset), :tipo_integracao => (Webmania.Models.Api1Fiscal.G022TipoIntegracao.t() | :unset), :valor_pagamento => (Webmania.Models.Api1Fiscal.G022ValorPagamento.t() | :unset), :cnpj_credenciadora => (Webmania.Models.Api1Fiscal.G022CnpjCredenciadora.t() | :unset), :bandeira => (Webmania.Models.Api1Fiscal.G022Bandeira.t() | :unset), :autorizacao => (Webmania.Models.Api1Fiscal.G022Autorizacao.t() | :unset), :cnpj_beneficiario => (Webmania.Models.Api1Fiscal.G022CnpjBeneficiario.t() | :unset), :id_terminal_pag => (Webmania.Models.Api1Fiscal.G022IdTerminalPag.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"pagamento", :pagamento, {:optional, Webmania.Models.Api1Fiscal.G022Pagamento}}, {"forma_pagamento", :forma_pagamento, {:optional, Webmania.Models.Api1Fiscal.G022FormaPagamento}}, {"desc_pagamento", :desc_pagamento, {:optional, Webmania.Models.Api1Fiscal.G022DescPagamento}}, {"data_pagamento", :data_pagamento, {:optional, Webmania.Models.Api1Fiscal.G022DataPagamento}}, {"cnpj_transacional_pag", :cnpj_transacional_pag, {:optional, Webmania.Models.Api1Fiscal.G022CnpjTransacionalPag}}, {"uf_estabelecimento_pag", :uf_estabelecimento_pag, {:optional, Webmania.Models.Api1Fiscal.G022UfEstabelecimentoPag}}, {"tipo_integracao", :tipo_integracao, {:optional, Webmania.Models.Api1Fiscal.G022TipoIntegracao}}, {"valor_pagamento", :valor_pagamento, {:optional, Webmania.Models.Api1Fiscal.G022ValorPagamento}}, {"cnpj_credenciadora", :cnpj_credenciadora, {:optional, Webmania.Models.Api1Fiscal.G022CnpjCredenciadora}}, {"bandeira", :bandeira, {:optional, Webmania.Models.Api1Fiscal.G022Bandeira}}, {"autorizacao", :autorizacao, {:optional, Webmania.Models.Api1Fiscal.G022Autorizacao}}, {"cnpj_beneficiario", :cnpj_beneficiario, {:optional, Webmania.Models.Api1Fiscal.G022CnpjBeneficiario}}, {"id_terminal_pag", :id_terminal_pag, {:optional, Webmania.Models.Api1Fiscal.G022IdTerminalPag}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022Pagamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Integer, value: integer()} | %__MODULE__{variant: :List, value: [integer()]}
  @doc false
  def __variants__, do: [{:Integer, :i64}, {:List, {:array, :i64}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022Pagamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022FormaPagamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022FormaPagamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022DescPagamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022DescPagamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022DataPagamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022DataPagamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022CnpjTransacionalPag do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022CnpjTransacionalPag"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022UfEstabelecimentoPag do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022UfEstabelecimentoPag"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022TipoIntegracao do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Integer, value: integer()} | %__MODULE__{variant: :List, value: [integer()]}
  @doc false
  def __variants__, do: [{:Integer, :i64}, {:List, {:array, :i64}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022TipoIntegracao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022ValorPagamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :Number, value: Webmania.Number.t() | integer()} | %__MODULE__{variant: :List, value: [nil | boolean() | String.t() | integer() | Webmania.Number.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:Number, :number}, {:List, {:array, :scalar}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022ValorPagamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022CnpjCredenciadora do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022CnpjCredenciadora"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022Bandeira do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022Bandeira"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022Autorizacao do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022Autorizacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022CnpjBeneficiario do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022CnpjBeneficiario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G022IdTerminalPag do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G022IdTerminalPag"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G023 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:volume, :unset}, {:especie, :unset}, {:peso_bruto, :unset}, {:peso_liquido, :unset}, {:marca, :unset}, {:numeracao, :unset}, {:lacres, :unset}, {:reboque, :unset}, {:entrega, :unset}, {:retirada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:volume => (String.t() | :unset), :especie => (String.t() | :unset), :peso_bruto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :peso_liquido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :marca => (String.t() | :unset), :numeracao => (String.t() | :unset), :lacres => (String.t() | :unset), :reboque => ([Webmania.Models.Api1Fiscal.G025.t()] | :unset), :entrega => (Webmania.Models.Api1Fiscal.G026.t() | :unset), :retirada => (Webmania.Models.Api1Fiscal.G027.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"volume", :volume, {:optional, :string}}, {"especie", :especie, {:optional, :string}}, {"peso_bruto", :peso_bruto, {:optional, :scalar}}, {"peso_liquido", :peso_liquido, {:optional, :scalar}}, {"marca", :marca, {:optional, :string}}, {"numeracao", :numeracao, {:optional, :string}}, {"lacres", :lacres, {:optional, :string}}, {"reboque", :reboque, {:optional, {:array, Webmania.Models.Api1Fiscal.G025}}}, {"entrega", :entrega, {:optional, Webmania.Models.Api1Fiscal.G026}}, {"retirada", :retirada, {:optional, Webmania.Models.Api1Fiscal.G027}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G023"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G024 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:razao_social, :unset}, {:ie, :unset}, {:cpf, :unset}, {:nome_completo, :unset}, {:endereco, :unset}, {:uf, :unset}, {:cidade, :unset}, {:cep, :unset}, {:placa, :unset}, {:uf_veiculo, :unset}, {:rntc, :unset}, {:seguro, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :razao_social => (String.t() | :unset), :ie => (String.t() | :unset), :cpf => (String.t() | :unset), :nome_completo => (String.t() | :unset), :endereco => (String.t() | :unset), :uf => (String.t() | :unset), :cidade => (String.t() | :unset), :cep => (String.t() | :unset), :placa => (String.t() | :unset), :uf_veiculo => (String.t() | :unset), :rntc => (String.t() | :unset), :seguro => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"placa", :placa, {:optional, :string}}, {"uf_veiculo", :uf_veiculo, {:optional, :string}}, {"rntc", :rntc, {:optional, :string}}, {"seguro", :seguro, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G024"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G035 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:icms, :unset}, {:ipi, :unset}, {:pis, :unset}, {:cofins, :unset}, {:issqn, :unset}, {:ibs_cbs, :unset}, {:informacoes_fisco, :unset}, {:informacoes_complementares, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => (String.t() | :unset), :icms => ([Webmania.Models.Api1Fiscal.G037.t()] | :unset), :ipi => ([Webmania.Models.Api1Fiscal.G045.t()] | :unset), :pis => ([Webmania.Models.Api1Fiscal.G046.t()] | :unset), :cofins => ([Webmania.Models.Api1Fiscal.G047.t()] | :unset), :issqn => ([Webmania.Models.Api1Fiscal.G048.t()] | :unset), :ibs_cbs => ([Webmania.Models.Api1Fiscal.G049.t()] | :unset), :informacoes_fisco => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, {:optional, :string}}, {"icms", :icms, {:optional, {:array, Webmania.Models.Api1Fiscal.G037}}}, {"ipi", :ipi, {:optional, {:array, Webmania.Models.Api1Fiscal.G045}}}, {"pis", :pis, {:optional, {:array, Webmania.Models.Api1Fiscal.G046}}}, {"cofins", :cofins, {:optional, {:array, Webmania.Models.Api1Fiscal.G047}}}, {"issqn", :issqn, {:optional, {:array, Webmania.Models.Api1Fiscal.G048}}}, {"ibs_cbs", :ibs_cbs, {:optional, {:array, Webmania.Models.Api1Fiscal.G049}}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G035"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G037 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_tributacao, :unset}, {:cenario, :unset}, {:tipo_pessoa, :unset}, {:nao_contribuinte, :unset}, {:codigo_cfop, :unset}, {:situacao_tributaria, :unset}, {:aliquota_importacao, :unset}, {:aliquota_credito, :unset}, {:aliquota_reducao_destino, :unset}, {:aliquota_mva, :unset}, {:aliquota_icms, :unset}, {:aliquota_icms_st, :unset}, {:aliquota_fcp, :unset}, {:aliquota_fcp_st, :unset}, {:aliquota_diferimento, :unset}, {:aliquota_diferimento_fcp, :unset}, {:aliquota_reducao, :unset}, {:aliquota_reducao_st, :unset}, {:aliquota_efetiva_icms, :unset}, {:aliquota_efetiva_icms_st, :unset}, {:codigo_beneficio_reducao_bc, :unset}, {:motivo_desoneracao, :unset}, {:deducao_desoneracao, :unset}, {:motivo_desoneracao_st, :unset}, {:beneficio_fiscal, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_tributacao => String.t(), :cenario => String.t(), :tipo_pessoa => String.t(), :nao_contribuinte => (boolean() | :unset), :codigo_cfop => String.t(), :situacao_tributaria => String.t(), :aliquota_importacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_credito => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao_destino => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_mva => ([Webmania.Models.Api1Fiscal.G038.t()] | :unset), :aliquota_icms => ([Webmania.Models.Api1Fiscal.G039.t()] | :unset), :aliquota_icms_st => ([Webmania.Models.Api1Fiscal.G040.t()] | :unset), :aliquota_fcp => ([Webmania.Models.Api1Fiscal.G041.t()] | :unset), :aliquota_fcp_st => ([Webmania.Models.Api1Fiscal.G042.t()] | :unset), :aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_diferimento_fcp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_efetiva_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_efetiva_icms_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_beneficio_reducao_bc => (String.t() | :unset), :motivo_desoneracao => (String.t() | :unset), :deducao_desoneracao => (String.t() | :unset), :motivo_desoneracao_st => (String.t() | :unset), :beneficio_fiscal => ([Webmania.Models.Api1Fiscal.G043.t()] | :unset), :credito_presumido => ([Webmania.Models.Api1Fiscal.G044.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_tributacao", :tipo_tributacao, :string}, {"cenario", :cenario, :string}, {"tipo_pessoa", :tipo_pessoa, :string}, {"nao_contribuinte", :nao_contribuinte, {:optional, :boolean}}, {"codigo_cfop", :codigo_cfop, :string}, {"situacao_tributaria", :situacao_tributaria, :string}, {"aliquota_importacao", :aliquota_importacao, {:optional, :scalar}}, {"aliquota_credito", :aliquota_credito, {:optional, :scalar}}, {"aliquota_reducao_destino", :aliquota_reducao_destino, {:optional, :scalar}}, {"aliquota_mva", :aliquota_mva, {:optional, {:array, Webmania.Models.Api1Fiscal.G038}}}, {"aliquota_icms", :aliquota_icms, {:optional, {:array, Webmania.Models.Api1Fiscal.G039}}}, {"aliquota_icms_st", :aliquota_icms_st, {:optional, {:array, Webmania.Models.Api1Fiscal.G040}}}, {"aliquota_fcp", :aliquota_fcp, {:optional, {:array, Webmania.Models.Api1Fiscal.G041}}}, {"aliquota_fcp_st", :aliquota_fcp_st, {:optional, {:array, Webmania.Models.Api1Fiscal.G042}}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"aliquota_diferimento_fcp", :aliquota_diferimento_fcp, {:optional, :scalar}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :scalar}}, {"aliquota_reducao_st", :aliquota_reducao_st, {:optional, :scalar}}, {"aliquota_efetiva_icms", :aliquota_efetiva_icms, {:optional, :scalar}}, {"aliquota_efetiva_icms_st", :aliquota_efetiva_icms_st, {:optional, :scalar}}, {"codigo_beneficio_reducao_bc", :codigo_beneficio_reducao_bc, {:optional, :string}}, {"motivo_desoneracao", :motivo_desoneracao, {:optional, :string}}, {"deducao_desoneracao", :deducao_desoneracao, {:optional, :string}}, {"motivo_desoneracao_st", :motivo_desoneracao_st, {:optional, :string}}, {"beneficio_fiscal", :beneficio_fiscal, {:optional, {:array, Webmania.Models.Api1Fiscal.G043}}}, {"credito_presumido", :credito_presumido, {:optional, {:array, Webmania.Models.Api1Fiscal.G044}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G037"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G038 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estado, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estado => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estado", :estado, :string}, {"aliquota", :aliquota, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G038"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G039 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estado, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estado => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estado", :estado, :string}, {"aliquota", :aliquota, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G039"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G040 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estado, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estado => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estado", :estado, :string}, {"aliquota", :aliquota, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G040"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G041 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estado, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estado => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estado", :estado, :string}, {"aliquota", :aliquota, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G041"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G042 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estado, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estado => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estado", :estado, :string}, {"aliquota", :aliquota, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G042"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G044 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:estado, :unset}, {:codigo_beneficio_fiscal, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:estado => String.t(), :codigo_beneficio_fiscal => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"estado", :estado, :string}, {"codigo_beneficio_fiscal", :codigo_beneficio_fiscal, :string}, {"aliquota", :aliquota, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G044"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G045 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:tipo_pessoa, :unset}, {:situacao_tributaria, :unset}, {:codigo_enquadramento, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => String.t(), :tipo_pessoa => String.t(), :situacao_tributaria => String.t(), :codigo_enquadramento => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, :string}, {"tipo_pessoa", :tipo_pessoa, :string}, {"situacao_tributaria", :situacao_tributaria, :string}, {"codigo_enquadramento", :codigo_enquadramento, :string}, {"aliquota", :aliquota, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G045"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G046 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:tipo_pessoa, :unset}, {:situacao_tributaria, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => String.t(), :tipo_pessoa => String.t(), :situacao_tributaria => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, :string}, {"tipo_pessoa", :tipo_pessoa, :string}, {"situacao_tributaria", :situacao_tributaria, :string}, {"aliquota", :aliquota, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G046"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G047 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:tipo_pessoa, :unset}, {:situacao_tributaria, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => String.t(), :tipo_pessoa => String.t(), :situacao_tributaria => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, :string}, {"tipo_pessoa", :tipo_pessoa, :string}, {"situacao_tributaria", :situacao_tributaria, :string}, {"aliquota", :aliquota, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G047"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G048 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:tipo_pessoa, :unset}, {:codigo_cfop, :unset}, {:exigibilidade, :unset}, {:item_servico, :unset}, {:incentivo_fiscal, :unset}, {:aliquota, :unset}, {:municipio, :unset}, {:codigo_servico, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => String.t(), :tipo_pessoa => String.t(), :codigo_cfop => String.t(), :exigibilidade => String.t(), :item_servico => String.t(), :incentivo_fiscal => String.t(), :aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :municipio => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, :string}, {"tipo_pessoa", :tipo_pessoa, :string}, {"codigo_cfop", :codigo_cfop, :string}, {"exigibilidade", :exigibilidade, :string}, {"item_servico", :item_servico, :string}, {"incentivo_fiscal", :incentivo_fiscal, :string}, {"aliquota", :aliquota, :scalar}, {"municipio", :municipio, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G048"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G049 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:tipo_pessoa, :unset}, {:situacao_tributaria, :unset}, {:classificacao_tributaria, :unset}, {:situacao_tributaria_regular, :unset}, {:classificacao_tributaria_regular, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => String.t(), :tipo_pessoa => String.t(), :situacao_tributaria => String.t(), :classificacao_tributaria => String.t(), :situacao_tributaria_regular => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :ibs_estadual => (Webmania.Models.Api1Fiscal.G050.t() | :unset), :ibs_municipal => (Webmania.Models.Api1Fiscal.G050.t() | :unset), :cbs => (Webmania.Models.Api1Fiscal.G050.t() | :unset), :credito_presumido => (Webmania.Models.Api1Fiscal.G051.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, :string}, {"tipo_pessoa", :tipo_pessoa, :string}, {"situacao_tributaria", :situacao_tributaria, :string}, {"classificacao_tributaria", :classificacao_tributaria, :string}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api1Fiscal.G050}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api1Fiscal.G050}}, {"cbs", :cbs, {:optional, Webmania.Models.Api1Fiscal.G050}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api1Fiscal.G051}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G049"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G050 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G050"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G051 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => String.t(), :aliquota_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, :string}, {"aliquota_ibs", :aliquota_ibs, {:optional, :scalar}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G051"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G052 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:ibs_cbs, :unset}, {:iss, :unset}, {:pis, :unset}, {:cofins, :unset}, {:inss, :unset}, {:ir, :unset}, {:csll, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :tipo => String.t(), :ibs_cbs => (Webmania.Models.Api1Fiscal.G053.t() | :unset), :iss => (integer() | :unset), :pis => (integer() | :unset), :cofins => (integer() | :unset), :inss => (integer() | :unset), :ir => (integer() | :unset), :csll => (integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :string}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G053}}, {"iss", :iss, {:optional, :i64}}, {"pis", :pis, {:optional, :i64}}, {"cofins", :cofins, {:optional, :i64}}, {"inss", :inss, {:optional, :i64}}, {"ir", :ir, {:optional, :i64}}, {"csll", :csll, {:optional, :i64}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G052"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G053 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:classificacao_tributaria, :unset}, {:situacao_tributaria_regular, :unset}, {:classificacao_tributaria_regular, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => String.t(), :classificacao_tributaria => String.t(), :situacao_tributaria_regular => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :ibs_estadual => (Webmania.Models.Api1Fiscal.G054.t() | :unset), :ibs_municipal => (Webmania.Models.Api1Fiscal.G054.t() | :unset), :cbs => (Webmania.Models.Api1Fiscal.G054.t() | :unset), :credito_presumido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, :string}, {"classificacao_tributaria", :classificacao_tributaria, :string}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api1Fiscal.G054}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api1Fiscal.G054}}, {"cbs", :cbs, {:optional, Webmania.Models.Api1Fiscal.G054}}, {"credito_presumido", :credito_presumido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G053"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G054 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G054"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G055 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_servico, :unset}, {:natureza_operacao, :unset}, {:exigibilidade_iss, :unset}, {:iss_retido, :unset}, {:responsavel_retencao, :unset}, {:codigo_cnae, :unset}, {:codigo_tributacao_municipio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_servico => String.t(), :natureza_operacao => String.t(), :exigibilidade_iss => String.t(), :iss_retido => String.t(), :responsavel_retencao => (String.t() | :unset), :codigo_cnae => (String.t() | :unset), :codigo_tributacao_municipio => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_servico", :codigo_servico, :string}, {"natureza_operacao", :natureza_operacao, :string}, {"exigibilidade_iss", :exigibilidade_iss, :string}, {"iss_retido", :iss_retido, :string}, {"responsavel_retencao", :responsavel_retencao, {:optional, :string}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"codigo_tributacao_municipio", :codigo_tributacao_municipio, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G055"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G056 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_cnae, :unset}, {:codigo_servico, :unset}, {:local_prestacao, :unset}, {:cep_local_prestacao, :unset}, {:iss_retido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_cnae => String.t(), :codigo_servico => (String.t() | :unset), :local_prestacao => String.t(), :cep_local_prestacao => (String.t() | :unset), :iss_retido => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_cnae", :codigo_cnae, :string}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"local_prestacao", :local_prestacao, :string}, {"cep_local_prestacao", :cep_local_prestacao, {:optional, :string}}, {"iss_retido", :iss_retido, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G056"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G057 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_servico, :unset}, {:tipo_tributacao, :unset}, {:iss_retido, :unset}, {:responsavel_retencao, :unset}, {:codigo_cnae, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_servico => String.t(), :tipo_tributacao => String.t(), :iss_retido => String.t(), :responsavel_retencao => (String.t() | :unset), :codigo_cnae => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_servico", :codigo_servico, :string}, {"tipo_tributacao", :tipo_tributacao, :string}, {"iss_retido", :iss_retido, :string}, {"responsavel_retencao", :responsavel_retencao, {:optional, :string}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G057"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G058 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cfps, :unset}, {:id_cnae, :unset}, {:situacao_tributaria, :unset}, {:iss_retido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cfps => [Webmania.Models.Api1Fiscal.G059.t()], :id_cnae => String.t(), :situacao_tributaria => String.t(), :iss_retido => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cfps", :cfps, {:array, Webmania.Models.Api1Fiscal.G059}}, {"id_cnae", :id_cnae, :string}, {"situacao_tributaria", :situacao_tributaria, :string}, {"iss_retido", :iss_retido, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G058"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G059 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:codigo_cfps, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => String.t(), :codigo_cfps => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, :string}, {"codigo_cfps", :codigo_cfps, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G059"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G060 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_servico, :unset}, {:regime_recolhimento, :unset}, {:forma_recolhimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_servico => String.t(), :regime_recolhimento => String.t(), :forma_recolhimento => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_servico", :codigo_servico, :string}, {"regime_recolhimento", :regime_recolhimento, :string}, {"forma_recolhimento", :forma_recolhimento, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G060"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G061 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_servico, :unset}, {:iss_retido, :unset}, {:responsavel_retencao, :unset}, {:codigo_cnae, :unset}, {:codigo_tributacao_municipio, :unset}, {:tributacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_servico => String.t(), :iss_retido => String.t(), :responsavel_retencao => (String.t() | :unset), :codigo_cnae => (String.t() | :unset), :codigo_tributacao_municipio => (String.t() | :unset), :tributacao => [Webmania.Models.Api1Fiscal.G062.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_servico", :codigo_servico, :string}, {"iss_retido", :iss_retido, :string}, {"responsavel_retencao", :responsavel_retencao, {:optional, :string}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"codigo_tributacao_municipio", :codigo_tributacao_municipio, {:optional, :string}}, {"tributacao", :tributacao, {:array, Webmania.Models.Api1Fiscal.G062}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G061"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G062 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cenario, :unset}, {:exigibilidade_iss, :unset}, {:deducoes, :unset}, {:iss, :unset}, {:pis, :unset}, {:cofins, :unset}, {:inss, :unset}, {:ir, :unset}, {:csll, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cenario => integer(), :exigibilidade_iss => String.t(), :deducoes => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :iss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :inss => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ir => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :csll => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cenario", :cenario, :i64}, {"exigibilidade_iss", :exigibilidade_iss, :string}, {"deducoes", :deducoes, {:optional, :scalar}}, {"iss", :iss, {:optional, :scalar}}, {"pis", :pis, {:optional, :scalar}}, {"cofins", :cofins, {:optional, :scalar}}, {"inss", :inss, {:optional, :scalar}}, {"ir", :ir, {:optional, :scalar}}, {"csll", :csll, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G062"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G063 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_servico, :unset}, {:iss_retido, :unset}, {:responsavel_retencao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_servico => String.t(), :iss_retido => String.t(), :responsavel_retencao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_servico", :codigo_servico, :string}, {"iss_retido", :iss_retido, :string}, {"responsavel_retencao", :responsavel_retencao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G063"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G064 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_emissao, :unset}, {:codigo_servico, :unset}, {:codigo_tributacao_municipio, :unset}, {:tributacao_iss, :unset}, {:tipo_imunidade, :unset}, {:retencao_iss, :unset}, {:cst_pis_cofins, :unset}, {:retencao_pis_cofins, :unset}, {:ibs_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_emissao => String.t(), :codigo_servico => String.t(), :codigo_tributacao_municipio => (String.t() | :unset), :tributacao_iss => integer(), :tipo_imunidade => (integer() | :unset), :retencao_iss => String.t(), :cst_pis_cofins => (String.t() | :unset), :retencao_pis_cofins => (integer() | :unset), :ibs_cbs => (Webmania.Models.Api1Fiscal.G065.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_emissao", :tipo_emissao, :string}, {"codigo_servico", :codigo_servico, :string}, {"codigo_tributacao_municipio", :codigo_tributacao_municipio, {:optional, :string}}, {"tributacao_iss", :tributacao_iss, :i64}, {"tipo_imunidade", :tipo_imunidade, {:optional, :i64}}, {"retencao_iss", :retencao_iss, :string}, {"cst_pis_cofins", :cst_pis_cofins, {:optional, :string}}, {"retencao_pis_cofins", :retencao_pis_cofins, {:optional, :i64}}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G065}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G064"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G065 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:classificacao_tributaria, :unset}, {:situacao_tributaria_regular, :unset}, {:classificacao_tributaria_regular, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => String.t(), :classificacao_tributaria => String.t(), :situacao_tributaria_regular => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :ibs_estadual => (Webmania.Models.Api1Fiscal.G054.t() | :unset), :ibs_municipal => (Webmania.Models.Api1Fiscal.G054.t() | :unset), :cbs => (Webmania.Models.Api1Fiscal.G054.t() | :unset), :credito_presumido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, :string}, {"classificacao_tributaria", :classificacao_tributaria, :string}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api1Fiscal.G054}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api1Fiscal.G054}}, {"cbs", :cbs, {:optional, Webmania.Models.Api1Fiscal.G054}}, {"credito_presumido", :credito_presumido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G065"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G066 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_servico, :unset}, {:tributacao, :unset}, {:iss_retido, :unset}, {:responsavel_retencao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_servico => String.t(), :tributacao => integer(), :iss_retido => String.t(), :responsavel_retencao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_servico", :codigo_servico, :string}, {"tributacao", :tributacao, :i64}, {"iss_retido", :iss_retido, :string}, {"responsavel_retencao", :responsavel_retencao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G066"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G067 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (Webmania.Models.Api1Fiscal.G067Referencia.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, Webmania.Models.Api1Fiscal.G067Referencia}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G067"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G067Referencia do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G067Referencia"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G070 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:aliquota_fcp, :unset}, {:aliquota_interestadual, :unset}, {:codigo_cfop, :unset}, {:situacao_tributaria, :unset}, {:aliquota_importacao, :unset}, {:industria, :unset}, {:majoracao, :unset}, {:bc_icms, :unset}, {:bc_icms_st, :unset}, {:valor_icms, :unset}, {:aliquota_diferimento, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_interestadual => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cfop => (String.t() | :unset), :situacao_tributaria => (String.t() | :unset), :aliquota_importacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :industria => (String.t() | :unset), :majoracao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_icms_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :credito_presumido => ([Webmania.Models.Api1Fiscal.G091.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :scalar}}, {"aliquota_fcp", :aliquota_fcp, {:optional, :scalar}}, {"aliquota_interestadual", :aliquota_interestadual, {:optional, :scalar}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"aliquota_importacao", :aliquota_importacao, {:optional, :scalar}}, {"industria", :industria, {:optional, :string}}, {"majoracao", :majoracao, {:optional, :scalar}}, {"bc_icms", :bc_icms, {:optional, :scalar}}, {"bc_icms_st", :bc_icms_st, {:optional, :scalar}}, {"valor_icms", :valor_icms, {:optional, :scalar}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"credito_presumido", :credito_presumido, {:optional, {:array, Webmania.Models.Api1Fiscal.G091}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G070"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G071 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_credito, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_credito => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_credito", :aliquota_credito, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G071"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G072 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_st, :unset}, {:aliquota_fcp_st, :unset}, {:aliquota_mva, :unset}, {:aliquota_credito, :unset}, {:aliquota_reducao, :unset}, {:aliquota_reducao_st, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_mva => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_credito => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_st", :aliquota_st, {:optional, :scalar}}, {"aliquota_fcp_st", :aliquota_fcp_st, {:optional, :scalar}}, {"aliquota_mva", :aliquota_mva, {:optional, :scalar}}, {"aliquota_credito", :aliquota_credito, {:optional, :scalar}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :scalar}}, {"aliquota_reducao_st", :aliquota_reducao_st, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G072"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G073 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_st, :unset}, {:aliquota_fcp_st, :unset}, {:aliquota_mva, :unset}, {:aliquota_reducao, :unset}, {:aliquota_reducao_st, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_mva => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_st", :aliquota_st, {:optional, :scalar}}, {"aliquota_fcp_st", :aliquota_fcp_st, {:optional, :scalar}}, {"aliquota_mva", :aliquota_mva, {:optional, :scalar}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :scalar}}, {"aliquota_reducao_st", :aliquota_reducao_st, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G073"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G074 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bc_st_retido, :unset}, {:aliquota_st_retido, :unset}, {:valor_st_retido, :unset}, {:valor_icms_substituto, :unset}, {:valor_fcp_retido, :unset}, {:aliquota_fcp_retido, :unset}, {:aliquota_bc_efetivo, :unset}, {:aliquota_icms_efetivo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bc_st_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_st_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_st_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_icms_substituto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_fcp_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_bc_efetivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_icms_efetivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bc_st_retido", :bc_st_retido, {:optional, :scalar}}, {"aliquota_st_retido", :aliquota_st_retido, {:optional, :scalar}}, {"valor_st_retido", :valor_st_retido, {:optional, :scalar}}, {"valor_icms_substituto", :valor_icms_substituto, {:optional, :scalar}}, {"valor_fcp_retido", :valor_fcp_retido, {:optional, :scalar}}, {"aliquota_fcp_retido", :aliquota_fcp_retido, {:optional, :scalar}}, {"aliquota_bc_efetivo", :aliquota_bc_efetivo, {:optional, :scalar}}, {"aliquota_icms_efetivo", :aliquota_icms_efetivo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G074"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G075 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:aliquota_fcp, :unset}, {:aliquota_interestadual, :unset}, {:codigo_cfop, :unset}, {:situacao_tributaria, :unset}, {:aliquota_importacao, :unset}, {:industria, :unset}, {:majoracao, :unset}, {:difal_antecipacao, :unset}, {:codigo_beneficio_reducao_bc, :unset}, {:bc_icms, :unset}, {:valor_icms, :unset}, {:bc_icms_st, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_interestadual => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cfop => (String.t() | :unset), :situacao_tributaria => (String.t() | :unset), :aliquota_importacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :industria => (String.t() | :unset), :majoracao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :difal_antecipacao => (boolean() | :unset), :codigo_beneficio_reducao_bc => (String.t() | :unset), :bc_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_icms_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :credito_presumido => ([Webmania.Models.Api1Fiscal.G091.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :scalar}}, {"aliquota_fcp", :aliquota_fcp, {:optional, :scalar}}, {"aliquota_interestadual", :aliquota_interestadual, {:optional, :scalar}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"aliquota_importacao", :aliquota_importacao, {:optional, :scalar}}, {"industria", :industria, {:optional, :string}}, {"majoracao", :majoracao, {:optional, :scalar}}, {"difal_antecipacao", :difal_antecipacao, {:optional, :boolean}}, {"codigo_beneficio_reducao_bc", :codigo_beneficio_reducao_bc, {:optional, :string}}, {"bc_icms", :bc_icms, {:optional, :scalar}}, {"valor_icms", :valor_icms, {:optional, :scalar}}, {"bc_icms_st", :bc_icms_st, {:optional, :scalar}}, {"credito_presumido", :credito_presumido, {:optional, {:array, Webmania.Models.Api1Fiscal.G091}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G075"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G076 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:pauta_fiscal, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:pauta_fiscal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"pauta_fiscal", :pauta_fiscal, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G076"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G077 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_bc, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_bc => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_bc", :quantidade_bc, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G077"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G078 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_st, :unset}, {:aliquota_fcp_st, :unset}, {:aliquota_mva, :unset}, {:aliquota_reducao_st, :unset}, {:motivo_desoneracao_st, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_mva => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo_desoneracao_st => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_st", :aliquota_st, {:optional, :scalar}}, {"aliquota_fcp_st", :aliquota_fcp_st, {:optional, :scalar}}, {"aliquota_mva", :aliquota_mva, {:optional, :scalar}}, {"aliquota_reducao_st", :aliquota_reducao_st, {:optional, :scalar}}, {"motivo_desoneracao_st", :motivo_desoneracao_st, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G078"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G079 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_retencao, :unset}, {:aliquota_retencao, :unset}, {:percentual_reducao, :unset}, {:motivo_reducao, :unset}, {:quantidade_bc, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_retencao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_retencao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :percentual_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo_reducao => (String.t() | :unset), :quantidade_bc => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_retencao", :quantidade_retencao, {:optional, :scalar}}, {"aliquota_retencao", :aliquota_retencao, {:optional, :scalar}}, {"percentual_reducao", :percentual_reducao, {:optional, :scalar}}, {"motivo_reducao", :motivo_reducao, {:optional, :string}}, {"quantidade_bc", :quantidade_bc, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G079"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G080 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_reducao, :unset}, {:motivo_desoneracao, :unset}, {:deducao_desoneracao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo_desoneracao => (String.t() | :unset), :deducao_desoneracao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_reducao", :aliquota_reducao, {:optional, :scalar}}, {"motivo_desoneracao", :motivo_desoneracao, {:optional, :string}}, {"deducao_desoneracao", :deducao_desoneracao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G080"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G081 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:motivo_desoneracao, :unset}, {:deducao_desoneracao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:motivo_desoneracao => (String.t() | :unset), :deducao_desoneracao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"motivo_desoneracao", :motivo_desoneracao, {:optional, :string}}, {"deducao_desoneracao", :deducao_desoneracao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G081"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G082 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:motivo_desoneracao, :unset}, {:deducao_desoneracao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:motivo_desoneracao => (String.t() | :unset), :deducao_desoneracao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"motivo_desoneracao", :motivo_desoneracao, {:optional, :string}}, {"deducao_desoneracao", :deducao_desoneracao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G082"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G083 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:aliquota_diferimento_fcp, :unset}, {:codigo_beneficio_reducao_bc, :unset}, {:motivo_desoneracao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_diferimento_fcp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_beneficio_reducao_bc => (String.t() | :unset), :motivo_desoneracao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"aliquota_diferimento_fcp", :aliquota_diferimento_fcp, {:optional, :scalar}}, {"codigo_beneficio_reducao_bc", :codigo_beneficio_reducao_bc, {:optional, :string}}, {"motivo_desoneracao", :motivo_desoneracao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G083"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G084 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_diferimento, :unset}, {:quantidade_bc, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_bc => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"quantidade_bc", :quantidade_bc, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G084"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G085 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bc_st_retido, :unset}, {:aliquota_st_retido, :unset}, {:valor_st_retido, :unset}, {:bc_st_dest, :unset}, {:valor_st_dest, :unset}, {:valor_fcp_retido, :unset}, {:aliquota_fcp_retido, :unset}, {:aliquota_bc_efetivo, :unset}, {:aliquota_icms_efetivo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bc_st_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_st_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_st_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :bc_st_dest => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_st_dest => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_fcp_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp_retido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_bc_efetivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_icms_efetivo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bc_st_retido", :bc_st_retido, {:optional, :scalar}}, {"aliquota_st_retido", :aliquota_st_retido, {:optional, :scalar}}, {"valor_st_retido", :valor_st_retido, {:optional, :scalar}}, {"bc_st_dest", :bc_st_dest, {:optional, :scalar}}, {"valor_st_dest", :valor_st_dest, {:optional, :scalar}}, {"valor_fcp_retido", :valor_fcp_retido, {:optional, :scalar}}, {"aliquota_fcp_retido", :aliquota_fcp_retido, {:optional, :scalar}}, {"aliquota_bc_efetivo", :aliquota_bc_efetivo, {:optional, :scalar}}, {"aliquota_icms_efetivo", :aliquota_icms_efetivo, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G085"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G086 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_bc, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_bc => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_bc", :quantidade_bc, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G086"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G087 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_st, :unset}, {:aliquota_fcp_st, :unset}, {:aliquota_mva, :unset}, {:aliquota_reducao, :unset}, {:aliquota_reducao_st, :unset}, {:motivo_desoneracao, :unset}, {:motivo_desoneracao_st, :unset}, {:deducao_desoneracao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_mva => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_reducao_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :motivo_desoneracao => (String.t() | :unset), :motivo_desoneracao_st => (String.t() | :unset), :deducao_desoneracao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_st", :aliquota_st, {:optional, :scalar}}, {"aliquota_fcp_st", :aliquota_fcp_st, {:optional, :scalar}}, {"aliquota_mva", :aliquota_mva, {:optional, :scalar}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :scalar}}, {"aliquota_reducao_st", :aliquota_reducao_st, {:optional, :scalar}}, {"motivo_desoneracao", :motivo_desoneracao, {:optional, :string}}, {"motivo_desoneracao_st", :motivo_desoneracao_st, {:optional, :string}}, {"deducao_desoneracao", :deducao_desoneracao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G087"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G088 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_mva, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_mva => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_mva", :aliquota_mva, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G088"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G089 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:pauta_fiscal, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:pauta_fiscal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"pauta_fiscal", :pauta_fiscal, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G089"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G090 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_operacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_operacao", :valor_operacao, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G090"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G111 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:natureza_operacao, :unset}, {:ambiente, :unset}, {:classe_imposto, :unset}, {:codigo_cfop, :unset}, {:produtos, :unset}, {:quantidade, :unset}, {:volume, :unset}, {:informacoes_fisco, :unset}, {:informacoes_complementares, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :natureza_operacao => (String.t() | :unset), :ambiente => (integer() | :unset), :classe_imposto => (String.t() | :unset), :codigo_cfop => (String.t() | :unset), :produtos => ([integer()] | :unset), :quantidade => ([nil | boolean() | String.t() | integer() | Webmania.Number.t()] | :unset), :volume => (String.t() | :unset), :informacoes_fisco => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"natureza_operacao", :natureza_operacao, {:optional, :string}}, {"ambiente", :ambiente, {:optional, :i64}}, {"classe_imposto", :classe_imposto, {:optional, :string}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"produtos", :produtos, {:optional, {:array, :i64}}}, {"quantidade", :quantidade, {:optional, {:array, :scalar}}}, {"volume", :volume, {:optional, :string}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G111"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G112 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:operacao, :unset}, {:natureza_operacao, :unset}, {:codigo_cfop, :unset}, {:valor_icms, :unset}, {:valor_icms_st, :unset}, {:ambiente, :unset}, {:cliente, :unset}, {:situacao_tributaria, :unset}, {:informacoes_fisco, :unset}, {:informacoes_complementares, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:operacao => (integer() | :unset), :natureza_operacao => (String.t() | :unset), :codigo_cfop => (String.t() | :unset), :valor_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_icms_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ambiente => (integer() | :unset), :cliente => (Webmania.Models.Api1Fiscal.NfeCustomer.t() | :unset), :situacao_tributaria => (String.t() | :unset), :informacoes_fisco => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"operacao", :operacao, {:optional, :i64}}, {"natureza_operacao", :natureza_operacao, {:optional, :string}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"valor_icms", :valor_icms, {:optional, :scalar}}, {"valor_icms_st", :valor_icms_st, {:optional, :scalar}}, {"ambiente", :ambiente, {:optional, :i64}}, {"cliente", :cliente, {:optional, Webmania.Models.Api1Fiscal.NfeCustomer}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G112"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G113 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:operacao, :unset}, {:natureza_operacao, :unset}, {:ambiente, :unset}, {:cliente, :unset}, {:produtos, :unset}, {:impostos, :unset}, {:agropecuario, :unset}, {:documento_adicao, :unset}, {:informacoes_fisco, :unset}, {:informacoes_complementares, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :operacao => (integer() | :unset), :natureza_operacao => (String.t() | :unset), :ambiente => (integer() | :unset), :cliente => (Webmania.Models.Api1Fiscal.NfeCustomer.t() | :unset), :produtos => ([Webmania.Models.Api1Fiscal.NfeComplementProduct.t()] | :unset), :impostos => (Webmania.Models.Api1Fiscal.NfeComplementTaxes.t() | :unset), :agropecuario => (Webmania.Models.Api1Fiscal.G031.t() | :unset), :documento_adicao => (Webmania.Models.Api1Fiscal.G119.t() | :unset), :informacoes_fisco => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"operacao", :operacao, {:optional, :i64}}, {"natureza_operacao", :natureza_operacao, {:optional, :string}}, {"ambiente", :ambiente, {:optional, :i64}}, {"cliente", :cliente, {:optional, Webmania.Models.Api1Fiscal.NfeCustomer}}, {"produtos", :produtos, {:optional, {:array, Webmania.Models.Api1Fiscal.NfeComplementProduct}}}, {"impostos", :impostos, {:optional, Webmania.Models.Api1Fiscal.NfeComplementTaxes}}, {"agropecuario", :agropecuario, {:optional, Webmania.Models.Api1Fiscal.G031}}, {"documento_adicao", :documento_adicao, {:optional, Webmania.Models.Api1Fiscal.G119}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G113"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeComplementProduct do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:item, :unset}, {:nome, :unset}, {:codigo, :unset}, {:ncm, :unset}, {:quantidade, :unset}, {:quantidade_tributavel, :unset}, {:unidade, :unset}, {:unidade_tributavel, :unset}, {:peso, :unset}, {:origem, :unset}, {:desconto, :unset}, {:subtotal, :unset}, {:subtotal_tributavel, :unset}, {:total, :unset}, {:ind_valor_total, :unset}, {:classe_imposto, :unset}, {:impostos, :unset}, {:dfe_referenciado, :unset}, {:cest, :unset}, {:beneficio_fiscal, :unset}, {:informacoes_adicionais, :unset}, {:ind_escala, :unset}, {:cnpj_fabricante, :unset}, {:gtin, :unset}, {:gtin_tributavel, :unset}, {:cod_barras, :unset}, {:cod_barras_tributavel, :unset}, {:nve, :unset}, {:nrecopi, :unset}, {:ativo_permanente, :unset}, {:veiculo_usado, :unset}, {:ex_ipi, :unset}, {:combustiveis, :unset}, {:medicamento, :unset}, {:armamentos, :unset}, {:veiculos_novos, :unset}, {:rastro, :unset}, {:codigo_cfop, :unset}, {:situacao_tributaria, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (integer() | :unset), :item => (integer() | :unset), :nome => (String.t() | :unset), :codigo => (String.t() | :unset), :ncm => (String.t() | :unset), :quantidade => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_tributavel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :unidade => (String.t() | :unset), :unidade_tributavel => (String.t() | :unset), :peso => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :origem => (integer() | :unset), :desconto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :subtotal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :subtotal_tributavel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ind_valor_total => (integer() | :unset), :classe_imposto => (String.t() | :unset), :impostos => (Webmania.Models.Api1Fiscal.G069.t() | :unset), :dfe_referenciado => (Webmania.Models.Api1Fiscal.G015.t() | :unset), :cest => (String.t() | :unset), :beneficio_fiscal => (String.t() | :unset), :informacoes_adicionais => (String.t() | :unset), :ind_escala => (String.t() | :unset), :cnpj_fabricante => (String.t() | :unset), :gtin => (String.t() | :unset), :gtin_tributavel => (String.t() | :unset), :cod_barras => (String.t() | :unset), :cod_barras_tributavel => (String.t() | :unset), :nve => (String.t() | :unset), :nrecopi => (String.t() | :unset), :ativo_permanente => (boolean() | :unset), :veiculo_usado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ex_ipi => (String.t() | :unset), :combustiveis => (Webmania.Models.Api1Fiscal.G016.t() | :unset), :medicamento => (Webmania.Models.Api1Fiscal.G018.t() | :unset), :armamentos => (Webmania.Models.Api1Fiscal.G019.t() | :unset), :veiculos_novos => (Webmania.Models.Api1Fiscal.G020.t() | :unset), :rastro => ([Webmania.Models.Api1Fiscal.G014.t()] | :unset), :codigo_cfop => (String.t() | :unset), :situacao_tributaria => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :i64}}, {"item", :item, {:optional, :i64}}, {"nome", :nome, {:optional, :string}}, {"codigo", :codigo, {:optional, :string}}, {"ncm", :ncm, {:optional, :string}}, {"quantidade", :quantidade, {:optional, :scalar}}, {"quantidade_tributavel", :quantidade_tributavel, {:optional, :scalar}}, {"unidade", :unidade, {:optional, :string}}, {"unidade_tributavel", :unidade_tributavel, {:optional, :string}}, {"peso", :peso, {:optional, :scalar}}, {"origem", :origem, {:optional, :i64}}, {"desconto", :desconto, {:optional, :scalar}}, {"subtotal", :subtotal, {:optional, :scalar}}, {"subtotal_tributavel", :subtotal_tributavel, {:optional, :scalar}}, {"total", :total, {:optional, :scalar}}, {"ind_valor_total", :ind_valor_total, {:optional, :i64}}, {"classe_imposto", :classe_imposto, {:optional, :string}}, {"impostos", :impostos, {:optional, Webmania.Models.Api1Fiscal.G069}}, {"dfe_referenciado", :dfe_referenciado, {:optional, Webmania.Models.Api1Fiscal.G015}}, {"cest", :cest, {:optional, :string}}, {"beneficio_fiscal", :beneficio_fiscal, {:optional, :string}}, {"informacoes_adicionais", :informacoes_adicionais, {:optional, :string}}, {"ind_escala", :ind_escala, {:optional, :string}}, {"cnpj_fabricante", :cnpj_fabricante, {:optional, :string}}, {"gtin", :gtin, {:optional, :string}}, {"gtin_tributavel", :gtin_tributavel, {:optional, :string}}, {"cod_barras", :cod_barras, {:optional, :string}}, {"cod_barras_tributavel", :cod_barras_tributavel, {:optional, :string}}, {"nve", :nve, {:optional, :string}}, {"nrecopi", :nrecopi, {:optional, :string}}, {"ativo_permanente", :ativo_permanente, {:optional, :boolean}}, {"veiculo_usado", :veiculo_usado, {:optional, :scalar}}, {"ex_ipi", :ex_ipi, {:optional, :string}}, {"combustiveis", :combustiveis, {:optional, Webmania.Models.Api1Fiscal.G016}}, {"medicamento", :medicamento, {:optional, Webmania.Models.Api1Fiscal.G018}}, {"armamentos", :armamentos, {:optional, Webmania.Models.Api1Fiscal.G019}}, {"veiculos_novos", :veiculos_novos, {:optional, Webmania.Models.Api1Fiscal.G020}}, {"rastro", :rastro, {:optional, {:array, Webmania.Models.Api1Fiscal.G014}}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeComplementProduct"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeComplementTaxes do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:icms, :unset}, {:icms_st, :unset}, {:ipi, :unset}, {:issqn, :unset}, {:ibs_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:icms => (Webmania.Models.Api1Fiscal.G115.t() | :unset), :icms_st => (Webmania.Models.Api1Fiscal.G116.t() | :unset), :ipi => (Webmania.Models.Api1Fiscal.G117.t() | :unset), :issqn => (Webmania.Models.Api1Fiscal.G118.t() | :unset), :ibs_cbs => (Webmania.Models.Api1Fiscal.NfeComplementIbsCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"icms", :icms, {:optional, Webmania.Models.Api1Fiscal.G115}}, {"icms_st", :icms_st, {:optional, Webmania.Models.Api1Fiscal.G116}}, {"ipi", :ipi, {:optional, Webmania.Models.Api1Fiscal.G117}}, {"issqn", :issqn, {:optional, Webmania.Models.Api1Fiscal.G118}}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.NfeComplementIbsCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeComplementTaxes"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G115 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_cfop, :unset}, {:situacao_tributaria, :unset}, {:bc_icms, :unset}, {:valor_icms, :unset}, {:valor_operacao, :unset}, {:valor_fcp, :unset}, {:aliquota_diferimento, :unset}, {:beneficio_fiscal, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_cfop => String.t(), :situacao_tributaria => String.t(), :bc_icms => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_icms => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_operacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_fcp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_diferimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :beneficio_fiscal => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_cfop", :codigo_cfop, :string}, {"situacao_tributaria", :situacao_tributaria, :string}, {"bc_icms", :bc_icms, :scalar}, {"valor_icms", :valor_icms, :scalar}, {"valor_operacao", :valor_operacao, {:optional, :scalar}}, {"valor_fcp", :valor_fcp, {:optional, :scalar}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :scalar}}, {"beneficio_fiscal", :beneficio_fiscal, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G115"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G116 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_cfop, :unset}, {:situacao_tributaria, :unset}, {:bc_icms_st, :unset}, {:valor_icms_st, :unset}, {:valor_fcp_st, :unset}, {:aliquota_mva, :unset}, {:beneficio_fiscal, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_cfop => String.t(), :situacao_tributaria => String.t(), :bc_icms_st => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_icms_st => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_fcp_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_mva => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :beneficio_fiscal => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_cfop", :codigo_cfop, :string}, {"situacao_tributaria", :situacao_tributaria, :string}, {"bc_icms_st", :bc_icms_st, :scalar}, {"valor_icms_st", :valor_icms_st, :scalar}, {"valor_fcp_st", :valor_fcp_st, {:optional, :scalar}}, {"aliquota_mva", :aliquota_mva, :scalar}, {"beneficio_fiscal", :beneficio_fiscal, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G116"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G117 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_cfop, :unset}, {:bc_ipi, :unset}, {:valor_ipi, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_cfop => String.t(), :bc_ipi => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ipi => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_cfop", :codigo_cfop, :string}, {"bc_ipi", :bc_ipi, :scalar}, {"valor_ipi", :valor_ipi, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G117"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G118 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_cfop, :unset}, {:exigibilidade, :unset}, {:item_servico, :unset}, {:incentivo_fiscal, :unset}, {:bc_issqn, :unset}, {:valor_issqn, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_cfop => String.t(), :exigibilidade => integer(), :item_servico => String.t(), :incentivo_fiscal => String.t(), :bc_issqn => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_issqn => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_cfop", :codigo_cfop, :string}, {"exigibilidade", :exigibilidade, :i64}, {"item_servico", :item_servico, :string}, {"incentivo_fiscal", :incentivo_fiscal, :string}, {"bc_issqn", :bc_issqn, :scalar}, {"valor_issqn", :valor_issqn, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G118"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeComplementIbsCbs do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:classificacao_tributaria, :unset}, {:situacao_tributaria_regular, :unset}, {:classificacao_tributaria_regular, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:tributacao_monofasica, :unset}, {:credito_presumido, :unset}, {:transferencia_credito, :unset}, {:ajuste_competencia, :unset}, {:estorno_credito, :unset}, {:base_calculo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => String.t(), :classificacao_tributaria => String.t(), :situacao_tributaria_regular => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :ibs_estadual => (Webmania.Models.Api1Fiscal.G101.t() | :unset), :ibs_municipal => (Webmania.Models.Api1Fiscal.G102.t() | :unset), :cbs => (Webmania.Models.Api1Fiscal.G103.t() | :unset), :tributacao_monofasica => (Webmania.Models.Api1Fiscal.G105.t() | :unset), :credito_presumido => (Webmania.Models.Api1Fiscal.G106.t() | :unset), :transferencia_credito => (Webmania.Models.Api1Fiscal.G108.t() | :unset), :ajuste_competencia => (Webmania.Models.Api1Fiscal.G109.t() | :unset), :estorno_credito => (Webmania.Models.Api1Fiscal.G110.t() | :unset), :base_calculo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, :string}, {"classificacao_tributaria", :classificacao_tributaria, :string}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api1Fiscal.G101}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api1Fiscal.G102}}, {"cbs", :cbs, {:optional, Webmania.Models.Api1Fiscal.G103}}, {"tributacao_monofasica", :tributacao_monofasica, {:optional, Webmania.Models.Api1Fiscal.G105}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api1Fiscal.G106}}, {"transferencia_credito", :transferencia_credito, {:optional, Webmania.Models.Api1Fiscal.G108}}, {"ajuste_competencia", :ajuste_competencia, {:optional, Webmania.Models.Api1Fiscal.G109}}, {"estorno_credito", :estorno_credito, {:optional, Webmania.Models.Api1Fiscal.G110}}, {"base_calculo", :base_calculo, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeComplementIbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G119 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ndoc_importacao, :unset}, {:ddoc_importacao, :unset}, {:uf_desembaraco, :unset}, {:local_desembaraco, :unset}, {:data_desembaraco, :unset}, {:via_transporte, :unset}, {:intermediacao, :unset}, {:fabricante, :unset}, {:adicao, :unset}, {:seq_adicao, :unset}, {:afrmm, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ndoc_importacao => String.t(), :ddoc_importacao => String.t(), :uf_desembaraco => String.t(), :local_desembaraco => String.t(), :data_desembaraco => String.t(), :via_transporte => String.t(), :intermediacao => String.t(), :fabricante => String.t(), :adicao => String.t(), :seq_adicao => String.t(), :afrmm => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ndoc_importacao", :ndoc_importacao, :string}, {"ddoc_importacao", :ddoc_importacao, :string}, {"uf_desembaraco", :uf_desembaraco, :string}, {"local_desembaraco", :local_desembaraco, :string}, {"data_desembaraco", :data_desembaraco, :string}, {"via_transporte", :via_transporte, :string}, {"intermediacao", :intermediacao, :string}, {"fabricante", :fabricante, :string}, {"adicao", :adicao, :string}, {"seq_adicao", :seq_adicao, :string}, {"afrmm", :afrmm, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G119"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G114 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade, :unset}, {:subtotal, :unset}, {:total, :unset}, {:codigo_cfop, :unset}, {:situacao_tributaria, :unset}, {:impostos, :unset}, {:beneficio_fiscal, :unset}, {:gtin, :unset}, {:gtin_tributavel, :unset}, {:cod_barras, :unset}, {:cod_barras_tributavel, :unset}, {:unidade_tributavel, :unset}, {:subtotal_tributavel, :unset}, {:quantidade_tributavel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :subtotal => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cfop => (String.t() | :unset), :situacao_tributaria => (String.t() | :unset), :impostos => (Webmania.Models.Api1Fiscal.G114Impostos.t() | :unset), :beneficio_fiscal => (String.t() | :unset), :gtin => (String.t() | :unset), :gtin_tributavel => (String.t() | :unset), :cod_barras => (String.t() | :unset), :cod_barras_tributavel => (String.t() | :unset), :unidade_tributavel => (String.t() | :unset), :subtotal_tributavel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :quantidade_tributavel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade", :quantidade, {:optional, :scalar}}, {"subtotal", :subtotal, {:optional, :scalar}}, {"total", :total, {:optional, :scalar}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"impostos", :impostos, {:optional, Webmania.Models.Api1Fiscal.G114Impostos}}, {"beneficio_fiscal", :beneficio_fiscal, {:optional, :string}}, {"gtin", :gtin, {:optional, :string}}, {"gtin_tributavel", :gtin_tributavel, {:optional, :string}}, {"cod_barras", :cod_barras, {:optional, :string}}, {"cod_barras_tributavel", :cod_barras_tributavel, {:optional, :string}}, {"unidade_tributavel", :unidade_tributavel, {:optional, :string}}, {"subtotal_tributavel", :subtotal_tributavel, {:optional, :scalar}}, {"quantidade_tributavel", :quantidade_tributavel, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G114"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G114Impostos do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ibs_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ibs_cbs => (%{String.t() => Webmania.JSON.value()} | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ibs_cbs", :ibs_cbs, {:optional, :map}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G114Impostos"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G120 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:finalidade, :unset}, {:tipo_credito, :unset}, {:nfe_referenciada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:finalidade => (integer() | :unset), :tipo_credito => (integer() | :unset), :nfe_referenciada => (Webmania.Models.Api1Fiscal.G120NfeReferenciada.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"finalidade", :finalidade, {:optional, :i64}}, {"tipo_credito", :tipo_credito, {:optional, :i64}}, {"nfe_referenciada", :nfe_referenciada, {:optional, Webmania.Models.Api1Fiscal.G120NfeReferenciada}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G120"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G120NfeReferenciada do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G120NfeReferenciada"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G121 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:finalidade, :unset}, {:tipo_debito, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:finalidade => (integer() | :unset), :tipo_debito => (integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"finalidade", :finalidade, {:optional, :i64}}, {"tipo_debito", :tipo_debito, {:optional, :i64}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G121"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G122 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:dfe_referenciado, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:dfe_referenciado => (Webmania.Models.Api1Fiscal.G122DfeReferenciado.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"dfe_referenciado", :dfe_referenciado, {:optional, Webmania.Models.Api1Fiscal.G122DfeReferenciado}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G122"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G122DfeReferenciado do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:item, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :item => (integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"item", :item, {:optional, :i64}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G122DfeReferenciado"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G123 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:correcao, :unset}, {:ambiente, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :correcao => (String.t() | :unset), :ambiente => (integer() | :unset), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"correcao", :correcao, {:optional, :string}}, {"ambiente", :ambiente, {:optional, :i64}}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G123"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G124 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:evento, :unset}, {:justificativa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :ambiente => (integer() | :unset), :evento => (String.t() | :unset), :justificativa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"ambiente", :ambiente, {:optional, :i64}}, {"evento", :evento, {:optional, :string}}, {"justificativa", :justificativa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G124"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G125 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :ambiente => (integer() | :unset), :cod_evento => (String.t() | :unset), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"ambiente", :ambiente, {:optional, :i64}}, {"cod_evento", :cod_evento, {:optional, :string}}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G125"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G127 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => (integer() | :unset), :valor_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :controle_estoque => (Webmania.Models.Api1Fiscal.G127ControleEstoque.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, {:optional, :i64}}, {"valor_ibs", :valor_ibs, {:optional, :scalar}}, {"valor_cbs", :valor_cbs, {:optional, :scalar}}, {"controle_estoque", :controle_estoque, {:optional, Webmania.Models.Api1Fiscal.G127ControleEstoque}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G127"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G127ControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade, :unset}, {:unidade, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :unidade => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade", :quantidade, {:optional, :scalar}}, {"unidade", :unidade, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G127ControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G128 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => (integer() | :unset), :valor_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :controle_estoque => (Webmania.Models.Api1Fiscal.G128ControleEstoque.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, {:optional, :i64}}, {"valor_ibs", :valor_ibs, {:optional, :scalar}}, {"valor_cbs", :valor_cbs, {:optional, :scalar}}, {"controle_estoque", :controle_estoque, {:optional, Webmania.Models.Api1Fiscal.G128ControleEstoque}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G128"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G128ControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_perecimento, :unset}, {:unidade_perecimento, :unset}, {:valor_ibs_estorno, :unset}, {:valor_cbs_estorno, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_perecimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :unidade_perecimento => (String.t() | :unset), :valor_ibs_estorno => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cbs_estorno => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_perecimento", :quantidade_perecimento, {:optional, :scalar}}, {"unidade_perecimento", :unidade_perecimento, {:optional, :string}}, {"valor_ibs_estorno", :valor_ibs_estorno, {:optional, :scalar}}, {"valor_cbs_estorno", :valor_cbs_estorno, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G128ControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G129 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => (integer() | :unset), :valor_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :controle_estoque => (Webmania.Models.Api1Fiscal.G129ControleEstoque.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, {:optional, :i64}}, {"valor_ibs", :valor_ibs, {:optional, :scalar}}, {"valor_cbs", :valor_cbs, {:optional, :scalar}}, {"controle_estoque", :controle_estoque, {:optional, Webmania.Models.Api1Fiscal.G129ControleEstoque}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G129"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G129ControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_nao_fornecida, :unset}, {:unidade_nao_fornecida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_nao_fornecida => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :unidade_nao_fornecida => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_nao_fornecida", :quantidade_nao_fornecida, {:optional, :scalar}}, {"unidade_nao_fornecida", :unidade_nao_fornecida, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G129ControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G130 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_previsao_entrega, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_previsao_entrega => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_previsao_entrega", :data_previsao_entrega, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G130"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G131 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:base_calculo, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => (integer() | :unset), :base_calculo => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :credito_presumido => (Webmania.Models.Api1Fiscal.G131CreditoPresumido.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, {:optional, :i64}}, {"base_calculo", :base_calculo, {:optional, :scalar}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api1Fiscal.G131CreditoPresumido}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G131"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G131CreditoPresumido do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => (String.t() | :unset), :aliquota_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, {:optional, :string}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :scalar}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :scalar}}, {"valor_ibs", :valor_ibs, {:optional, :scalar}}, {"valor_cbs", :valor_cbs, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G131CreditoPresumido"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G132 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => (integer() | :unset), :valor_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :controle_estoque => (Webmania.Models.Api1Fiscal.G132ControleEstoque.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, {:optional, :i64}}, {"valor_ibs", :valor_ibs, {:optional, :scalar}}, {"valor_cbs", :valor_cbs, {:optional, :scalar}}, {"controle_estoque", :controle_estoque, {:optional, Webmania.Models.Api1Fiscal.G132ControleEstoque}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G132"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G132ControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_perecimento, :unset}, {:unidade_perecimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_perecimento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :unidade_perecimento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_perecimento", :quantidade_perecimento, {:optional, :scalar}}, {"unidade_perecimento", :unidade_perecimento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G132ControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G133 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:indicador_aceitacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:indicador_aceitacao => (integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"indicador_aceitacao", :indicador_aceitacao, {:optional, :i64}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G133"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G134 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => (integer() | :unset), :valor_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :controle_estoque => (Webmania.Models.Api1Fiscal.G134ControleEstoque.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, {:optional, :i64}}, {"valor_ibs", :valor_ibs, {:optional, :scalar}}, {"valor_cbs", :valor_cbs, {:optional, :scalar}}, {"controle_estoque", :controle_estoque, {:optional, Webmania.Models.Api1Fiscal.G134ControleEstoque}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G134"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G134ControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_imobilizada, :unset}, {:unidade_imobilizada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_imobilizada => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :unidade_imobilizada => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_imobilizada", :quantidade_imobilizada, {:optional, :scalar}}, {"unidade_imobilizada", :unidade_imobilizada, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G134ControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G135 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => (integer() | :unset), :valor_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :controle_estoque => (Webmania.Models.Api1Fiscal.G135ControleEstoque.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, {:optional, :i64}}, {"valor_ibs", :valor_ibs, {:optional, :scalar}}, {"valor_cbs", :valor_cbs, {:optional, :scalar}}, {"controle_estoque", :controle_estoque, {:optional, Webmania.Models.Api1Fiscal.G135ControleEstoque}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G135"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G135ControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_combustivel, :unset}, {:unidade_combustivel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_combustivel => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :unidade_combustivel => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_combustivel", :quantidade_combustivel, {:optional, :scalar}}, {"unidade_combustivel", :unidade_combustivel, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G135ControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G136 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_credito_ibs, :unset}, {:valor_credito_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => (integer() | :unset), :valor_credito_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_credito_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, {:optional, :i64}}, {"valor_credito_ibs", :valor_credito_ibs, {:optional, :scalar}}, {"valor_credito_cbs", :valor_credito_cbs, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G136"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G137 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:ambiente, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :ambiente => (integer() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"ambiente", :ambiente, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G137"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G138 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:pagamento, :unset}, {:pagamentos, :unset}, {:ambiente, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :pagamento => (Webmania.Models.Api1Fiscal.NfePaymentEventItem.t() | :unset), :pagamentos => ([Webmania.Models.Api1Fiscal.NfePaymentEventItem.t()] | :unset), :ambiente => (integer() | :unset), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"pagamento", :pagamento, {:optional, Webmania.Models.Api1Fiscal.NfePaymentEventItem}}, {"pagamentos", :pagamentos, {:optional, {:array, Webmania.Models.Api1Fiscal.NfePaymentEventItem}}}, {"ambiente", :ambiente, {:optional, :i64}}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G138"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G139 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:indicador_pagamento, :unset}, {:forma_pagamento, :unset}, {:desc_pagamento, :unset}, {:valor_pagamento, :unset}, {:data_pagamento, :unset}, {:cnpj_transacional_pag, :unset}, {:uf_pagamento, :unset}, {:cnpj_instituicao_financeira, :unset}, {:bandeira, :unset}, {:autorizacao, :unset}, {:cnpj_beneficiario, :unset}, {:uf_beneficiario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:indicador_pagamento => (integer() | :unset), :forma_pagamento => (String.t() | :unset), :desc_pagamento => (String.t() | :unset), :valor_pagamento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_pagamento => (String.t() | :unset), :cnpj_transacional_pag => (String.t() | :unset), :uf_pagamento => (String.t() | :unset), :cnpj_instituicao_financeira => (String.t() | :unset), :bandeira => (String.t() | :unset), :autorizacao => (String.t() | :unset), :cnpj_beneficiario => (String.t() | :unset), :uf_beneficiario => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"indicador_pagamento", :indicador_pagamento, {:optional, :i64}}, {"forma_pagamento", :forma_pagamento, {:optional, :string}}, {"desc_pagamento", :desc_pagamento, {:optional, :string}}, {"valor_pagamento", :valor_pagamento, {:optional, :scalar}}, {"data_pagamento", :data_pagamento, {:optional, :string}}, {"cnpj_transacional_pag", :cnpj_transacional_pag, {:optional, :string}}, {"uf_pagamento", :uf_pagamento, {:optional, :string}}, {"cnpj_instituicao_financeira", :cnpj_instituicao_financeira, {:optional, :string}}, {"bandeira", :bandeira, {:optional, :string}}, {"autorizacao", :autorizacao, {:optional, :string}}, {"cnpj_beneficiario", :cnpj_beneficiario, {:optional, :string}}, {"uf_beneficiario", :uf_beneficiario, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G139"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G140 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => (String.t() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, {:optional, :string}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G140"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G141 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:ID, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :ID => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"ID", :ID, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G141"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G142 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:motivo, :unset}, {:nfce_referenciada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :motivo => (String.t() | :unset), :nfce_referenciada => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"motivo", :motivo, {:optional, :string}}, {"nfce_referenciada", :nfce_referenciada, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G142"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G143 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:sequencia, :unset}, {:motivo, :unset}, {:ambiente, :unset}, {:serie, :unset}, {:modelo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:sequencia => (String.t() | :unset), :motivo => (String.t() | :unset), :ambiente => (integer() | :unset), :serie => (String.t() | :unset), :modelo => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"sequencia", :sequencia, {:optional, :string}}, {"motivo", :motivo, {:optional, :string}}, {"ambiente", :ambiente, {:optional, :i64}}, {"serie", :serie, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G143"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G144 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_inicio, :unset}, {:data_final, :unset}, {:numero_inicio, :unset}, {:numero_final, :unset}, {:modelo, :unset}, {:relatorio, :unset}, {:separar_pdf, :unset}, {:status, :unset}, {:ordem, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_inicio => (String.t() | :unset), :data_final => (String.t() | :unset), :numero_inicio => (String.t() | :unset), :numero_final => (String.t() | :unset), :modelo => (String.t() | :unset), :relatorio => (String.t() | :unset), :separar_pdf => (integer() | :unset), :status => (String.t() | :unset), :ordem => (String.t() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_inicio", :data_inicio, {:optional, :string}}, {"data_final", :data_final, {:optional, :string}}, {"numero_inicio", :numero_inicio, {:optional, :string}}, {"numero_final", :numero_final, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"relatorio", :relatorio, {:optional, :string}}, {"separar_pdf", :separar_pdf, {:optional, :i64}}, {"status", :status, {:optional, :string}}, {"ordem", :ordem, {:optional, :string}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G144"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G145 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_tributacao, :unset}, {:regime_tributario, :unset}, {:cnpj, :unset}, {:razao_social, :unset}, {:cpf, :unset}, {:nome_completo, :unset}, {:nome_fantasia, :unset}, {:ie, :unset}, {:im, :unset}, {:unidade_empresa, :unset}, {:email, :unset}, {:telefone, :unset}, {:conta_bancaria_banco, :unset}, {:conta_bancaria_agencia, :unset}, {:conta_bancaria_numero, :unset}, {:conta_bancaria_digito, :unset}, {:contabilidade, :unset}, {:url_notificacao, :unset}, {:logomarca, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_tributacao => (String.t() | :unset), :regime_tributario => (String.t() | :unset), :cnpj => (String.t() | :unset), :razao_social => (String.t() | :unset), :cpf => (String.t() | :unset), :nome_completo => (String.t() | :unset), :nome_fantasia => (String.t() | :unset), :ie => (String.t() | :unset), :im => (String.t() | :unset), :unidade_empresa => (String.t() | :unset), :email => (String.t() | :unset), :telefone => (String.t() | :unset), :conta_bancaria_banco => (String.t() | :unset), :conta_bancaria_agencia => (String.t() | :unset), :conta_bancaria_numero => (String.t() | :unset), :conta_bancaria_digito => (String.t() | :unset), :contabilidade => (String.t() | :unset), :url_notificacao => (String.t() | :unset), :logomarca => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_tributacao", :tipo_tributacao, {:optional, :string}}, {"regime_tributario", :regime_tributario, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"nome_fantasia", :nome_fantasia, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"unidade_empresa", :unidade_empresa, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"conta_bancaria_banco", :conta_bancaria_banco, {:optional, :string}}, {"conta_bancaria_agencia", :conta_bancaria_agencia, {:optional, :string}}, {"conta_bancaria_numero", :conta_bancaria_numero, {:optional, :string}}, {"conta_bancaria_digito", :conta_bancaria_digito, {:optional, :string}}, {"contabilidade", :contabilidade, {:optional, :string}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"logomarca", :logomarca, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G145"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G146 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:endereco, :unset}, {:numero, :unset}, {:complemento, :unset}, {:bairro, :unset}, {:cidade, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :endereco => (String.t() | :unset), :numero => (String.t() | :unset), :complemento => (String.t() | :unset), :bairro => (String.t() | :unset), :cidade => (String.t() | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G146"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G147 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nfe_serie, :unset}, {:nfe_numero, :unset}, {:nfe_numero_dev, :unset}, {:informacoes_fisco, :unset}, {:cnae_issqn, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nfe_serie => (integer() | :unset), :nfe_numero => (integer() | :unset), :nfe_numero_dev => (integer() | :unset), :informacoes_fisco => (String.t() | :unset), :cnae_issqn => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nfe_serie", :nfe_serie, {:optional, :i64}}, {"nfe_numero", :nfe_numero, {:optional, :i64}}, {"nfe_numero_dev", :nfe_numero_dev, {:optional, :i64}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"cnae_issqn", :cnae_issqn, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G147"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G148 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nfce_serie, :unset}, {:nfce_numero, :unset}, {:nfce_id_csc, :unset}, {:nfce_codigo_csc, :unset}, {:nfce_numero_dev, :unset}, {:nfce_id_csc_dev, :unset}, {:nfce_codigo_csc_dev, :unset}, {:informacoes_fisco, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nfce_serie => (integer() | :unset), :nfce_numero => (integer() | :unset), :nfce_id_csc => (String.t() | :unset), :nfce_codigo_csc => (String.t() | :unset), :nfce_numero_dev => (integer() | :unset), :nfce_id_csc_dev => (String.t() | :unset), :nfce_codigo_csc_dev => (String.t() | :unset), :informacoes_fisco => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nfce_serie", :nfce_serie, {:optional, :i64}}, {"nfce_numero", :nfce_numero, {:optional, :i64}}, {"nfce_id_csc", :nfce_id_csc, {:optional, :string}}, {"nfce_codigo_csc", :nfce_codigo_csc, {:optional, :string}}, {"nfce_numero_dev", :nfce_numero_dev, {:optional, :i64}}, {"nfce_id_csc_dev", :nfce_id_csc_dev, {:optional, :string}}, {"nfce_codigo_csc_dev", :nfce_codigo_csc_dev, {:optional, :string}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G148"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G149 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cte_serie, :unset}, {:cte_number, :unset}, {:cte_number_dev, :unset}, {:cte_os_serie, :unset}, {:cte_os_number, :unset}, {:cte_os_number_dev, :unset}, {:taf_cte_os, :unset}, {:registro_estadual_cte_os, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cte_serie => (integer() | :unset), :cte_number => (integer() | :unset), :cte_number_dev => (integer() | :unset), :cte_os_serie => (integer() | :unset), :cte_os_number => (integer() | :unset), :cte_os_number_dev => (integer() | :unset), :taf_cte_os => (String.t() | :unset), :registro_estadual_cte_os => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cte_serie", :cte_serie, {:optional, :i64}}, {"cte_number", :cte_number, {:optional, :i64}}, {"cte_number_dev", :cte_number_dev, {:optional, :i64}}, {"cte_os_serie", :cte_os_serie, {:optional, :i64}}, {"cte_os_number", :cte_os_number, {:optional, :i64}}, {"cte_os_number_dev", :cte_os_number_dev, {:optional, :i64}}, {"taf_cte_os", :taf_cte_os, {:optional, :string}}, {"registro_estadual_cte_os", :registro_estadual_cte_os, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G149"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G150 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:dce_serie, :unset}, {:dce_numero, :unset}, {:dce_numero_dev, :unset}, {:tipo_emissor_dce, :unset}, {:numero_site_autorizador, :unset}, {:site_marketplace, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:dce_serie => (integer() | :unset), :dce_numero => (integer() | :unset), :dce_numero_dev => (integer() | :unset), :tipo_emissor_dce => (integer() | :unset), :numero_site_autorizador => (integer() | :unset), :site_marketplace => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"dce_serie", :dce_serie, {:optional, :i64}}, {"dce_numero", :dce_numero, {:optional, :i64}}, {"dce_numero_dev", :dce_numero_dev, {:optional, :i64}}, {"tipo_emissor_dce", :tipo_emissor_dce, {:optional, :i64}}, {"numero_site_autorizador", :numero_site_autorizador, {:optional, :i64}}, {"site_marketplace", :site_marketplace, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G150"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G151 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nfse_rps_serie, :unset}, {:nfse_rps_numero, :unset}, {:cnae, :unset}, {:nfse_login, :unset}, {:nfse_password, :unset}, {:nfse_token, :unset}, {:regime_apuracao_sn, :unset}, {:regime_especial_nacional, :unset}, {:regime_especial_municipal, :unset}, {:nfse_lote_rps_numero, :unset}, {:nfse_rps_numero_dev, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nfse_rps_serie => (String.t() | :unset), :nfse_rps_numero => (integer() | :unset), :cnae => (Webmania.Models.Api1Fiscal.G151Cnae.t() | :unset), :nfse_login => (String.t() | :unset), :nfse_password => (String.t() | :unset), :nfse_token => (String.t() | :unset), :regime_apuracao_sn => (String.t() | :unset), :regime_especial_nacional => (String.t() | :unset), :regime_especial_municipal => (String.t() | :unset), :nfse_lote_rps_numero => (integer() | :unset), :nfse_rps_numero_dev => (integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nfse_rps_serie", :nfse_rps_serie, {:optional, :string}}, {"nfse_rps_numero", :nfse_rps_numero, {:optional, :i64}}, {"cnae", :cnae, {:optional, Webmania.Models.Api1Fiscal.G151Cnae}}, {"nfse_login", :nfse_login, {:optional, :string}}, {"nfse_password", :nfse_password, {:optional, :string}}, {"nfse_token", :nfse_token, {:optional, :string}}, {"regime_apuracao_sn", :regime_apuracao_sn, {:optional, :string}}, {"regime_especial_nacional", :regime_especial_nacional, {:optional, :string}}, {"regime_especial_municipal", :regime_especial_municipal, {:optional, :string}}, {"nfse_lote_rps_numero", :nfse_lote_rps_numero, {:optional, :i64}}, {"nfse_rps_numero_dev", :nfse_rps_numero_dev, {:optional, :i64}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G151"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G151Cnae do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::G151Cnae"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G152 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:certificado, :unset}, {:certificado_senha, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:certificado => (String.t() | :unset), :certificado_senha => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"certificado", :certificado, {:optional, :string}}, {"certificado_senha", :certificado_senha, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G152"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.G153 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:partilha_icms_contribuinte, :unset}, {:partilha_icms_isento, :unset}, {:orientacao_danfe, :unset}, {:microcervejaria, :unset}, {:icms_ref_sp, :unset}, {:refeicoes_sp, :unset}, {:icms_ref_df, :unset}, {:exclusao_icms_pis_cofins, :unset}, {:exclusao_difal_pis_cofins, :unset}, {:deduzir_desconto_ipi, :unset}, {:base_calculo_ipi_sem_frete, :unset}, {:email_automatico_nfse, :unset}, {:ativar_epec, :unset}, {:ocultar_total_etiqueta, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:partilha_icms_contribuinte => (boolean() | :unset), :partilha_icms_isento => (boolean() | :unset), :orientacao_danfe => (String.t() | :unset), :microcervejaria => (boolean() | :unset), :icms_ref_sp => (boolean() | :unset), :refeicoes_sp => (boolean() | :unset), :icms_ref_df => (boolean() | :unset), :exclusao_icms_pis_cofins => (boolean() | :unset), :exclusao_difal_pis_cofins => (boolean() | :unset), :deduzir_desconto_ipi => (boolean() | :unset), :base_calculo_ipi_sem_frete => (boolean() | :unset), :email_automatico_nfse => (boolean() | :unset), :ativar_epec => (String.t() | :unset), :ocultar_total_etiqueta => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"partilha_icms_contribuinte", :partilha_icms_contribuinte, {:optional, :boolean}}, {"partilha_icms_isento", :partilha_icms_isento, {:optional, :boolean}}, {"orientacao_danfe", :orientacao_danfe, {:optional, :string}}, {"microcervejaria", :microcervejaria, {:optional, :boolean}}, {"icms_ref_sp", :icms_ref_sp, {:optional, :boolean}}, {"refeicoes_sp", :refeicoes_sp, {:optional, :boolean}}, {"icms_ref_df", :icms_ref_df, {:optional, :boolean}}, {"exclusao_icms_pis_cofins", :exclusao_icms_pis_cofins, {:optional, :boolean}}, {"exclusao_difal_pis_cofins", :exclusao_difal_pis_cofins, {:optional, :boolean}}, {"deduzir_desconto_ipi", :deduzir_desconto_ipi, {:optional, :boolean}}, {"base_calculo_ipi_sem_frete", :base_calculo_ipi_sem_frete, {:optional, :boolean}}, {"email_automatico_nfse", :email_automatico_nfse, {:optional, :boolean}}, {"ativar_epec", :ativar_epec, {:optional, :string}}, {"ocultar_total_etiqueta", :ocultar_total_etiqueta, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::G153"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.Nfe55IssueRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:operacao, :unset}, {:natureza_operacao, :unset}, {:modelo, :unset}, {:finalidade, :unset}, {:ambiente, :unset}, {:tipo_credito, :unset}, {:tipo_debito, :unset}, {:url_notificacao, :unset}, {:cliente, :unset}, {:produtos, :unset}, {:pedido, :unset}, {:transporte, :unset}, {:fatura, :unset}, {:parcelas, :unset}, {:exportacao, :unset}, {:agropecuario, :unset}, {:compra_governamental, :unset}, {:inscricao_suframa, :unset}, {:codigo_indicador_operacao, :unset}, {:data_emissao, :unset}, {:data_entrada_saida, :unset}, {:data_previsao_entrega, :unset}, {:data_servico, :unset}, {:nfe_referenciada, :unset}, {:cte_referenciada, :unset}, {:ecf_referenciada, :unset}, {:nf_rural_referenciada, :unset}, {:calculo_impostos, :unset}, {:previa_danfe, :unset}, {:assincrono, :unset}, {:responsavel_tecnico, :unset}, {:duplicatas, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :operacao => integer(), :natureza_operacao => String.t(), :modelo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :finalidade => integer(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :tipo_credito => (integer() | :unset), :tipo_debito => (integer() | :unset), :url_notificacao => (String.t() | :unset), :cliente => Webmania.JSON.value(), :produtos => [Webmania.Models.Api1Fiscal.NfeProduct.t()], :pedido => Webmania.Models.Api1Fiscal.NfeOrder.t(), :transporte => (Webmania.Models.Api1Fiscal.NfeTransport.t() | :unset), :fatura => (Webmania.Models.Api1Fiscal.G028.t() | :unset), :parcelas => ([Webmania.Models.Api1Fiscal.G029.t()] | :unset), :exportacao => (Webmania.Models.Api1Fiscal.G030.t() | :unset), :agropecuario => (Webmania.Models.Api1Fiscal.G031.t() | :unset), :compra_governamental => (Webmania.Models.Api1Fiscal.G034.t() | :unset), :inscricao_suframa => (String.t() | :unset), :codigo_indicador_operacao => (String.t() | :unset), :data_emissao => (String.t() | :unset), :data_entrada_saida => (String.t() | :unset), :data_previsao_entrega => (String.t() | :unset), :data_servico => (String.t() | :unset), :nfe_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestNfeReferenciada.t() | :unset), :cte_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestCteReferenciada.t() | :unset), :ecf_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestEcfReferenciada.t() | :unset), :nf_rural_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestNfRuralReferenciada.t() | :unset), :calculo_impostos => (boolean() | :unset), :previa_danfe => (boolean() | :unset), :assincrono => (boolean() | :unset), :responsavel_tecnico => (Webmania.Models.Api1Fiscal.G068.t() | :unset), :duplicatas => ([Webmania.Models.Api1Fiscal.G029.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"operacao", :operacao, :i64}, {"natureza_operacao", :natureza_operacao, :string}, {"modelo", :modelo, :scalar}, {"finalidade", :finalidade, :i64}, {"ambiente", :ambiente, :scalar}, {"tipo_credito", :tipo_credito, {:optional, :i64}}, {"tipo_debito", :tipo_debito, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"cliente", :cliente, :value}, {"produtos", :produtos, {:array, Webmania.Models.Api1Fiscal.NfeProduct}}, {"pedido", :pedido, Webmania.Models.Api1Fiscal.NfeOrder}, {"transporte", :transporte, {:optional, Webmania.Models.Api1Fiscal.NfeTransport}}, {"fatura", :fatura, {:optional, Webmania.Models.Api1Fiscal.G028}}, {"parcelas", :parcelas, {:optional, {:array, Webmania.Models.Api1Fiscal.G029}}}, {"exportacao", :exportacao, {:optional, Webmania.Models.Api1Fiscal.G030}}, {"agropecuario", :agropecuario, {:optional, Webmania.Models.Api1Fiscal.G031}}, {"compra_governamental", :compra_governamental, {:optional, Webmania.Models.Api1Fiscal.G034}}, {"inscricao_suframa", :inscricao_suframa, {:optional, :string}}, {"codigo_indicador_operacao", :codigo_indicador_operacao, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"data_entrada_saida", :data_entrada_saida, {:optional, :string}}, {"data_previsao_entrega", :data_previsao_entrega, {:optional, :string}}, {"data_servico", :data_servico, {:optional, :string}}, {"nfe_referenciada", :nfe_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestNfeReferenciada}}, {"cte_referenciada", :cte_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestCteReferenciada}}, {"ecf_referenciada", :ecf_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestEcfReferenciada}}, {"nf_rural_referenciada", :nf_rural_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestNfRuralReferenciada}}, {"calculo_impostos", :calculo_impostos, {:optional, :boolean}}, {"previa_danfe", :previa_danfe, {:optional, :boolean}}, {"assincrono", :assincrono, {:optional, :boolean}}, {"responsavel_tecnico", :responsavel_tecnico, {:optional, Webmania.Models.Api1Fiscal.G068}}, {"duplicatas", :duplicatas, {:optional, {:array, Webmania.Models.Api1Fiscal.G029}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::Nfe55IssueRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.Nfe55Customer do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cpf, :unset}, {:nome_completo, :unset}, {:cnpj, :unset}, {:razao_social, :unset}, {:ie, :unset}, {:suframa, :unset}, {:substituto_tributario, :unset}, {:consumidor_final, :unset}, {:contribuinte, :unset}, {:microcervejaria, :unset}, {:endereco, :unset}, {:complemento, :unset}, {:numero, :unset}, {:bairro, :unset}, {:cidade, :unset}, {:uf, :unset}, {:cep, :unset}, {:telefone, :unset}, {:email, :unset}, {:id_estrangeiro, :unset}, {:nome_estrangeiro, :unset}, {:cod_pais, :unset}, {:nome_pais, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cpf => (String.t() | :unset), :nome_completo => (String.t() | :unset), :cnpj => (String.t() | :unset), :razao_social => (String.t() | :unset), :ie => (String.t() | :unset), :suframa => (String.t() | :unset), :substituto_tributario => (String.t() | :unset), :consumidor_final => (integer() | :unset), :contribuinte => (integer() | :unset), :microcervejaria => (boolean() | :unset), :endereco => String.t(), :complemento => (String.t() | :unset), :numero => (String.t() | :unset), :bairro => String.t(), :cidade => (String.t() | :unset), :uf => (String.t() | :unset), :cep => (String.t() | :unset), :telefone => (String.t() | :unset), :email => (String.t() | :unset), :id_estrangeiro => (String.t() | :unset), :nome_estrangeiro => (String.t() | :unset), :cod_pais => (String.t() | :unset), :nome_pais => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cpf", :cpf, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"suframa", :suframa, {:optional, :string}}, {"substituto_tributario", :substituto_tributario, {:optional, :string}}, {"consumidor_final", :consumidor_final, {:optional, :i64}}, {"contribuinte", :contribuinte, {:optional, :i64}}, {"microcervejaria", :microcervejaria, {:optional, :boolean}}, {"endereco", :endereco, :string}, {"complemento", :complemento, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"bairro", :bairro, :string}, {"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"id_estrangeiro", :id_estrangeiro, {:optional, :string}}, {"nome_estrangeiro", :nome_estrangeiro, {:optional, :string}}, {"cod_pais", :cod_pais, {:optional, :string}}, {"nome_pais", :nome_pais, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::Nfe55Customer"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.Nfce65IssueRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ID, :unset}, {:operacao, :unset}, {:natureza_operacao, :unset}, {:modelo, :unset}, {:finalidade, :unset}, {:ambiente, :unset}, {:tipo_credito, :unset}, {:tipo_debito, :unset}, {:url_notificacao, :unset}, {:cliente, :unset}, {:produtos, :unset}, {:pedido, :unset}, {:transporte, :unset}, {:fatura, :unset}, {:parcelas, :unset}, {:exportacao, :unset}, {:agropecuario, :unset}, {:compra_governamental, :unset}, {:inscricao_suframa, :unset}, {:codigo_indicador_operacao, :unset}, {:data_emissao, :unset}, {:data_entrada_saida, :unset}, {:data_previsao_entrega, :unset}, {:data_servico, :unset}, {:nfe_referenciada, :unset}, {:cte_referenciada, :unset}, {:ecf_referenciada, :unset}, {:nf_rural_referenciada, :unset}, {:calculo_impostos, :unset}, {:previa_danfe, :unset}, {:assincrono, :unset}, {:responsavel_tecnico, :unset}, {:duplicatas, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ID => (String.t() | :unset), :operacao => integer(), :natureza_operacao => String.t(), :modelo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :finalidade => integer(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :tipo_credito => (integer() | :unset), :tipo_debito => (integer() | :unset), :url_notificacao => (String.t() | :unset), :cliente => (Webmania.Models.Api1Fiscal.NfeCustomer.t() | :unset), :produtos => [Webmania.Models.Api1Fiscal.NfeProduct.t()], :pedido => Webmania.Models.Api1Fiscal.NfeOrder.t(), :transporte => (Webmania.Models.Api1Fiscal.NfeTransport.t() | :unset), :fatura => (Webmania.Models.Api1Fiscal.G028.t() | :unset), :parcelas => ([Webmania.Models.Api1Fiscal.G029.t()] | :unset), :exportacao => (Webmania.Models.Api1Fiscal.G030.t() | :unset), :agropecuario => (Webmania.Models.Api1Fiscal.G031.t() | :unset), :compra_governamental => (Webmania.Models.Api1Fiscal.G034.t() | :unset), :inscricao_suframa => (String.t() | :unset), :codigo_indicador_operacao => (String.t() | :unset), :data_emissao => (String.t() | :unset), :data_entrada_saida => (String.t() | :unset), :data_previsao_entrega => (String.t() | :unset), :data_servico => (String.t() | :unset), :nfe_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestNfeReferenciada.t() | :unset), :cte_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestCteReferenciada.t() | :unset), :ecf_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestEcfReferenciada.t() | :unset), :nf_rural_referenciada => (Webmania.Models.Api1Fiscal.NfeIssueRequestNfRuralReferenciada.t() | :unset), :calculo_impostos => (boolean() | :unset), :previa_danfe => (boolean() | :unset), :assincrono => (boolean() | :unset), :responsavel_tecnico => (Webmania.Models.Api1Fiscal.G068.t() | :unset), :duplicatas => ([Webmania.Models.Api1Fiscal.G029.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ID", :ID, {:optional, :string}}, {"operacao", :operacao, :i64}, {"natureza_operacao", :natureza_operacao, :string}, {"modelo", :modelo, :scalar}, {"finalidade", :finalidade, :i64}, {"ambiente", :ambiente, :scalar}, {"tipo_credito", :tipo_credito, {:optional, :i64}}, {"tipo_debito", :tipo_debito, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"cliente", :cliente, {:optional, Webmania.Models.Api1Fiscal.NfeCustomer}}, {"produtos", :produtos, {:array, Webmania.Models.Api1Fiscal.NfeProduct}}, {"pedido", :pedido, Webmania.Models.Api1Fiscal.NfeOrder}, {"transporte", :transporte, {:optional, Webmania.Models.Api1Fiscal.NfeTransport}}, {"fatura", :fatura, {:optional, Webmania.Models.Api1Fiscal.G028}}, {"parcelas", :parcelas, {:optional, {:array, Webmania.Models.Api1Fiscal.G029}}}, {"exportacao", :exportacao, {:optional, Webmania.Models.Api1Fiscal.G030}}, {"agropecuario", :agropecuario, {:optional, Webmania.Models.Api1Fiscal.G031}}, {"compra_governamental", :compra_governamental, {:optional, Webmania.Models.Api1Fiscal.G034}}, {"inscricao_suframa", :inscricao_suframa, {:optional, :string}}, {"codigo_indicador_operacao", :codigo_indicador_operacao, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"data_entrada_saida", :data_entrada_saida, {:optional, :string}}, {"data_previsao_entrega", :data_previsao_entrega, {:optional, :string}}, {"data_servico", :data_servico, {:optional, :string}}, {"nfe_referenciada", :nfe_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestNfeReferenciada}}, {"cte_referenciada", :cte_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestCteReferenciada}}, {"ecf_referenciada", :ecf_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestEcfReferenciada}}, {"nf_rural_referenciada", :nf_rural_referenciada, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequestNfRuralReferenciada}}, {"calculo_impostos", :calculo_impostos, {:optional, :boolean}}, {"previa_danfe", :previa_danfe, {:optional, :boolean}}, {"assincrono", :assincrono, {:optional, :boolean}}, {"responsavel_tecnico", :responsavel_tecnico, {:optional, Webmania.Models.Api1Fiscal.G068}}, {"duplicatas", :duplicatas, {:optional, {:array, Webmania.Models.Api1Fiscal.G029}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::Nfce65IssueRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeReturnRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:natureza_operacao, :unset}, {:ambiente, :unset}, {:classe_imposto, :unset}, {:codigo_cfop, :unset}, {:produtos, :unset}, {:quantidade, :unset}, {:volume, :unset}, {:informacoes_fisco, :unset}, {:informacoes_complementares, :unset}, {:url_notificacao, :unset}, {:ver_aplic, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :natureza_operacao => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :classe_imposto => (String.t() | :unset), :codigo_cfop => (String.t() | :unset), :produtos => ([integer()] | :unset), :quantidade => ([nil | boolean() | String.t() | integer() | Webmania.Number.t()] | :unset), :volume => (String.t() | :unset), :informacoes_fisco => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :url_notificacao => (String.t() | :unset), :ver_aplic => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"natureza_operacao", :natureza_operacao, :string}, {"ambiente", :ambiente, :scalar}, {"classe_imposto", :classe_imposto, {:optional, :string}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"produtos", :produtos, {:optional, {:array, :i64}}}, {"quantidade", :quantidade, {:optional, {:array, :scalar}}}, {"volume", :volume, {:optional, :string}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"ver_aplic", :ver_aplic, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeReturnRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeAdjustmentRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:operacao, :unset}, {:natureza_operacao, :unset}, {:codigo_cfop, :unset}, {:valor_icms, :unset}, {:valor_icms_st, :unset}, {:ambiente, :unset}, {:cliente, :unset}, {:situacao_tributaria, :unset}, {:informacoes_fisco, :unset}, {:informacoes_complementares, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:operacao => integer(), :natureza_operacao => String.t(), :codigo_cfop => String.t(), :valor_icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_icms_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cliente => Webmania.Models.Api1Fiscal.NfeCustomer.t(), :situacao_tributaria => (String.t() | :unset), :informacoes_fisco => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"operacao", :operacao, :i64}, {"natureza_operacao", :natureza_operacao, :string}, {"codigo_cfop", :codigo_cfop, :string}, {"valor_icms", :valor_icms, {:optional, :scalar}}, {"valor_icms_st", :valor_icms_st, {:optional, :scalar}}, {"ambiente", :ambiente, :scalar}, {"cliente", :cliente, Webmania.Models.Api1Fiscal.NfeCustomer}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeAdjustmentRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeComplementRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:operacao, :unset}, {:natureza_operacao, :unset}, {:ambiente, :unset}, {:cliente, :unset}, {:produtos, :unset}, {:impostos, :unset}, {:agropecuario, :unset}, {:documento_adicao, :unset}, {:informacoes_fisco, :unset}, {:informacoes_complementares, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :operacao => integer(), :natureza_operacao => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cliente => Webmania.Models.Api1Fiscal.NfeCustomer.t(), :produtos => ([Webmania.Models.Api1Fiscal.NfeComplementProduct.t()] | :unset), :impostos => (Webmania.Models.Api1Fiscal.NfeComplementTaxes.t() | :unset), :agropecuario => (Webmania.Models.Api1Fiscal.G031.t() | :unset), :documento_adicao => (Webmania.Models.Api1Fiscal.G119.t() | :unset), :informacoes_fisco => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"operacao", :operacao, :i64}, {"natureza_operacao", :natureza_operacao, :string}, {"ambiente", :ambiente, :scalar}, {"cliente", :cliente, Webmania.Models.Api1Fiscal.NfeCustomer}, {"produtos", :produtos, {:optional, {:array, Webmania.Models.Api1Fiscal.NfeComplementProduct}}}, {"impostos", :impostos, {:optional, Webmania.Models.Api1Fiscal.NfeComplementTaxes}}, {"agropecuario", :agropecuario, {:optional, Webmania.Models.Api1Fiscal.G031}}, {"documento_adicao", :documento_adicao, {:optional, Webmania.Models.Api1Fiscal.G119}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeComplementRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeProductTaxClass do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:icms, :unset}, {:ipi, :unset}, {:pis, :unset}, {:cofins, :unset}, {:issqn, :unset}, {:ibs_cbs, :unset}, {:informacoes_fisco, :unset}, {:informacoes_complementares, :unset}, {:tipo, :unset}, {:tributos_federais, :unset}, {:tributos_estaduais, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :icms => [Webmania.Models.Api1Fiscal.G037.t()], :ipi => [Webmania.Models.Api1Fiscal.G045.t()], :pis => [Webmania.Models.Api1Fiscal.G046.t()], :cofins => [Webmania.Models.Api1Fiscal.G047.t()], :issqn => ([Webmania.Models.Api1Fiscal.G048.t()] | :unset), :ibs_cbs => ([Webmania.Models.Api1Fiscal.G049.t()] | :unset), :informacoes_fisco => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :tipo => (String.t() | :unset), :tributos_federais => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tributos_estaduais => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"icms", :icms, {:array, Webmania.Models.Api1Fiscal.G037}}, {"ipi", :ipi, {:array, Webmania.Models.Api1Fiscal.G045}}, {"pis", :pis, {:array, Webmania.Models.Api1Fiscal.G046}}, {"cofins", :cofins, {:array, Webmania.Models.Api1Fiscal.G047}}, {"issqn", :issqn, {:optional, {:array, Webmania.Models.Api1Fiscal.G048}}}, {"ibs_cbs", :ibs_cbs, {:optional, {:array, Webmania.Models.Api1Fiscal.G049}}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}, {"tipo", :tipo, {:optional, :string}}, {"tributos_federais", :tributos_federais, {:optional, :scalar}}, {"tributos_estaduais", :tributos_estaduais, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeProductTaxClass"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfseTaxClassProvider55 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:ibs_cbs, :unset}, {:iss, :unset}, {:pis, :unset}, {:cofins, :unset}, {:inss, :unset}, {:ir, :unset}, {:csll, :unset}, {:codigo_servico, :unset}, {:natureza_operacao, :unset}, {:exigibilidade_iss, :unset}, {:iss_retido, :unset}, {:responsavel_retencao, :unset}, {:codigo_cnae, :unset}, {:codigo_tributacao_municipio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :tipo => String.t(), :ibs_cbs => (Webmania.Models.Api1Fiscal.G053.t() | :unset), :iss => (integer() | :unset), :pis => (integer() | :unset), :cofins => (integer() | :unset), :inss => (integer() | :unset), :ir => (integer() | :unset), :csll => (integer() | :unset), :codigo_servico => (String.t() | :unset), :natureza_operacao => (String.t() | :unset), :exigibilidade_iss => (String.t() | :unset), :iss_retido => (String.t() | :unset), :responsavel_retencao => (String.t() | :unset), :codigo_cnae => (String.t() | :unset), :codigo_tributacao_municipio => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :string}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G053}}, {"iss", :iss, {:optional, :i64}}, {"pis", :pis, {:optional, :i64}}, {"cofins", :cofins, {:optional, :i64}}, {"inss", :inss, {:optional, :i64}}, {"ir", :ir, {:optional, :i64}}, {"csll", :csll, {:optional, :i64}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"natureza_operacao", :natureza_operacao, {:optional, :string}}, {"exigibilidade_iss", :exigibilidade_iss, {:optional, :string}}, {"iss_retido", :iss_retido, {:optional, :string}}, {"responsavel_retencao", :responsavel_retencao, {:optional, :string}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"codigo_tributacao_municipio", :codigo_tributacao_municipio, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfseTaxClassProvider55"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfseTaxClassProvider56 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:ibs_cbs, :unset}, {:iss, :unset}, {:pis, :unset}, {:cofins, :unset}, {:inss, :unset}, {:ir, :unset}, {:csll, :unset}, {:codigo_cnae, :unset}, {:codigo_servico, :unset}, {:local_prestacao, :unset}, {:cep_local_prestacao, :unset}, {:iss_retido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :tipo => String.t(), :ibs_cbs => (Webmania.Models.Api1Fiscal.G053.t() | :unset), :iss => (integer() | :unset), :pis => (integer() | :unset), :cofins => (integer() | :unset), :inss => (integer() | :unset), :ir => (integer() | :unset), :csll => (integer() | :unset), :codigo_cnae => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :local_prestacao => (String.t() | :unset), :cep_local_prestacao => (String.t() | :unset), :iss_retido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :string}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G053}}, {"iss", :iss, {:optional, :i64}}, {"pis", :pis, {:optional, :i64}}, {"cofins", :cofins, {:optional, :i64}}, {"inss", :inss, {:optional, :i64}}, {"ir", :ir, {:optional, :i64}}, {"csll", :csll, {:optional, :i64}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"local_prestacao", :local_prestacao, {:optional, :string}}, {"cep_local_prestacao", :cep_local_prestacao, {:optional, :string}}, {"iss_retido", :iss_retido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfseTaxClassProvider56"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfseTaxClassProvider57 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:ibs_cbs, :unset}, {:iss, :unset}, {:pis, :unset}, {:cofins, :unset}, {:inss, :unset}, {:ir, :unset}, {:csll, :unset}, {:codigo_servico, :unset}, {:tipo_tributacao, :unset}, {:iss_retido, :unset}, {:responsavel_retencao, :unset}, {:codigo_cnae, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :tipo => String.t(), :ibs_cbs => (Webmania.Models.Api1Fiscal.G053.t() | :unset), :iss => (integer() | :unset), :pis => (integer() | :unset), :cofins => (integer() | :unset), :inss => (integer() | :unset), :ir => (integer() | :unset), :csll => (integer() | :unset), :codigo_servico => (String.t() | :unset), :tipo_tributacao => (String.t() | :unset), :iss_retido => (String.t() | :unset), :responsavel_retencao => (String.t() | :unset), :codigo_cnae => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :string}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G053}}, {"iss", :iss, {:optional, :i64}}, {"pis", :pis, {:optional, :i64}}, {"cofins", :cofins, {:optional, :i64}}, {"inss", :inss, {:optional, :i64}}, {"ir", :ir, {:optional, :i64}}, {"csll", :csll, {:optional, :i64}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"tipo_tributacao", :tipo_tributacao, {:optional, :string}}, {"iss_retido", :iss_retido, {:optional, :string}}, {"responsavel_retencao", :responsavel_retencao, {:optional, :string}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfseTaxClassProvider57"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfseTaxClassProvider58 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:ibs_cbs, :unset}, {:iss, :unset}, {:pis, :unset}, {:cofins, :unset}, {:inss, :unset}, {:ir, :unset}, {:csll, :unset}, {:cfps, :unset}, {:id_cnae, :unset}, {:situacao_tributaria, :unset}, {:iss_retido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :tipo => String.t(), :ibs_cbs => (Webmania.Models.Api1Fiscal.G053.t() | :unset), :iss => (integer() | :unset), :pis => (integer() | :unset), :cofins => (integer() | :unset), :inss => (integer() | :unset), :ir => (integer() | :unset), :csll => (integer() | :unset), :cfps => ([Webmania.Models.Api1Fiscal.G059.t()] | :unset), :id_cnae => (String.t() | :unset), :situacao_tributaria => (String.t() | :unset), :iss_retido => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :string}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G053}}, {"iss", :iss, {:optional, :i64}}, {"pis", :pis, {:optional, :i64}}, {"cofins", :cofins, {:optional, :i64}}, {"inss", :inss, {:optional, :i64}}, {"ir", :ir, {:optional, :i64}}, {"csll", :csll, {:optional, :i64}}, {"cfps", :cfps, {:optional, {:array, Webmania.Models.Api1Fiscal.G059}}}, {"id_cnae", :id_cnae, {:optional, :string}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"iss_retido", :iss_retido, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfseTaxClassProvider58"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfseTaxClassProvider60 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:ibs_cbs, :unset}, {:iss, :unset}, {:pis, :unset}, {:cofins, :unset}, {:inss, :unset}, {:ir, :unset}, {:csll, :unset}, {:codigo_servico, :unset}, {:regime_recolhimento, :unset}, {:forma_recolhimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :tipo => String.t(), :ibs_cbs => (Webmania.Models.Api1Fiscal.G053.t() | :unset), :iss => (integer() | :unset), :pis => (integer() | :unset), :cofins => (integer() | :unset), :inss => (integer() | :unset), :ir => (integer() | :unset), :csll => (integer() | :unset), :codigo_servico => (String.t() | :unset), :regime_recolhimento => (String.t() | :unset), :forma_recolhimento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :string}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G053}}, {"iss", :iss, {:optional, :i64}}, {"pis", :pis, {:optional, :i64}}, {"cofins", :cofins, {:optional, :i64}}, {"inss", :inss, {:optional, :i64}}, {"ir", :ir, {:optional, :i64}}, {"csll", :csll, {:optional, :i64}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"regime_recolhimento", :regime_recolhimento, {:optional, :string}}, {"forma_recolhimento", :forma_recolhimento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfseTaxClassProvider60"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfseTaxClassProvider61 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:ibs_cbs, :unset}, {:iss, :unset}, {:pis, :unset}, {:cofins, :unset}, {:inss, :unset}, {:ir, :unset}, {:csll, :unset}, {:codigo_servico, :unset}, {:iss_retido, :unset}, {:responsavel_retencao, :unset}, {:codigo_cnae, :unset}, {:codigo_tributacao_municipio, :unset}, {:tributacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :tipo => String.t(), :ibs_cbs => (Webmania.Models.Api1Fiscal.G053.t() | :unset), :iss => (integer() | :unset), :pis => (integer() | :unset), :cofins => (integer() | :unset), :inss => (integer() | :unset), :ir => (integer() | :unset), :csll => (integer() | :unset), :codigo_servico => (String.t() | :unset), :iss_retido => (String.t() | :unset), :responsavel_retencao => (String.t() | :unset), :codigo_cnae => (String.t() | :unset), :codigo_tributacao_municipio => (String.t() | :unset), :tributacao => ([Webmania.Models.Api1Fiscal.G062.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :string}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G053}}, {"iss", :iss, {:optional, :i64}}, {"pis", :pis, {:optional, :i64}}, {"cofins", :cofins, {:optional, :i64}}, {"inss", :inss, {:optional, :i64}}, {"ir", :ir, {:optional, :i64}}, {"csll", :csll, {:optional, :i64}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"iss_retido", :iss_retido, {:optional, :string}}, {"responsavel_retencao", :responsavel_retencao, {:optional, :string}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"codigo_tributacao_municipio", :codigo_tributacao_municipio, {:optional, :string}}, {"tributacao", :tributacao, {:optional, {:array, Webmania.Models.Api1Fiscal.G062}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfseTaxClassProvider61"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfseTaxClassProvider63 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:ibs_cbs, :unset}, {:iss, :unset}, {:pis, :unset}, {:cofins, :unset}, {:inss, :unset}, {:ir, :unset}, {:csll, :unset}, {:codigo_servico, :unset}, {:iss_retido, :unset}, {:responsavel_retencao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :tipo => String.t(), :ibs_cbs => (Webmania.Models.Api1Fiscal.G053.t() | :unset), :iss => (integer() | :unset), :pis => (integer() | :unset), :cofins => (integer() | :unset), :inss => (integer() | :unset), :ir => (integer() | :unset), :csll => (integer() | :unset), :codigo_servico => (String.t() | :unset), :iss_retido => (String.t() | :unset), :responsavel_retencao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :string}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G053}}, {"iss", :iss, {:optional, :i64}}, {"pis", :pis, {:optional, :i64}}, {"cofins", :cofins, {:optional, :i64}}, {"inss", :inss, {:optional, :i64}}, {"ir", :ir, {:optional, :i64}}, {"csll", :csll, {:optional, :i64}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"iss_retido", :iss_retido, {:optional, :string}}, {"responsavel_retencao", :responsavel_retencao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfseTaxClassProvider63"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfseTaxClassProvider64 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:ibs_cbs, :unset}, {:iss, :unset}, {:pis, :unset}, {:cofins, :unset}, {:inss, :unset}, {:ir, :unset}, {:csll, :unset}, {:tipo_emissao, :unset}, {:codigo_servico, :unset}, {:codigo_tributacao_municipio, :unset}, {:tributacao_iss, :unset}, {:tipo_imunidade, :unset}, {:retencao_iss, :unset}, {:cst_pis_cofins, :unset}, {:retencao_pis_cofins, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :tipo => String.t(), :ibs_cbs => (Webmania.Models.Api1Fiscal.G065.t() | :unset), :iss => (integer() | :unset), :pis => (integer() | :unset), :cofins => (integer() | :unset), :inss => (integer() | :unset), :ir => (integer() | :unset), :csll => (integer() | :unset), :tipo_emissao => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :codigo_tributacao_municipio => (String.t() | :unset), :tributacao_iss => (integer() | :unset), :tipo_imunidade => (integer() | :unset), :retencao_iss => (String.t() | :unset), :cst_pis_cofins => (String.t() | :unset), :retencao_pis_cofins => (integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :string}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G065}}, {"iss", :iss, {:optional, :i64}}, {"pis", :pis, {:optional, :i64}}, {"cofins", :cofins, {:optional, :i64}}, {"inss", :inss, {:optional, :i64}}, {"ir", :ir, {:optional, :i64}}, {"csll", :csll, {:optional, :i64}}, {"tipo_emissao", :tipo_emissao, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"codigo_tributacao_municipio", :codigo_tributacao_municipio, {:optional, :string}}, {"tributacao_iss", :tributacao_iss, {:optional, :i64}}, {"tipo_imunidade", :tipo_imunidade, {:optional, :i64}}, {"retencao_iss", :retencao_iss, {:optional, :string}}, {"cst_pis_cofins", :cst_pis_cofins, {:optional, :string}}, {"retencao_pis_cofins", :retencao_pis_cofins, {:optional, :i64}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfseTaxClassProvider64"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfseTaxClassProvider66 do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:ibs_cbs, :unset}, {:iss, :unset}, {:pis, :unset}, {:cofins, :unset}, {:inss, :unset}, {:ir, :unset}, {:csll, :unset}, {:codigo_servico, :unset}, {:tributacao, :unset}, {:iss_retido, :unset}, {:responsavel_retencao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :tipo => String.t(), :ibs_cbs => (Webmania.Models.Api1Fiscal.G053.t() | :unset), :iss => (integer() | :unset), :pis => (integer() | :unset), :cofins => (integer() | :unset), :inss => (integer() | :unset), :ir => (integer() | :unset), :csll => (integer() | :unset), :codigo_servico => (String.t() | :unset), :tributacao => (integer() | :unset), :iss_retido => (String.t() | :unset), :responsavel_retencao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :string}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api1Fiscal.G053}}, {"iss", :iss, {:optional, :i64}}, {"pis", :pis, {:optional, :i64}}, {"cofins", :cofins, {:optional, :i64}}, {"inss", :inss, {:optional, :i64}}, {"ir", :ir, {:optional, :i64}}, {"csll", :csll, {:optional, :i64}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"tributacao", :tributacao, {:optional, :i64}}, {"iss_retido", :iss_retido, {:optional, :string}}, {"responsavel_retencao", :responsavel_retencao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfseTaxClassProvider66"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfseServiceTaxClass do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :NfseTaxClassProvider55, value: Webmania.Models.Api1Fiscal.NfseTaxClassProvider55.t()} | %__MODULE__{variant: :NfseTaxClassProvider56, value: Webmania.Models.Api1Fiscal.NfseTaxClassProvider56.t()} | %__MODULE__{variant: :NfseTaxClassProvider57, value: Webmania.Models.Api1Fiscal.NfseTaxClassProvider57.t()} | %__MODULE__{variant: :NfseTaxClassProvider58, value: Webmania.Models.Api1Fiscal.NfseTaxClassProvider58.t()} | %__MODULE__{variant: :NfseTaxClassProvider60, value: Webmania.Models.Api1Fiscal.NfseTaxClassProvider60.t()} | %__MODULE__{variant: :NfseTaxClassProvider61, value: Webmania.Models.Api1Fiscal.NfseTaxClassProvider61.t()} | %__MODULE__{variant: :NfseTaxClassProvider63, value: Webmania.Models.Api1Fiscal.NfseTaxClassProvider63.t()} | %__MODULE__{variant: :NfseTaxClassProvider64, value: Webmania.Models.Api1Fiscal.NfseTaxClassProvider64.t()} | %__MODULE__{variant: :NfseTaxClassProvider66, value: Webmania.Models.Api1Fiscal.NfseTaxClassProvider66.t()}
  @doc false
  def __variants__, do: [{:NfseTaxClassProvider55, Webmania.Models.Api1Fiscal.NfseTaxClassProvider55}, {:NfseTaxClassProvider56, Webmania.Models.Api1Fiscal.NfseTaxClassProvider56}, {:NfseTaxClassProvider57, Webmania.Models.Api1Fiscal.NfseTaxClassProvider57}, {:NfseTaxClassProvider58, Webmania.Models.Api1Fiscal.NfseTaxClassProvider58}, {:NfseTaxClassProvider60, Webmania.Models.Api1Fiscal.NfseTaxClassProvider60}, {:NfseTaxClassProvider61, Webmania.Models.Api1Fiscal.NfseTaxClassProvider61}, {:NfseTaxClassProvider63, Webmania.Models.Api1Fiscal.NfseTaxClassProvider63}, {:NfseTaxClassProvider64, Webmania.Models.Api1Fiscal.NfseTaxClassProvider64}, {:NfseTaxClassProvider66, Webmania.Models.Api1Fiscal.NfseTaxClassProvider66}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfseServiceTaxClass"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfcomCommunicationTaxClass do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:tipo, :unset}, {:codigo_classificacao, :unset}, {:icms, :unset}, {:pis, :unset}, {:cofins, :unset}, {:fust, :unset}, {:funttel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => (String.t() | :unset), :descricao => String.t(), :tipo => String.t(), :codigo_classificacao => String.t(), :icms => Webmania.Models.Api1Fiscal.NfcomClassIcms.t(), :pis => Webmania.Models.Api1Fiscal.NfcomClassPisCofins.t(), :cofins => Webmania.Models.Api1Fiscal.NfcomClassPisCofins.t(), :fust => (Webmania.Models.Api1Fiscal.NfcomClassContribution.t() | :unset), :funttel => (Webmania.Models.Api1Fiscal.NfcomClassContribution.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, {:optional, :string}}, {"descricao", :descricao, :string}, {"tipo", :tipo, :string}, {"codigo_classificacao", :codigo_classificacao, :string}, {"icms", :icms, Webmania.Models.Api1Fiscal.NfcomClassIcms}, {"pis", :pis, Webmania.Models.Api1Fiscal.NfcomClassPisCofins}, {"cofins", :cofins, Webmania.Models.Api1Fiscal.NfcomClassPisCofins}, {"fust", :fust, {:optional, Webmania.Models.Api1Fiscal.NfcomClassContribution}}, {"funttel", :funttel, {:optional, Webmania.Models.Api1Fiscal.NfcomClassContribution}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfcomCommunicationTaxClass"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfcomClassIcms do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:origem, :unset}, {:aliquota, :unset}, {:percentual_reducao, :unset}, {:aliquota_fcp, :unset}, {:codigo_cfop, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => String.t(), :origem => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :percentual_reducao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_fcp => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cfop => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, :string}, {"origem", :origem, {:optional, :scalar}}, {"aliquota", :aliquota, {:optional, :scalar}}, {"percentual_reducao", :percentual_reducao, {:optional, :scalar}}, {"aliquota_fcp", :aliquota_fcp, {:optional, :scalar}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfcomClassIcms"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfcomClassPisCofins do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => String.t(), :aliquota => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, :string}, {"aliquota", :aliquota, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfcomClassPisCofins"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfcomClassContribution do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfcomClassContribution"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.FiscalTaxClassRequestVariant3Item do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :NfeProductTaxClass, value: Webmania.Models.Api1Fiscal.NfeProductTaxClass.t()} | %__MODULE__{variant: :NfseServiceTaxClass, value: Webmania.Models.Api1Fiscal.NfseServiceTaxClass.t()} | %__MODULE__{variant: :NfcomCommunicationTaxClass, value: Webmania.Models.Api1Fiscal.NfcomCommunicationTaxClass.t()}
  @doc false
  def __variants__, do: [{:NfeProductTaxClass, Webmania.Models.Api1Fiscal.NfeProductTaxClass}, {:NfseServiceTaxClass, Webmania.Models.Api1Fiscal.NfseServiceTaxClass}, {:NfcomCommunicationTaxClass, Webmania.Models.Api1Fiscal.NfcomCommunicationTaxClass}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::FiscalTaxClassRequestVariant3Item"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.FiscalTaxClassRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :NfeProductTaxClass, value: Webmania.Models.Api1Fiscal.NfeProductTaxClass.t()} | %__MODULE__{variant: :NfseServiceTaxClass, value: Webmania.Models.Api1Fiscal.NfseServiceTaxClass.t()} | %__MODULE__{variant: :NfcomCommunicationTaxClass, value: Webmania.Models.Api1Fiscal.NfcomCommunicationTaxClass.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.FiscalTaxClassRequestVariant3Item.t()]}
  @doc false
  def __variants__, do: [{:NfeProductTaxClass, Webmania.Models.Api1Fiscal.NfeProductTaxClass}, {:NfseServiceTaxClass, Webmania.Models.Api1Fiscal.NfseServiceTaxClass}, {:NfcomCommunicationTaxClass, Webmania.Models.Api1Fiscal.NfcomCommunicationTaxClass}, {:List, {:array, Webmania.Models.Api1Fiscal.FiscalTaxClassRequestVariant3Item}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::FiscalTaxClassRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.TaxClassCreatedResult do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:referencia, :unset}, {:descricao, :unset}, {:data, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:referencia => String.t(), :descricao => (String.t() | :unset), :data => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"referencia", :referencia, :string}, {"descricao", :descricao, {:optional, :string}}, {"data", :data, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::TaxClassCreatedResult"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.FiscalCompanyUpdateRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_tributacao, :unset}, {:regime_tributario, :unset}, {:cnpj, :unset}, {:razao_social, :unset}, {:cpf, :unset}, {:nome_completo, :unset}, {:nome_fantasia, :unset}, {:ie, :unset}, {:im, :unset}, {:unidade_empresa, :unset}, {:email, :unset}, {:telefone, :unset}, {:conta_bancaria_banco, :unset}, {:conta_bancaria_agencia, :unset}, {:conta_bancaria_numero, :unset}, {:conta_bancaria_digito, :unset}, {:contabilidade, :unset}, {:url_notificacao, :unset}, {:logomarca, :unset}, {:cep, :unset}, {:endereco, :unset}, {:numero, :unset}, {:complemento, :unset}, {:bairro, :unset}, {:cidade, :unset}, {:uf, :unset}, {:nfe_serie, :unset}, {:nfe_numero, :unset}, {:nfe_numero_dev, :unset}, {:informacoes_fisco, :unset}, {:cnae_issqn, :unset}, {:nfce_serie, :unset}, {:nfce_numero, :unset}, {:nfce_id_csc, :unset}, {:nfce_codigo_csc, :unset}, {:nfce_numero_dev, :unset}, {:nfce_id_csc_dev, :unset}, {:nfce_codigo_csc_dev, :unset}, {:cte_serie, :unset}, {:cte_number, :unset}, {:cte_number_dev, :unset}, {:cte_os_serie, :unset}, {:cte_os_number, :unset}, {:cte_os_number_dev, :unset}, {:taf_cte_os, :unset}, {:registro_estadual_cte_os, :unset}, {:dce_serie, :unset}, {:dce_numero, :unset}, {:dce_numero_dev, :unset}, {:tipo_emissor_dce, :unset}, {:numero_site_autorizador, :unset}, {:site_marketplace, :unset}, {:nfse_rps_serie, :unset}, {:nfse_rps_numero, :unset}, {:cnae, :unset}, {:nfse_login, :unset}, {:nfse_password, :unset}, {:nfse_token, :unset}, {:regime_apuracao_sn, :unset}, {:regime_especial_nacional, :unset}, {:regime_especial_municipal, :unset}, {:nfse_lote_rps_numero, :unset}, {:nfse_rps_numero_dev, :unset}, {:certificado, :unset}, {:certificado_senha, :unset}, {:partilha_icms_contribuinte, :unset}, {:partilha_icms_isento, :unset}, {:orientacao_danfe, :unset}, {:microcervejaria, :unset}, {:icms_ref_sp, :unset}, {:refeicoes_sp, :unset}, {:icms_ref_df, :unset}, {:exclusao_icms_pis_cofins, :unset}, {:exclusao_difal_pis_cofins, :unset}, {:deduzir_desconto_ipi, :unset}, {:base_calculo_ipi_sem_frete, :unset}, {:email_automatico_nfse, :unset}, {:ativar_epec, :unset}, {:ocultar_total_etiqueta, :unset}, {:validar_setup_completo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_tributacao => (String.t() | :unset), :regime_tributario => (String.t() | :unset), :cnpj => (String.t() | :unset), :razao_social => (String.t() | :unset), :cpf => (String.t() | :unset), :nome_completo => (String.t() | :unset), :nome_fantasia => (String.t() | :unset), :ie => (String.t() | :unset), :im => (String.t() | :unset), :unidade_empresa => (String.t() | :unset), :email => (String.t() | :unset), :telefone => (String.t() | :unset), :conta_bancaria_banco => (String.t() | :unset), :conta_bancaria_agencia => (String.t() | :unset), :conta_bancaria_numero => (String.t() | :unset), :conta_bancaria_digito => (String.t() | :unset), :contabilidade => (Webmania.Models.Api1Fiscal.FiscalCompanyUpdateRequestContabilidade.t() | :unset), :url_notificacao => (String.t() | :unset), :logomarca => (String.t() | :unset), :cep => (String.t() | :unset), :endereco => (String.t() | :unset), :numero => (String.t() | :unset), :complemento => (String.t() | :unset), :bairro => (String.t() | :unset), :cidade => (String.t() | :unset), :uf => (String.t() | :unset), :nfe_serie => (integer() | :unset), :nfe_numero => (integer() | :unset), :nfe_numero_dev => (integer() | :unset), :informacoes_fisco => (String.t() | :unset), :cnae_issqn => (String.t() | :unset), :nfce_serie => (integer() | :unset), :nfce_numero => (integer() | :unset), :nfce_id_csc => (String.t() | :unset), :nfce_codigo_csc => (String.t() | :unset), :nfce_numero_dev => (integer() | :unset), :nfce_id_csc_dev => (String.t() | :unset), :nfce_codigo_csc_dev => (String.t() | :unset), :cte_serie => (integer() | :unset), :cte_number => (integer() | :unset), :cte_number_dev => (integer() | :unset), :cte_os_serie => (integer() | :unset), :cte_os_number => (integer() | :unset), :cte_os_number_dev => (integer() | :unset), :taf_cte_os => (String.t() | :unset), :registro_estadual_cte_os => (String.t() | :unset), :dce_serie => (integer() | :unset), :dce_numero => (integer() | :unset), :dce_numero_dev => (integer() | :unset), :tipo_emissor_dce => (integer() | :unset), :numero_site_autorizador => (integer() | :unset), :site_marketplace => (String.t() | :unset), :nfse_rps_serie => (String.t() | :unset), :nfse_rps_numero => (integer() | :unset), :cnae => (Webmania.Models.Api1Fiscal.FiscalCompanyUpdateRequestCnae.t() | :unset), :nfse_login => (String.t() | :unset), :nfse_password => (String.t() | :unset), :nfse_token => (String.t() | :unset), :regime_apuracao_sn => (String.t() | :unset), :regime_especial_nacional => (String.t() | :unset), :regime_especial_municipal => (String.t() | :unset), :nfse_lote_rps_numero => (integer() | :unset), :nfse_rps_numero_dev => (integer() | :unset), :certificado => (String.t() | :unset), :certificado_senha => (String.t() | :unset), :partilha_icms_contribuinte => (boolean() | :unset), :partilha_icms_isento => (boolean() | :unset), :orientacao_danfe => (String.t() | :unset), :microcervejaria => (boolean() | :unset), :icms_ref_sp => (boolean() | :unset), :refeicoes_sp => (boolean() | :unset), :icms_ref_df => (boolean() | :unset), :exclusao_icms_pis_cofins => (boolean() | :unset), :exclusao_difal_pis_cofins => (boolean() | :unset), :deduzir_desconto_ipi => (boolean() | :unset), :base_calculo_ipi_sem_frete => (boolean() | :unset), :email_automatico_nfse => (boolean() | :unset), :ativar_epec => (String.t() | :unset), :ocultar_total_etiqueta => (String.t() | :unset), :validar_setup_completo => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_tributacao", :tipo_tributacao, {:optional, :string}}, {"regime_tributario", :regime_tributario, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"nome_fantasia", :nome_fantasia, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"unidade_empresa", :unidade_empresa, {:optional, :string}}, {"email", :email, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"conta_bancaria_banco", :conta_bancaria_banco, {:optional, :string}}, {"conta_bancaria_agencia", :conta_bancaria_agencia, {:optional, :string}}, {"conta_bancaria_numero", :conta_bancaria_numero, {:optional, :string}}, {"conta_bancaria_digito", :conta_bancaria_digito, {:optional, :string}}, {"contabilidade", :contabilidade, {:optional, Webmania.Models.Api1Fiscal.FiscalCompanyUpdateRequestContabilidade}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"logomarca", :logomarca, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"nfe_serie", :nfe_serie, {:optional, :i64}}, {"nfe_numero", :nfe_numero, {:optional, :i64}}, {"nfe_numero_dev", :nfe_numero_dev, {:optional, :i64}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"cnae_issqn", :cnae_issqn, {:optional, :string}}, {"nfce_serie", :nfce_serie, {:optional, :i64}}, {"nfce_numero", :nfce_numero, {:optional, :i64}}, {"nfce_id_csc", :nfce_id_csc, {:optional, :string}}, {"nfce_codigo_csc", :nfce_codigo_csc, {:optional, :string}}, {"nfce_numero_dev", :nfce_numero_dev, {:optional, :i64}}, {"nfce_id_csc_dev", :nfce_id_csc_dev, {:optional, :string}}, {"nfce_codigo_csc_dev", :nfce_codigo_csc_dev, {:optional, :string}}, {"cte_serie", :cte_serie, {:optional, :i64}}, {"cte_number", :cte_number, {:optional, :i64}}, {"cte_number_dev", :cte_number_dev, {:optional, :i64}}, {"cte_os_serie", :cte_os_serie, {:optional, :i64}}, {"cte_os_number", :cte_os_number, {:optional, :i64}}, {"cte_os_number_dev", :cte_os_number_dev, {:optional, :i64}}, {"taf_cte_os", :taf_cte_os, {:optional, :string}}, {"registro_estadual_cte_os", :registro_estadual_cte_os, {:optional, :string}}, {"dce_serie", :dce_serie, {:optional, :i64}}, {"dce_numero", :dce_numero, {:optional, :i64}}, {"dce_numero_dev", :dce_numero_dev, {:optional, :i64}}, {"tipo_emissor_dce", :tipo_emissor_dce, {:optional, :i64}}, {"numero_site_autorizador", :numero_site_autorizador, {:optional, :i64}}, {"site_marketplace", :site_marketplace, {:optional, :string}}, {"nfse_rps_serie", :nfse_rps_serie, {:optional, :string}}, {"nfse_rps_numero", :nfse_rps_numero, {:optional, :i64}}, {"cnae", :cnae, {:optional, Webmania.Models.Api1Fiscal.FiscalCompanyUpdateRequestCnae}}, {"nfse_login", :nfse_login, {:optional, :string}}, {"nfse_password", :nfse_password, {:optional, :string}}, {"nfse_token", :nfse_token, {:optional, :string}}, {"regime_apuracao_sn", :regime_apuracao_sn, {:optional, :string}}, {"regime_especial_nacional", :regime_especial_nacional, {:optional, :string}}, {"regime_especial_municipal", :regime_especial_municipal, {:optional, :string}}, {"nfse_lote_rps_numero", :nfse_lote_rps_numero, {:optional, :i64}}, {"nfse_rps_numero_dev", :nfse_rps_numero_dev, {:optional, :i64}}, {"certificado", :certificado, {:optional, :string}}, {"certificado_senha", :certificado_senha, {:optional, :string}}, {"partilha_icms_contribuinte", :partilha_icms_contribuinte, {:optional, :boolean}}, {"partilha_icms_isento", :partilha_icms_isento, {:optional, :boolean}}, {"orientacao_danfe", :orientacao_danfe, {:optional, :string}}, {"microcervejaria", :microcervejaria, {:optional, :boolean}}, {"icms_ref_sp", :icms_ref_sp, {:optional, :boolean}}, {"refeicoes_sp", :refeicoes_sp, {:optional, :boolean}}, {"icms_ref_df", :icms_ref_df, {:optional, :boolean}}, {"exclusao_icms_pis_cofins", :exclusao_icms_pis_cofins, {:optional, :boolean}}, {"exclusao_difal_pis_cofins", :exclusao_difal_pis_cofins, {:optional, :boolean}}, {"deduzir_desconto_ipi", :deduzir_desconto_ipi, {:optional, :boolean}}, {"base_calculo_ipi_sem_frete", :base_calculo_ipi_sem_frete, {:optional, :boolean}}, {"email_automatico_nfse", :email_automatico_nfse, {:optional, :boolean}}, {"ativar_epec", :ativar_epec, {:optional, :string}}, {"ocultar_total_etiqueta", :ocultar_total_etiqueta, {:optional, :string}}, {"validar_setup_completo", :validar_setup_completo, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::FiscalCompanyUpdateRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.FiscalCompanyUpdateRequestContabilidade do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::FiscalCompanyUpdateRequestContabilidade"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.FiscalCompanyUpdateRequestCnae do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::FiscalCompanyUpdateRequestCnae"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.FiscalCompanyUpdateResult do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:success, :unset}, {:alerts, :unset}, {:warnings, :unset}, {:bearer_access_token_status, :unset}, {:bearer_access_token_pending, :unset}, {:credenciais, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:success => String.t(), :alerts => ([String.t()] | :unset), :warnings => ([Webmania.Models.Api1Fiscal.FiscalCompanyUpdateResultWarningsItem.t()] | :unset), :bearer_access_token_status => (String.t() | :unset), :bearer_access_token_pending => (boolean() | :unset), :credenciais => (Webmania.Models.Api1Fiscal.FiscalCompanyUpdateResultCredenciais.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"success", :success, :string}, {"alerts", :alerts, {:optional, {:array, :string}}}, {"warnings", :warnings, {:optional, {:array, Webmania.Models.Api1Fiscal.FiscalCompanyUpdateResultWarningsItem}}}, {"bearer_access_token_status", :bearer_access_token_status, {:optional, :string}}, {"bearer_access_token_pending", :bearer_access_token_pending, {:optional, :boolean}}, {"credenciais", :credenciais, {:optional, Webmania.Models.Api1Fiscal.FiscalCompanyUpdateResultCredenciais}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::FiscalCompanyUpdateResult"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.FiscalCompanyUpdateResultWarningsItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:code, :unset}, {:message, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:code => (String.t() | :unset), :message => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"code", :code, {:optional, :string}}, {"message", :message, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::FiscalCompanyUpdateResultWarningsItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.FiscalCompanyUpdateResultCredenciais do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:consumer_key, :unset}, {:consumer_secret, :unset}, {:access_token, :unset}, {:access_token_secret, :unset}, {:bearer_access_token, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:consumer_key => (String.t() | :unset), :consumer_secret => (String.t() | :unset), :access_token => (String.t() | :unset), :access_token_secret => (String.t() | :unset), :bearer_access_token => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"consumer_key", :consumer_key, {:optional, :string}}, {"consumer_secret", :consumer_secret, {:optional, :string}}, {"access_token", :access_token, {:optional, :string}}, {"access_token_secret", :access_token_secret, {:optional, :string}}, {"bearer_access_token", :bearer_access_token, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::FiscalCompanyUpdateResultCredenciais"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.FiscalReportRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_inicio, :unset}, {:data_final, :unset}, {:numero_inicio, :unset}, {:numero_final, :unset}, {:modelo, :unset}, {:relatorio, :unset}, {:separar_pdf, :unset}, {:status, :unset}, {:ordem, :unset}, {:url_notificacao, :unset}, {:email, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_inicio => (String.t() | :unset), :data_final => (String.t() | :unset), :numero_inicio => (String.t() | :unset), :numero_final => (String.t() | :unset), :modelo => String.t(), :relatorio => String.t(), :separar_pdf => (integer() | :unset), :status => (String.t() | :unset), :ordem => (String.t() | :unset), :url_notificacao => (String.t() | :unset), :email => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_inicio", :data_inicio, {:optional, :string}}, {"data_final", :data_final, {:optional, :string}}, {"numero_inicio", :numero_inicio, {:optional, :string}}, {"numero_final", :numero_final, {:optional, :string}}, {"modelo", :modelo, :string}, {"relatorio", :relatorio, :string}, {"separar_pdf", :separar_pdf, {:optional, :i64}}, {"status", :status, {:optional, :string}}, {"ordem", :ordem, {:optional, :string}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"email", :email, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::FiscalReportRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.FiscalReportResult do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:status, :unset}, {:data_inicio, :unset}, {:data_final, :unset}, {:numero_inicio, :unset}, {:numero_final, :unset}, {:modelo, :unset}, {:relatorio, :unset}, {:total, :unset}, {:processado, :unset}, {:url, :unset}, {:expira, :unset}, {:reason, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :status => String.t(), :data_inicio => (String.t() | :unset), :data_final => (String.t() | :unset), :numero_inicio => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :numero_final => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :modelo => (String.t() | :unset), :relatorio => (String.t() | :unset), :total => (integer() | :unset), :processado => (integer() | :unset), :url => (String.t() | :unset), :expira => (String.t() | :unset), :reason => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"status", :status, :string}, {"data_inicio", :data_inicio, {:optional, :string}}, {"data_final", :data_final, {:optional, :string}}, {"numero_inicio", :numero_inicio, {:optional, :scalar}}, {"numero_final", :numero_final, {:optional, :scalar}}, {"modelo", :modelo, {:optional, :string}}, {"relatorio", :relatorio, {:optional, :string}}, {"total", :total, {:optional, :i64}}, {"processado", :processado, {:optional, :i64}}, {"url", :url, {:optional, :string}}, {"expira", :expira, {:optional, :string}}, {"reason", :reason, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::FiscalReportResult"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112110Details do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:indicador_quitacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:indicador_quitacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"indicador_quitacao", :indicador_quitacao, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112110Details"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112110Request do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:nSeqEvento, :unset}, {:indicador_quitacao, :unset}, {:informacoes_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cod_evento => String.t(), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :nSeqEvento => (integer() | :unset), :indicador_quitacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :informacoes_evento => (Webmania.Models.Api1Fiscal.IbsCbs112110Details.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"cod_evento", :cod_evento, :string}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nSeqEvento", :nSeqEvento, {:optional, :i64}}, {"indicador_quitacao", :indicador_quitacao, {:optional, :scalar}}, {"informacoes_evento", :informacoes_evento, {:optional, Webmania.Models.Api1Fiscal.IbsCbs112110Details}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112110Request"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112120Details do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:itens, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:itens => [Webmania.Models.Api1Fiscal.IbsCbs112120DetailsItensItem.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"itens", :itens, {:array, Webmania.Models.Api1Fiscal.IbsCbs112120DetailsItensItem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112120Details"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112120DetailsItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs112120DetailsItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs112120DetailsItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112120DetailsItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112120DetailsItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade, :unset}, {:unidade, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade", :quantidade, :scalar}, {"unidade", :unidade, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112120DetailsItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112120Request do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:nSeqEvento, :unset}, {:itens, :unset}, {:informacoes_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cod_evento => String.t(), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :nSeqEvento => (integer() | :unset), :itens => ([Webmania.Models.Api1Fiscal.IbsCbs112120RequestItensItem.t()] | :unset), :informacoes_evento => (Webmania.Models.Api1Fiscal.IbsCbs112120Details.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"cod_evento", :cod_evento, :string}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nSeqEvento", :nSeqEvento, {:optional, :i64}}, {"itens", :itens, {:optional, {:array, Webmania.Models.Api1Fiscal.IbsCbs112120RequestItensItem}}}, {"informacoes_evento", :informacoes_evento, {:optional, Webmania.Models.Api1Fiscal.IbsCbs112120Details}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112120Request"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112120RequestItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs112120RequestItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs112120RequestItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112120RequestItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112120RequestItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade, :unset}, {:unidade, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade", :quantidade, :scalar}, {"unidade", :unidade, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112120RequestItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112130Details do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:itens, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:itens => [Webmania.Models.Api1Fiscal.IbsCbs112130DetailsItensItem.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"itens", :itens, {:array, Webmania.Models.Api1Fiscal.IbsCbs112130DetailsItensItem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112130Details"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112130DetailsItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs112130DetailsItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs112130DetailsItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112130DetailsItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112130DetailsItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_perecimento, :unset}, {:unidade_perecimento, :unset}, {:valor_ibs_estorno, :unset}, {:valor_cbs_estorno, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_perecimento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_perecimento => String.t(), :valor_ibs_estorno => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs_estorno => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_perecimento", :quantidade_perecimento, :scalar}, {"unidade_perecimento", :unidade_perecimento, :string}, {"valor_ibs_estorno", :valor_ibs_estorno, :scalar}, {"valor_cbs_estorno", :valor_cbs_estorno, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112130DetailsItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112130Request do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:nSeqEvento, :unset}, {:itens, :unset}, {:informacoes_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cod_evento => String.t(), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :nSeqEvento => (integer() | :unset), :itens => ([Webmania.Models.Api1Fiscal.IbsCbs112130RequestItensItem.t()] | :unset), :informacoes_evento => (Webmania.Models.Api1Fiscal.IbsCbs112130Details.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"cod_evento", :cod_evento, :string}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nSeqEvento", :nSeqEvento, {:optional, :i64}}, {"itens", :itens, {:optional, {:array, Webmania.Models.Api1Fiscal.IbsCbs112130RequestItensItem}}}, {"informacoes_evento", :informacoes_evento, {:optional, Webmania.Models.Api1Fiscal.IbsCbs112130Details}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112130Request"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112130RequestItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs112130RequestItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs112130RequestItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112130RequestItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112130RequestItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_perecimento, :unset}, {:unidade_perecimento, :unset}, {:valor_ibs_estorno, :unset}, {:valor_cbs_estorno, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_perecimento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_perecimento => String.t(), :valor_ibs_estorno => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs_estorno => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_perecimento", :quantidade_perecimento, :scalar}, {"unidade_perecimento", :unidade_perecimento, :string}, {"valor_ibs_estorno", :valor_ibs_estorno, :scalar}, {"valor_cbs_estorno", :valor_cbs_estorno, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112130RequestItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112140Details do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:itens, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:itens => [Webmania.Models.Api1Fiscal.IbsCbs112140DetailsItensItem.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"itens", :itens, {:array, Webmania.Models.Api1Fiscal.IbsCbs112140DetailsItensItem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112140Details"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112140DetailsItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs112140DetailsItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs112140DetailsItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112140DetailsItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112140DetailsItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_nao_fornecida, :unset}, {:unidade_nao_fornecida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_nao_fornecida => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_nao_fornecida => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_nao_fornecida", :quantidade_nao_fornecida, :scalar}, {"unidade_nao_fornecida", :unidade_nao_fornecida, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112140DetailsItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112140Request do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:nSeqEvento, :unset}, {:itens, :unset}, {:informacoes_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cod_evento => String.t(), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :nSeqEvento => (integer() | :unset), :itens => ([Webmania.Models.Api1Fiscal.IbsCbs112140RequestItensItem.t()] | :unset), :informacoes_evento => (Webmania.Models.Api1Fiscal.IbsCbs112140Details.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"cod_evento", :cod_evento, :string}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nSeqEvento", :nSeqEvento, {:optional, :i64}}, {"itens", :itens, {:optional, {:array, Webmania.Models.Api1Fiscal.IbsCbs112140RequestItensItem}}}, {"informacoes_evento", :informacoes_evento, {:optional, Webmania.Models.Api1Fiscal.IbsCbs112140Details}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112140Request"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112140RequestItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs112140RequestItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs112140RequestItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112140RequestItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112140RequestItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_nao_fornecida, :unset}, {:unidade_nao_fornecida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_nao_fornecida => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_nao_fornecida => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_nao_fornecida", :quantidade_nao_fornecida, :scalar}, {"unidade_nao_fornecida", :unidade_nao_fornecida, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112140RequestItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112150Details do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_previsao_entrega, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_previsao_entrega => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_previsao_entrega", :data_previsao_entrega, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112150Details"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs112150Request do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:nSeqEvento, :unset}, {:data_previsao_entrega, :unset}, {:informacoes_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cod_evento => String.t(), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :nSeqEvento => (integer() | :unset), :data_previsao_entrega => (String.t() | :unset), :informacoes_evento => (Webmania.Models.Api1Fiscal.IbsCbs112150Details.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"cod_evento", :cod_evento, :string}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nSeqEvento", :nSeqEvento, {:optional, :i64}}, {"data_previsao_entrega", :data_previsao_entrega, {:optional, :string}}, {"informacoes_evento", :informacoes_evento, {:optional, Webmania.Models.Api1Fiscal.IbsCbs112150Details}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs112150Request"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211110Details do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:itens, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:itens => [Webmania.Models.Api1Fiscal.IbsCbs211110DetailsItensItem.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"itens", :itens, {:array, Webmania.Models.Api1Fiscal.IbsCbs211110DetailsItensItem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211110Details"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211110DetailsItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:base_calculo, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :base_calculo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :credito_presumido => Webmania.Models.Api1Fiscal.IbsCbs211110DetailsItensItemCreditoPresumido.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"base_calculo", :base_calculo, :scalar}, {"credito_presumido", :credito_presumido, Webmania.Models.Api1Fiscal.IbsCbs211110DetailsItensItemCreditoPresumido}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211110DetailsItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211110DetailsItensItemCreditoPresumido do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => String.t(), :aliquota_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :aliquota_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, :string}, {"aliquota_ibs", :aliquota_ibs, :scalar}, {"aliquota_cbs", :aliquota_cbs, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211110DetailsItensItemCreditoPresumido"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211110Request do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:nSeqEvento, :unset}, {:itens, :unset}, {:informacoes_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cod_evento => String.t(), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :nSeqEvento => (integer() | :unset), :itens => ([Webmania.Models.Api1Fiscal.IbsCbs211110RequestItensItem.t()] | :unset), :informacoes_evento => (Webmania.Models.Api1Fiscal.IbsCbs211110Details.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"cod_evento", :cod_evento, :string}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nSeqEvento", :nSeqEvento, {:optional, :i64}}, {"itens", :itens, {:optional, {:array, Webmania.Models.Api1Fiscal.IbsCbs211110RequestItensItem}}}, {"informacoes_evento", :informacoes_evento, {:optional, Webmania.Models.Api1Fiscal.IbsCbs211110Details}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211110Request"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211110RequestItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:base_calculo, :unset}, {:credito_presumido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :base_calculo => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :credito_presumido => Webmania.Models.Api1Fiscal.IbsCbs211110RequestItensItemCreditoPresumido.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"base_calculo", :base_calculo, :scalar}, {"credito_presumido", :credito_presumido, Webmania.Models.Api1Fiscal.IbsCbs211110RequestItensItemCreditoPresumido}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211110RequestItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211110RequestItensItemCreditoPresumido do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => String.t(), :aliquota_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :aliquota_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, :string}, {"aliquota_ibs", :aliquota_ibs, :scalar}, {"aliquota_cbs", :aliquota_cbs, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211110RequestItensItemCreditoPresumido"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211124Details do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:itens, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:itens => [Webmania.Models.Api1Fiscal.IbsCbs211124DetailsItensItem.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"itens", :itens, {:array, Webmania.Models.Api1Fiscal.IbsCbs211124DetailsItensItem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211124Details"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211124DetailsItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs211124DetailsItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs211124DetailsItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211124DetailsItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211124DetailsItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_perecimento, :unset}, {:unidade_perecimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_perecimento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_perecimento => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_perecimento", :quantidade_perecimento, :scalar}, {"unidade_perecimento", :unidade_perecimento, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211124DetailsItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211124Request do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:nSeqEvento, :unset}, {:itens, :unset}, {:informacoes_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cod_evento => String.t(), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :nSeqEvento => (integer() | :unset), :itens => ([Webmania.Models.Api1Fiscal.IbsCbs211124RequestItensItem.t()] | :unset), :informacoes_evento => (Webmania.Models.Api1Fiscal.IbsCbs211124Details.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"cod_evento", :cod_evento, :string}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nSeqEvento", :nSeqEvento, {:optional, :i64}}, {"itens", :itens, {:optional, {:array, Webmania.Models.Api1Fiscal.IbsCbs211124RequestItensItem}}}, {"informacoes_evento", :informacoes_evento, {:optional, Webmania.Models.Api1Fiscal.IbsCbs211124Details}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211124Request"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211124RequestItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs211124RequestItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs211124RequestItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211124RequestItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211124RequestItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_perecimento, :unset}, {:unidade_perecimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_perecimento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_perecimento => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_perecimento", :quantidade_perecimento, :scalar}, {"unidade_perecimento", :unidade_perecimento, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211124RequestItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211128Details do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:indicador_aceitacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:indicador_aceitacao => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"indicador_aceitacao", :indicador_aceitacao, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211128Details"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211128Request do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:nSeqEvento, :unset}, {:indicador_aceitacao, :unset}, {:informacoes_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cod_evento => String.t(), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :nSeqEvento => (integer() | :unset), :indicador_aceitacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :informacoes_evento => (Webmania.Models.Api1Fiscal.IbsCbs211128Details.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"cod_evento", :cod_evento, :string}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nSeqEvento", :nSeqEvento, {:optional, :i64}}, {"indicador_aceitacao", :indicador_aceitacao, {:optional, :scalar}}, {"informacoes_evento", :informacoes_evento, {:optional, Webmania.Models.Api1Fiscal.IbsCbs211128Details}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211128Request"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211130Details do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:itens, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:itens => [Webmania.Models.Api1Fiscal.IbsCbs211130DetailsItensItem.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"itens", :itens, {:array, Webmania.Models.Api1Fiscal.IbsCbs211130DetailsItensItem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211130Details"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211130DetailsItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs211130DetailsItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs211130DetailsItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211130DetailsItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211130DetailsItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_imobilizada, :unset}, {:unidade_imobilizada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_imobilizada => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_imobilizada => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_imobilizada", :quantidade_imobilizada, :scalar}, {"unidade_imobilizada", :unidade_imobilizada, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211130DetailsItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211130Request do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:nSeqEvento, :unset}, {:itens, :unset}, {:informacoes_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cod_evento => String.t(), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :nSeqEvento => (integer() | :unset), :itens => ([Webmania.Models.Api1Fiscal.IbsCbs211130RequestItensItem.t()] | :unset), :informacoes_evento => (Webmania.Models.Api1Fiscal.IbsCbs211130Details.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"cod_evento", :cod_evento, :string}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nSeqEvento", :nSeqEvento, {:optional, :i64}}, {"itens", :itens, {:optional, {:array, Webmania.Models.Api1Fiscal.IbsCbs211130RequestItensItem}}}, {"informacoes_evento", :informacoes_evento, {:optional, Webmania.Models.Api1Fiscal.IbsCbs211130Details}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211130Request"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211130RequestItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs211130RequestItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs211130RequestItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211130RequestItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211130RequestItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_imobilizada, :unset}, {:unidade_imobilizada, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_imobilizada => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_imobilizada => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_imobilizada", :quantidade_imobilizada, :scalar}, {"unidade_imobilizada", :unidade_imobilizada, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211130RequestItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211140Details do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:itens, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:itens => [Webmania.Models.Api1Fiscal.IbsCbs211140DetailsItensItem.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"itens", :itens, {:array, Webmania.Models.Api1Fiscal.IbsCbs211140DetailsItensItem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211140Details"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211140DetailsItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs211140DetailsItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs211140DetailsItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211140DetailsItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211140DetailsItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_combustivel, :unset}, {:unidade_combustivel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_combustivel => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_combustivel => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_combustivel", :quantidade_combustivel, :scalar}, {"unidade_combustivel", :unidade_combustivel, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211140DetailsItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211140Request do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:nSeqEvento, :unset}, {:itens, :unset}, {:informacoes_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cod_evento => String.t(), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :nSeqEvento => (integer() | :unset), :itens => ([Webmania.Models.Api1Fiscal.IbsCbs211140RequestItensItem.t()] | :unset), :informacoes_evento => (Webmania.Models.Api1Fiscal.IbsCbs211140Details.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"cod_evento", :cod_evento, :string}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nSeqEvento", :nSeqEvento, {:optional, :i64}}, {"itens", :itens, {:optional, {:array, Webmania.Models.Api1Fiscal.IbsCbs211140RequestItensItem}}}, {"informacoes_evento", :informacoes_evento, {:optional, Webmania.Models.Api1Fiscal.IbsCbs211140Details}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211140Request"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211140RequestItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:controle_estoque, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :controle_estoque => Webmania.Models.Api1Fiscal.IbsCbs211140RequestItensItemControleEstoque.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_ibs", :valor_ibs, :scalar}, {"valor_cbs", :valor_cbs, :scalar}, {"controle_estoque", :controle_estoque, Webmania.Models.Api1Fiscal.IbsCbs211140RequestItensItemControleEstoque}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211140RequestItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211140RequestItensItemControleEstoque do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_combustivel, :unset}, {:unidade_combustivel, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_combustivel => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :unidade_combustivel => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_combustivel", :quantidade_combustivel, :scalar}, {"unidade_combustivel", :unidade_combustivel, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211140RequestItensItemControleEstoque"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211150Details do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:itens, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:itens => [Webmania.Models.Api1Fiscal.IbsCbs211150DetailsItensItem.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"itens", :itens, {:array, Webmania.Models.Api1Fiscal.IbsCbs211150DetailsItensItem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211150Details"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211150DetailsItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_credito_ibs, :unset}, {:valor_credito_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_credito_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_credito_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_credito_ibs", :valor_credito_ibs, :scalar}, {"valor_credito_cbs", :valor_credito_cbs, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211150DetailsItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211150Request do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:ambiente, :unset}, {:cod_evento, :unset}, {:evento, :unset}, {:url_notificacao, :unset}, {:nSeqEvento, :unset}, {:itens, :unset}, {:informacoes_evento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => String.t(), :ambiente => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :cod_evento => String.t(), :evento => (integer() | :unset), :url_notificacao => (String.t() | :unset), :nSeqEvento => (integer() | :unset), :itens => ([Webmania.Models.Api1Fiscal.IbsCbs211150RequestItensItem.t()] | :unset), :informacoes_evento => (Webmania.Models.Api1Fiscal.IbsCbs211150Details.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, :string}, {"ambiente", :ambiente, :scalar}, {"cod_evento", :cod_evento, :string}, {"evento", :evento, {:optional, :i64}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"nSeqEvento", :nSeqEvento, {:optional, :i64}}, {"itens", :itens, {:optional, {:array, Webmania.Models.Api1Fiscal.IbsCbs211150RequestItensItem}}}, {"informacoes_evento", :informacoes_evento, {:optional, Webmania.Models.Api1Fiscal.IbsCbs211150Details}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211150Request"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.IbsCbs211150RequestItensItem do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:item, :unset}, {:valor_credito_ibs, :unset}, {:valor_credito_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:item => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_credito_ibs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :valor_credito_cbs => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"item", :item, :scalar}, {"valor_credito_ibs", :valor_credito_ibs, :scalar}, {"valor_credito_cbs", :valor_credito_cbs, :scalar}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::IbsCbs211150RequestItensItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeIbsCbsEventRequest do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :IbsCbs112110Request, value: Webmania.Models.Api1Fiscal.IbsCbs112110Request.t()} | %__MODULE__{variant: :IbsCbs112120Request, value: Webmania.Models.Api1Fiscal.IbsCbs112120Request.t()} | %__MODULE__{variant: :IbsCbs112130Request, value: Webmania.Models.Api1Fiscal.IbsCbs112130Request.t()} | %__MODULE__{variant: :IbsCbs112140Request, value: Webmania.Models.Api1Fiscal.IbsCbs112140Request.t()} | %__MODULE__{variant: :IbsCbs112150Request, value: Webmania.Models.Api1Fiscal.IbsCbs112150Request.t()} | %__MODULE__{variant: :IbsCbs211110Request, value: Webmania.Models.Api1Fiscal.IbsCbs211110Request.t()} | %__MODULE__{variant: :IbsCbs211124Request, value: Webmania.Models.Api1Fiscal.IbsCbs211124Request.t()} | %__MODULE__{variant: :IbsCbs211128Request, value: Webmania.Models.Api1Fiscal.IbsCbs211128Request.t()} | %__MODULE__{variant: :IbsCbs211130Request, value: Webmania.Models.Api1Fiscal.IbsCbs211130Request.t()} | %__MODULE__{variant: :IbsCbs211140Request, value: Webmania.Models.Api1Fiscal.IbsCbs211140Request.t()} | %__MODULE__{variant: :IbsCbs211150Request, value: Webmania.Models.Api1Fiscal.IbsCbs211150Request.t()}
  @doc false
  def __variants__, do: [{:IbsCbs112110Request, Webmania.Models.Api1Fiscal.IbsCbs112110Request}, {:IbsCbs112120Request, Webmania.Models.Api1Fiscal.IbsCbs112120Request}, {:IbsCbs112130Request, Webmania.Models.Api1Fiscal.IbsCbs112130Request}, {:IbsCbs112140Request, Webmania.Models.Api1Fiscal.IbsCbs112140Request}, {:IbsCbs112150Request, Webmania.Models.Api1Fiscal.IbsCbs112150Request}, {:IbsCbs211110Request, Webmania.Models.Api1Fiscal.IbsCbs211110Request}, {:IbsCbs211124Request, Webmania.Models.Api1Fiscal.IbsCbs211124Request}, {:IbsCbs211128Request, Webmania.Models.Api1Fiscal.IbsCbs211128Request}, {:IbsCbs211130Request, Webmania.Models.Api1Fiscal.IbsCbs211130Request}, {:IbsCbs211140Request, Webmania.Models.Api1Fiscal.IbsCbs211140Request}, {:IbsCbs211150Request, Webmania.Models.Api1Fiscal.IbsCbs211150Request}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeIbsCbsEventRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfePreviewResult do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:danfe, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:danfe => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"danfe", :danfe, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfePreviewResult"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeTaxCalculationResult do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:impostos, :unset}, {:aliquotas, :unset}, {:pedido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:impostos => Webmania.Models.Api1Fiscal.NfeTaxCalculationResultImpostos.t(), :aliquotas => Webmania.Models.Api1Fiscal.NfeTaxCalculationResultAliquotas.t(), :pedido => Webmania.Models.Api1Fiscal.NfeTaxCalculationResultPedido.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"impostos", :impostos, Webmania.Models.Api1Fiscal.NfeTaxCalculationResultImpostos}, {"aliquotas", :aliquotas, Webmania.Models.Api1Fiscal.NfeTaxCalculationResultAliquotas}, {"pedido", :pedido, Webmania.Models.Api1Fiscal.NfeTaxCalculationResultPedido}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeTaxCalculationResult"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeTaxCalculationResultImpostos do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ipi, :unset}, {:icms, :unset}, {:icms_st, :unset}, {:pis, :unset}, {:cofins, :unset}, {:fcp_st, :unset}, {:fcp_dest, :unset}, {:fcp_dest_base, :unset}, {:issqn, :unset}, {:total_tributacao, :unset}, {:icms_desoneracao, :unset}, {:importacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ipi => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :icms => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :icms_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :pis => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cofins => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :fcp_st => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :fcp_dest => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :fcp_dest_base => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :issqn => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :total_tributacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :icms_desoneracao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :importacao => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ipi", :ipi, {:optional, :scalar}}, {"icms", :icms, {:optional, :scalar}}, {"icms_st", :icms_st, {:optional, :scalar}}, {"pis", :pis, {:optional, :scalar}}, {"cofins", :cofins, {:optional, :scalar}}, {"fcp_st", :fcp_st, {:optional, :scalar}}, {"fcp_dest", :fcp_dest, {:optional, :scalar}}, {"fcp_dest_base", :fcp_dest_base, {:optional, :scalar}}, {"issqn", :issqn, {:optional, :scalar}}, {"total_tributacao", :total_tributacao, {:optional, :scalar}}, {"icms_desoneracao", :icms_desoneracao, {:optional, :scalar}}, {"importacao", :importacao, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeTaxCalculationResultImpostos"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeTaxCalculationResultAliquotas do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:icms, :unset}, {:icms_diferimento, :unset}, {:icms_st, :unset}, {:pis, :unset}, {:cofins, :unset}, {:ipi, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:icms => ([nil | boolean() | String.t() | integer() | Webmania.Number.t()] | :unset), :icms_diferimento => ([nil | boolean() | String.t() | integer() | Webmania.Number.t()] | :unset), :icms_st => ([nil | boolean() | String.t() | integer() | Webmania.Number.t()] | :unset), :pis => ([nil | boolean() | String.t() | integer() | Webmania.Number.t()] | :unset), :cofins => ([nil | boolean() | String.t() | integer() | Webmania.Number.t()] | :unset), :ipi => ([nil | boolean() | String.t() | integer() | Webmania.Number.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"icms", :icms, {:optional, {:array, :scalar}}}, {"icms_diferimento", :icms_diferimento, {:optional, {:array, :scalar}}}, {"icms_st", :icms_st, {:optional, {:array, :scalar}}}, {"pis", :pis, {:optional, {:array, :scalar}}}, {"cofins", :cofins, {:optional, {:array, :scalar}}}, {"ipi", :ipi, {:optional, {:array, :scalar}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeTaxCalculationResultAliquotas"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeTaxCalculationResultPedido do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:produtos, :unset}, {:frete, :unset}, {:desconto, :unset}, {:despesas_acessorias, :unset}, {:seguro, :unset}, {:total, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:produtos => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :frete => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :desconto => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :despesas_acessorias => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :seguro => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"produtos", :produtos, {:optional, :scalar}}, {"frete", :frete, {:optional, :scalar}}, {"desconto", :desconto, {:optional, :scalar}}, {"despesas_acessorias", :despesas_acessorias, {:optional, :scalar}}, {"seguro", :seguro, {:optional, :scalar}}, {"total", :total, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeTaxCalculationResultPedido"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeIssueResult do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :NfeDocument, value: Webmania.Models.Api1Fiscal.NfeDocument.t()} | %__MODULE__{variant: :NfePreviewResult, value: Webmania.Models.Api1Fiscal.NfePreviewResult.t()} | %__MODULE__{variant: :NfeTaxCalculationResult, value: Webmania.Models.Api1Fiscal.NfeTaxCalculationResult.t()}
  @doc false
  def __variants__, do: [{:NfeDocument, Webmania.Models.Api1Fiscal.NfeDocument}, {:NfePreviewResult, Webmania.Models.Api1Fiscal.NfePreviewResult}, {:NfeTaxCalculationResult, Webmania.Models.Api1Fiscal.NfeTaxCalculationResult}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeIssueResult"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeNotification do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:status, :unset}, {:motivo, :unset}, {:nfe, :unset}, {:serie, :unset}, {:recibo, :unset}, {:chave, :unset}, {:modelo, :unset}, {:epec, :unset}, {:xml, :unset}, {:xml_cancelamento, :unset}, {:danfe, :unset}, {:danfe_simples, :unset}, {:danfe_etiqueta, :unset}, {:log, :unset}, {:log_cancelamento, :unset}, {:data, :unset}, {:evento, :unset}, {:dacce, :unset}, {:protocolo_evento, :unset}, {:url_notificacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :status => String.t(), :motivo => (String.t() | :unset), :nfe => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :recibo => (String.t() | :unset), :chave => (String.t() | :unset), :modelo => (String.t() | :unset), :epec => (boolean() | :unset), :xml => (String.t() | :unset), :xml_cancelamento => (String.t() | :unset), :danfe => (String.t() | :unset), :danfe_simples => (String.t() | :unset), :danfe_etiqueta => (String.t() | :unset), :log => (Webmania.Models.Api1Fiscal.NfeNotificationLog.t() | :unset), :log_cancelamento => (Webmania.Models.Api1Fiscal.NfeNotificationLogCancelamento.t() | :unset), :data => (Webmania.Models.Api1Fiscal.NfeIssueRequest.t() | :unset), :evento => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :dacce => (String.t() | :unset), :protocolo_evento => (String.t() | :unset), :url_notificacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"status", :status, :string}, {"motivo", :motivo, {:optional, :string}}, {"nfe", :nfe, {:optional, :scalar}}, {"serie", :serie, {:optional, :scalar}}, {"recibo", :recibo, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"epec", :epec, {:optional, :boolean}}, {"xml", :xml, {:optional, :string}}, {"xml_cancelamento", :xml_cancelamento, {:optional, :string}}, {"danfe", :danfe, {:optional, :string}}, {"danfe_simples", :danfe_simples, {:optional, :string}}, {"danfe_etiqueta", :danfe_etiqueta, {:optional, :string}}, {"log", :log, {:optional, Webmania.Models.Api1Fiscal.NfeNotificationLog}}, {"log_cancelamento", :log_cancelamento, {:optional, Webmania.Models.Api1Fiscal.NfeNotificationLogCancelamento}}, {"data", :data, {:optional, Webmania.Models.Api1Fiscal.NfeIssueRequest}}, {"evento", :evento, {:optional, :scalar}}, {"dacce", :dacce, {:optional, :string}}, {"protocolo_evento", :protocolo_evento, {:optional, :string}}, {"url_notificacao", :url_notificacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeNotification"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeNotificationLog do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :SefazLog, value: Webmania.Models.Api1Fiscal.SefazLog.t()} | %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.SefazLog.t()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:SefazLog, Webmania.Models.Api1Fiscal.SefazLog}, {:Text, :string}, {:List, {:array, Webmania.Models.Api1Fiscal.SefazLog}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeNotificationLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeNotificationLogCancelamento do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :SefazLog, value: Webmania.Models.Api1Fiscal.SefazLog.t()} | %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.SefazLog.t()]} | %__MODULE__{variant: :Null, value: nil}
  @doc false
  def __variants__, do: [{:SefazLog, Webmania.Models.Api1Fiscal.SefazLog}, {:Text, :string}, {:List, {:array, Webmania.Models.Api1Fiscal.SefazLog}}, {:Null, :null}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeNotificationLogCancelamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeGetDocumentResponse do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :NfeDocument, value: Webmania.Models.Api1Fiscal.NfeDocument.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.NfeDocument.t()]}
  @doc false
  def __variants__, do: [{:NfeDocument, Webmania.Models.Api1Fiscal.NfeDocument}, {:List, {:array, Webmania.Models.Api1Fiscal.NfeDocument}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeGetDocumentResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeGetDocumentQuery do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:uuid, :unset}, {:ID, :unset}, {:id, :unset}, {:ambiente, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :uuid => (String.t() | :unset), :ID => (String.t() | :unset), :id => (String.t() | :unset), :ambiente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}, {"uuid", :uuid, {:optional, :string}}, {"ID", :ID, {:optional, :string}}, {"id", :id, {:optional, :string}}, {"ambiente", :ambiente, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeGetDocumentQuery"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeQueryDocumentResponse do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :NfeDocument, value: Webmania.Models.Api1Fiscal.NfeDocument.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.NfeDocument.t()]}
  @doc false
  def __variants__, do: [{:NfeDocument, Webmania.Models.Api1Fiscal.NfeDocument}, {:List, {:array, Webmania.Models.Api1Fiscal.NfeDocument}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeQueryDocumentResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1Fiscal.NfeListTaxClassesResponse do
  @moduledoc "Nominal model from the pinned api1_fiscal contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :List, value: [Webmania.Models.Api1Fiscal.TaxClassListItem.t()]} | %__MODULE__{variant: :TaxClassNoResults, value: Webmania.Models.Api1Fiscal.TaxClassNoResults.t()}
  @doc false
  def __variants__, do: [{:List, {:array, Webmania.Models.Api1Fiscal.TaxClassListItem}}, {:TaxClassNoResults, Webmania.Models.Api1Fiscal.TaxClassNoResults}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api1_fiscal::NfeListTaxClassesResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
