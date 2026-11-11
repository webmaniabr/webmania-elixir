# Generated. Run scripts/generate.py in the pinned Docker toolchain.
defmodule Webmania.Models.Api1B2b.B2bError do
  @moduledoc "Nominal model from the pinned api1_b2b contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:success, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => (Webmania.JSON.value() | :unset), :message => (String.t() | :unset), :success => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, {:optional, :value}}, {"message", :message, {:optional, :string}}, {"success", :success, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_b2b::B2bError"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1B2b.ResellerCreateCompaniesRequest do
  @moduledoc "Nominal model from the pinned api1_b2b contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade", :quantidade, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_b2b::ResellerCreateCompaniesRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1B2b.ResellerCompanyCredentials do
  @moduledoc "Nominal model from the pinned api1_b2b contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:consumer_key, :unset}, {:consumer_secret, :unset}, {:access_token, :unset}, {:access_token_secret, :unset}, {:bearer_access_token, :unset}, {:bearer_access_token_status, :unset}, {:bearer_access_token_pending, :unset}, {:direct_link_login, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:consumer_key => String.t(), :consumer_secret => String.t(), :access_token => String.t(), :access_token_secret => String.t(), :bearer_access_token => String.t(), :bearer_access_token_status => (String.t() | :unset), :bearer_access_token_pending => (boolean() | :unset), :direct_link_login => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"consumer_key", :consumer_key, :string}, {"consumer_secret", :consumer_secret, :string}, {"access_token", :access_token, :string}, {"access_token_secret", :access_token_secret, :string}, {"bearer_access_token", :bearer_access_token, :string}, {"bearer_access_token_status", :bearer_access_token_status, {:optional, :string}}, {"bearer_access_token_pending", :bearer_access_token_pending, {:optional, :boolean}}, {"direct_link_login", :direct_link_login, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_b2b::ResellerCompanyCredentials"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1B2b.ResellerCreatedCompany do
  @moduledoc "Nominal model from the pinned api1_b2b contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:consumer_key, :unset}, {:consumer_secret, :unset}, {:access_token, :unset}, {:access_token_secret, :unset}, {:bearer_access_token, :unset}, {:bearer_access_token_status, :unset}, {:bearer_access_token_pending, :unset}, {:direct_link_login, :unset}, {:id, :unset}, {:bearer_access_token_recovery_queued, :unset}, {:bearer_access_token_recovery_queue_status, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:consumer_key => String.t(), :consumer_secret => String.t(), :access_token => String.t(), :access_token_secret => String.t(), :bearer_access_token => String.t(), :bearer_access_token_status => (String.t() | :unset), :bearer_access_token_pending => (boolean() | :unset), :direct_link_login => (String.t() | :unset), :id => integer(), :bearer_access_token_recovery_queued => ((boolean() | nil) | :unset), :bearer_access_token_recovery_queue_status => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"consumer_key", :consumer_key, :string}, {"consumer_secret", :consumer_secret, :string}, {"access_token", :access_token, :string}, {"access_token_secret", :access_token_secret, :string}, {"bearer_access_token", :bearer_access_token, :string}, {"bearer_access_token_status", :bearer_access_token_status, {:optional, :string}}, {"bearer_access_token_pending", :bearer_access_token_pending, {:optional, :boolean}}, {"direct_link_login", :direct_link_login, {:optional, :string}}, {"id", :id, :i64}, {"bearer_access_token_recovery_queued", :bearer_access_token_recovery_queued, {:optional, {:nullable, :boolean}}}, {"bearer_access_token_recovery_queue_status", :bearer_access_token_recovery_queue_status, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_b2b::ResellerCreatedCompany"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1B2b.ResellerCompany do
  @moduledoc "Nominal model from the pinned api1_b2b contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:razao_social, :unset}, {:nome_completo, :unset}, {:cidade, :unset}, {:estado, :unset}, {:ie, :unset}, {:id, :unset}, {:unidade_empresa, :unset}, {:tipo_tributacao, :unset}, {:credenciais, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => ((String.t() | nil) | :unset), :cpf => ((String.t() | nil) | :unset), :razao_social => ((String.t() | nil) | :unset), :nome_completo => ((String.t() | nil) | :unset), :cidade => ((String.t() | nil) | :unset), :estado => ((String.t() | nil) | :unset), :ie => ((String.t() | nil) | :unset), :id => integer(), :unidade_empresa => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tipo_tributacao => ((String.t() | nil) | :unset), :credenciais => Webmania.Models.Api1B2b.ResellerCompanyCredentials.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, {:nullable, :string}}}, {"cpf", :cpf, {:optional, {:nullable, :string}}}, {"razao_social", :razao_social, {:optional, {:nullable, :string}}}, {"nome_completo", :nome_completo, {:optional, {:nullable, :string}}}, {"cidade", :cidade, {:optional, {:nullable, :string}}}, {"estado", :estado, {:optional, {:nullable, :string}}}, {"ie", :ie, {:optional, {:nullable, :string}}}, {"id", :id, :i64}, {"unidade_empresa", :unidade_empresa, {:optional, :scalar}}, {"tipo_tributacao", :tipo_tributacao, {:optional, {:nullable, :string}}}, {"credenciais", :credenciais, Webmania.Models.Api1B2b.ResellerCompanyCredentials}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_b2b::ResellerCompany"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1B2b.ResellerCompanyProcessedRequests do
  @moduledoc "Nominal model from the pinned api1_b2b contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:razao_social, :unset}, {:nome_completo, :unset}, {:cidade, :unset}, {:estado, :unset}, {:ie, :unset}, {:id, :unset}, {:notas_processadas, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => ((String.t() | nil) | :unset), :cpf => ((String.t() | nil) | :unset), :razao_social => ((String.t() | nil) | :unset), :nome_completo => ((String.t() | nil) | :unset), :cidade => ((String.t() | nil) | :unset), :estado => ((String.t() | nil) | :unset), :ie => ((String.t() | nil) | :unset), :id => (integer() | :unset), :notas_processadas => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, {:nullable, :string}}}, {"cpf", :cpf, {:optional, {:nullable, :string}}}, {"razao_social", :razao_social, {:optional, {:nullable, :string}}}, {"nome_completo", :nome_completo, {:optional, {:nullable, :string}}}, {"cidade", :cidade, {:optional, {:nullable, :string}}}, {"estado", :estado, {:optional, {:nullable, :string}}}, {"ie", :ie, {:optional, {:nullable, :string}}}, {"id", :id, {:optional, :i64}}, {"notas_processadas", :notas_processadas, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_b2b::ResellerCompanyProcessedRequests"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1B2b.ResellerProcessedRequests do
  @moduledoc "Nominal model from the pinned api1_b2b contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:total_notas_processadas, :unset}, {:empresas, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:total_notas_processadas => integer(), :empresas => [Webmania.Models.Api1B2b.ResellerCompanyProcessedRequests.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"total_notas_processadas", :total_notas_processadas, :i64}, {"empresas", :empresas, {:array, Webmania.Models.Api1B2b.ResellerCompanyProcessedRequests}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_b2b::ResellerProcessedRequests"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1B2b.B2bFunctionalError do
  @moduledoc "Nominal model from the pinned api1_b2b contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:success, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => Webmania.JSON.value(), :message => (String.t() | :unset), :success => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, :value}, {"message", :message, {:optional, :string}}, {"success", :success, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_b2b::B2bFunctionalError"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api1B2b.B2bV1GetProcessedRequestsQuery do
  @moduledoc "Nominal model from the pinned api1_b2b contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:mes, :unset}, {:ano, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:mes => (String.t() | :unset), :ano => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"mes", :mes, {:optional, :string}}, {"ano", :ano, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api1_b2b::B2bV1GetProcessedRequestsQuery"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
