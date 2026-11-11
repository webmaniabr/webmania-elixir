# Generated. Run scripts/generate.py in the pinned Docker toolchain.
defmodule Webmania.Models.Api2MonitorManagement.MonitorError do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:msg, :unset}, {:success, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => (String.t() | :unset), :message => (String.t() | :unset), :msg => (String.t() | :unset), :success => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, {:optional, :string}}, {"message", :message, {:optional, :string}}, {"msg", :msg, {:optional, :string}}, {"success", :success, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorError"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorPagination do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:current_page, :unset}, {:last_page, :unset}, {:per_page, :unset}, {:total, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:current_page => integer(), :last_page => integer(), :per_page => integer(), :total => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"current_page", :current_page, :i64}, {"last_page", :last_page, :i64}, {"per_page", :per_page, :i64}, {"total", :total, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorPagination"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorAddress do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:municipio, :unset}, {:estado, :unset}, {:codigo_municipio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :municipio => (String.t() | :unset), :estado => (String.t() | :unset), :codigo_municipio => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"municipio", :municipio, {:optional, :string}}, {"estado", :estado, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorAddress"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorCompany do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:status, :unset}, {:cpf, :unset}, {:cnpj, :unset}, {:nome_completo, :unset}, {:razao_social, :unset}, {:im, :unset}, {:endereco, :unset}, {:modelos_download, :unset}, {:categorias_download, :unset}, {:ambiente_download, :unset}, {:certificado_vencimento, :unset}, {:url_notificacao, :unset}, {:dfe_retroativas, :unset}, {:dfe_retroativas_total, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :status => (integer() | :unset), :cpf => (String.t() | :unset), :cnpj => (String.t() | :unset), :nome_completo => (String.t() | :unset), :razao_social => (String.t() | :unset), :im => (String.t() | :unset), :endereco => (Webmania.Models.Api2MonitorManagement.MonitorAddress.t() | :unset), :modelos_download => ([String.t()] | :unset), :categorias_download => (integer() | :unset), :ambiente_download => (integer() | :unset), :certificado_vencimento => (String.t() | :unset), :url_notificacao => (String.t() | :unset), :dfe_retroativas => (boolean() | :unset), :dfe_retroativas_total => (integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"status", :status, {:optional, :i64}}, {"cpf", :cpf, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"endereco", :endereco, {:optional, Webmania.Models.Api2MonitorManagement.MonitorAddress}}, {"modelos_download", :modelos_download, {:optional, {:array, :string}}}, {"categorias_download", :categorias_download, {:optional, :i64}}, {"ambiente_download", :ambiente_download, {:optional, :i64}}, {"certificado_vencimento", :certificado_vencimento, {:optional, :string}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"dfe_retroativas", :dfe_retroativas, {:optional, :boolean}}, {"dfe_retroativas_total", :dfe_retroativas_total, {:optional, :i64}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorCompany"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorMunicipalityRegistration do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:tipo_download, :unset}, {:municipio, :unset}, {:uf, :unset}, {:codigo_ibge, :unset}, {:login, :unset}, {:im, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :tipo_download => integer(), :municipio => String.t(), :uf => String.t(), :codigo_ibge => String.t(), :login => (String.t() | :unset), :im => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"tipo_download", :tipo_download, :i64}, {"municipio", :municipio, :string}, {"uf", :uf, :string}, {"codigo_ibge", :codigo_ibge, :string}, {"login", :login, {:optional, :string}}, {"im", :im, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorMunicipalityRegistration"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorAvailableMunicipality do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:municipio, :unset}, {:uf, :unset}, {:codigo_ibge, :unset}, {:nativo, :unset}, {:im, :unset}, {:certificado, :unset}, {:login_senha, :unset}, {:cadastro_prefeitura, :unset}, {:domicilio_fiscal_municipio, :unset}, {:multiplos_servicos, :unset}, {:download_emitidas, :unset}, {:download_recebidas, :unset}, {:guia_cadastro_prefeitura, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:municipio => (String.t() | :unset), :uf => (String.t() | :unset), :codigo_ibge => (String.t() | :unset), :nativo => boolean(), :im => boolean(), :certificado => boolean(), :login_senha => boolean(), :cadastro_prefeitura => boolean(), :domicilio_fiscal_municipio => boolean(), :multiplos_servicos => boolean(), :download_emitidas => (boolean() | :unset), :download_recebidas => (boolean() | :unset), :guia_cadastro_prefeitura => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"municipio", :municipio, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"codigo_ibge", :codigo_ibge, {:optional, :string}}, {"nativo", :nativo, :boolean}, {"im", :im, :boolean}, {"certificado", :certificado, :boolean}, {"login_senha", :login_senha, :boolean}, {"cadastro_prefeitura", :cadastro_prefeitura, :boolean}, {"domicilio_fiscal_municipio", :domicilio_fiscal_municipio, :boolean}, {"multiplos_servicos", :multiplos_servicos, :boolean}, {"download_emitidas", :download_emitidas, {:optional, :boolean}}, {"download_recebidas", :download_recebidas, {:optional, :boolean}}, {"guia_cadastro_prefeitura", :guia_cadastro_prefeitura, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorAvailableMunicipality"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDownloadStatistics do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:total_downloads, :unset}, {:empresas, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:total_downloads => integer(), :empresas => [Webmania.Models.Api2MonitorManagement.MonitorDownloadStatisticsEmpresasItem.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"total_downloads", :total_downloads, :i64}, {"empresas", :empresas, {:array, Webmania.Models.Api2MonitorManagement.MonitorDownloadStatisticsEmpresasItem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDownloadStatistics"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDownloadStatisticsEmpresasItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:empresa_uuid, :unset}, {:total_downloads, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:empresa_uuid => String.t(), :total_downloads => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"empresa_uuid", :empresa_uuid, :string}, {"total_downloads", :total_downloads, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDownloadStatisticsEmpresasItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorCompanyPage do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data, :unset}, {:meta, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data => [Webmania.Models.Api2MonitorManagement.MonitorCompany.t()], :meta => Webmania.Models.Api2MonitorManagement.MonitorPagination.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data", :data, {:array, Webmania.Models.Api2MonitorManagement.MonitorCompany}}, {"meta", :meta, Webmania.Models.Api2MonitorManagement.MonitorPagination}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorCompanyPage"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorMunicipalityPage do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data, :unset}, {:meta, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data => [Webmania.Models.Api2MonitorManagement.MonitorMunicipalityRegistration.t()], :meta => Webmania.Models.Api2MonitorManagement.MonitorPagination.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data", :data, {:array, Webmania.Models.Api2MonitorManagement.MonitorMunicipalityRegistration}}, {"meta", :meta, Webmania.Models.Api2MonitorManagement.MonitorPagination}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorMunicipalityPage"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorAvailableMunicipalities do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data => [Webmania.Models.Api2MonitorManagement.MonitorAvailableMunicipality.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data", :data, {:array, Webmania.Models.Api2MonitorManagement.MonitorAvailableMunicipality}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorAvailableMunicipalities"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorPerson do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:razao_social, :unset}, {:nome_completo, :unset}, {:ie, :unset}, {:im, :unset}, {:endereco, :unset}, {:numero, :unset}, {:complemento, :unset}, {:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:uf, :unset}, {:telefone, :unset}, {:email, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :razao_social => (String.t() | :unset), :nome_completo => (String.t() | :unset), :ie => (String.t() | :unset), :im => (String.t() | :unset), :endereco => (String.t() | :unset), :numero => (String.t() | :unset), :complemento => (String.t() | :unset), :bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :uf => (String.t() | :unset), :telefone => (String.t() | :unset), :email => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"email", :email, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorPerson"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorManifestationStateVariant0 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:descricao, :unset}, {:manifestado, :unset}, {:automatica, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => integer(), :descricao => (String.t() | nil), :manifestado => boolean(), :automatica => boolean(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, :i64}, {"descricao", :descricao, {:nullable, :string}}, {"manifestado", :manifestado, :boolean}, {"automatica", :automatica, :boolean}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorManifestationStateVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfe do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:cfop, :unset}, {:data_emissao, :unset}, {:totais_issqn, :unset}, {:produtos, :unset}, {:valor, :unset}, {:protocolo, :unset}, {:finalidade, :unset}, {:totais, :unset}, {:fatura, :unset}, {:operacao, :unset}, {:pedido, :unset}, {:natureza_operacao, :unset}, {:responsavel_tecnico, :unset}, {:emitente, :unset}, {:transporte, :unset}, {:chave, :unset}, {:empresa_uuid, :unset}, {:docs, :unset}, {:modelo, :unset}, {:cliente, :unset}, {:uuid, :unset}, {:serie, :unset}, {:categoria, :unset}, {:numero, :unset}, {:parcelas, :unset}, {:data_captura, :unset}, {:fornecedor, :unset}, {:qtd_produtos, :unset}, {:manifestacao, :unset}, {:totais_ibs_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => (String.t() | :unset), :cfop => ([String.t()] | :unset), :data_emissao => (String.t() | :unset), :totais_issqn => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotaisIssqn.t() | :unset), :produtos => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItem.t()] | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :protocolo => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProtocolo.t() | :unset), :finalidade => (Webmania.Number.t() | integer() | :unset), :totais => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotais.t() | :unset), :fatura => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeFatura.t() | :unset), :operacao => (Webmania.Number.t() | integer() | :unset), :pedido => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfePedido.t() | :unset), :natureza_operacao => (String.t() | :unset), :responsavel_tecnico => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeResponsavelTecnico.t() | :unset), :emitente => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :transporte => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporte.t() | :unset), :chave => (String.t() | :unset), :empresa_uuid => String.t(), :docs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeDocs.t() | :unset), :modelo => String.t(), :cliente => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :uuid => String.t(), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :categoria => (String.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :parcelas => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeParcelasItem.t()] | :unset), :data_captura => (String.t() | :unset), :fornecedor => ((Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeFornecedorVariant0.t() | nil) | :unset), :qtd_produtos => (integer() | :unset), :manifestacao => ((Webmania.Models.Api2MonitorManagement.MonitorManifestationStateVariant0.t() | nil) | :unset), :totais_ibs_cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotaisIbsCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, {:optional, :string}}, {"cfop", :cfop, {:optional, {:array, :string}}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"totais_issqn", :totais_issqn, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotaisIssqn}}, {"produtos", :produtos, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItem}}}, {"valor", :valor, {:optional, :scalar}}, {"protocolo", :protocolo, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProtocolo}}, {"finalidade", :finalidade, {:optional, :number}}, {"totais", :totais, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotais}}, {"fatura", :fatura, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeFatura}}, {"operacao", :operacao, {:optional, :number}}, {"pedido", :pedido, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfePedido}}, {"natureza_operacao", :natureza_operacao, {:optional, :string}}, {"responsavel_tecnico", :responsavel_tecnico, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeResponsavelTecnico}}, {"emitente", :emitente, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"transporte", :transporte, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporte}}, {"chave", :chave, {:optional, :string}}, {"empresa_uuid", :empresa_uuid, :string}, {"docs", :docs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeDocs}}, {"modelo", :modelo, :string}, {"cliente", :cliente, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"uuid", :uuid, :string}, {"serie", :serie, {:optional, :scalar}}, {"categoria", :categoria, {:optional, :string}}, {"numero", :numero, {:optional, :scalar}}, {"parcelas", :parcelas, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeParcelasItem}}}, {"data_captura", :data_captura, {:optional, :string}}, {"fornecedor", :fornecedor, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeFornecedorVariant0}}}, {"qtd_produtos", :qtd_produtos, {:optional, :i64}}, {"manifestacao", :manifestacao, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorManifestationStateVariant0}}}, {"totais_ibs_cbs", :totais_ibs_cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotaisIbsCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfe"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotaisIssqn do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_servicos, :unset}, {:iss_bc, :unset}, {:iss_valor, :unset}, {:pis_valor, :unset}, {:cofins_valor, :unset}, {:data_competencia, :unset}, {:deducao, :unset}, {:outras_retencoes, :unset}, {:desconto_incondicionado, :unset}, {:desconto_condicionado, :unset}, {:iss_retido_valor, :unset}, {:regime_especial_tributacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_servicos => (Webmania.Number.t() | integer() | :unset), :iss_bc => (Webmania.Number.t() | integer() | :unset), :iss_valor => (Webmania.Number.t() | integer() | :unset), :pis_valor => (Webmania.Number.t() | integer() | :unset), :cofins_valor => (Webmania.Number.t() | integer() | :unset), :data_competencia => (String.t() | :unset), :deducao => (Webmania.Number.t() | integer() | :unset), :outras_retencoes => (Webmania.Number.t() | integer() | :unset), :desconto_incondicionado => (Webmania.Number.t() | integer() | :unset), :desconto_condicionado => (Webmania.Number.t() | integer() | :unset), :iss_retido_valor => (Webmania.Number.t() | integer() | :unset), :regime_especial_tributacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_servicos", :valor_servicos, {:optional, :number}}, {"iss_bc", :iss_bc, {:optional, :number}}, {"iss_valor", :iss_valor, {:optional, :number}}, {"pis_valor", :pis_valor, {:optional, :number}}, {"cofins_valor", :cofins_valor, {:optional, :number}}, {"data_competencia", :data_competencia, {:optional, :string}}, {"deducao", :deducao, {:optional, :number}}, {"outras_retencoes", :outras_retencoes, {:optional, :number}}, {"desconto_incondicionado", :desconto_incondicionado, {:optional, :number}}, {"desconto_condicionado", :desconto_condicionado, {:optional, :number}}, {"iss_retido_valor", :iss_retido_valor, {:optional, :number}}, {"regime_especial_tributacao", :regime_especial_tributacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeTotaisIssqn"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cfop, :unset}, {:valor_unitario, :unset}, {:origem, :unset}, {:cest, :unset}, {:unidade_tributavel, :unset}, {:impostos, :unset}, {:nome, :unset}, {:quantidade_tributavel, :unset}, {:descricao, :unset}, {:quantidade, :unset}, {:subtotal_tributavel, :unset}, {:valor_total, :unset}, {:outras_despesas, :unset}, {:seguro, :unset}, {:unidade, :unset}, {:desconto, :unset}, {:total, :unset}, {:gtin_tributavel, :unset}, {:gtin, :unset}, {:subtotal, :unset}, {:frete, :unset}, {:ncm, :unset}, {:item, :unset}, {:codigo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cfop => (String.t() | :unset), :valor_unitario => (Webmania.Number.t() | integer() | :unset), :origem => (String.t() | :unset), :cest => (String.t() | :unset), :unidade_tributavel => (String.t() | :unset), :impostos => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostos.t() | :unset), :nome => (String.t() | :unset), :quantidade_tributavel => (Webmania.Number.t() | integer() | :unset), :descricao => (String.t() | :unset), :quantidade => (Webmania.Number.t() | integer() | :unset), :subtotal_tributavel => (Webmania.Number.t() | integer() | :unset), :valor_total => (Webmania.Number.t() | integer() | :unset), :outras_despesas => (Webmania.Number.t() | integer() | :unset), :seguro => (Webmania.Number.t() | integer() | :unset), :unidade => (String.t() | :unset), :desconto => (Webmania.Number.t() | integer() | :unset), :total => (Webmania.Number.t() | integer() | :unset), :gtin_tributavel => (String.t() | :unset), :gtin => (String.t() | :unset), :subtotal => (Webmania.Number.t() | integer() | :unset), :frete => (Webmania.Number.t() | integer() | :unset), :ncm => (String.t() | :unset), :item => (String.t() | :unset), :codigo => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cfop", :cfop, {:optional, :string}}, {"valor_unitario", :valor_unitario, {:optional, :number}}, {"origem", :origem, {:optional, :string}}, {"cest", :cest, {:optional, :string}}, {"unidade_tributavel", :unidade_tributavel, {:optional, :string}}, {"impostos", :impostos, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostos}}, {"nome", :nome, {:optional, :string}}, {"quantidade_tributavel", :quantidade_tributavel, {:optional, :number}}, {"descricao", :descricao, {:optional, :string}}, {"quantidade", :quantidade, {:optional, :number}}, {"subtotal_tributavel", :subtotal_tributavel, {:optional, :number}}, {"valor_total", :valor_total, {:optional, :number}}, {"outras_despesas", :outras_despesas, {:optional, :number}}, {"seguro", :seguro, {:optional, :number}}, {"unidade", :unidade, {:optional, :string}}, {"desconto", :desconto, {:optional, :number}}, {"total", :total, {:optional, :number}}, {"gtin_tributavel", :gtin_tributavel, {:optional, :string}}, {"gtin", :gtin, {:optional, :string}}, {"subtotal", :subtotal, {:optional, :number}}, {"frete", :frete, {:optional, :number}}, {"ncm", :ncm, {:optional, :string}}, {"item", :item, {:optional, :string}}, {"codigo", :codigo, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostos do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:imposto_importacao, :unset}, {:ipi, :unset}, {:cofins, :unset}, {:ibs_cbs, :unset}, {:icms, :unset}, {:pis, :unset}, {:issqn, :unset}, {:ipi_devolvido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:imposto_importacao => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosImpostoImportacao.t() | :unset), :ipi => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIpi.t() | :unset), :cofins => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosCofins.t() | :unset), :ibs_cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbs.t() | :unset), :icms => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIcms.t() | :unset), :pis => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosPis.t() | :unset), :issqn => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIssqn.t() | :unset), :ipi_devolvido => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIpiDevolvido.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"imposto_importacao", :imposto_importacao, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosImpostoImportacao}}, {"ipi", :ipi, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIpi}}, {"cofins", :cofins, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosCofins}}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbs}}, {"icms", :icms, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIcms}}, {"pis", :pis, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosPis}}, {"issqn", :issqn, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIssqn}}, {"ipi_devolvido", :ipi_devolvido, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIpiDevolvido}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostos"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosImpostoImportacao do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ii_bc, :unset}, {:despesas_aduaneiras, :unset}, {:ii_valor, :unset}, {:iof_valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ii_bc => (Webmania.Number.t() | integer() | :unset), :despesas_aduaneiras => (Webmania.Number.t() | integer() | :unset), :ii_valor => (Webmania.Number.t() | integer() | :unset), :iof_valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ii_bc", :ii_bc, {:optional, :number}}, {"despesas_aduaneiras", :despesas_aduaneiras, {:optional, :number}}, {"ii_valor", :ii_valor, {:optional, :number}}, {"iof_valor", :iof_valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosImpostoImportacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIpi do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:valor, :unset}, {:qtd_selo, :unset}, {:codigo_selo, :unset}, {:aliquota, :unset}, {:base_calculo, :unset}, {:ipi_aliquota, :unset}, {:ipi_valor, :unset}, {:ipi_bc, :unset}, {:codigo_enquadramento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => (String.t() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :qtd_selo => (Webmania.Number.t() | integer() | :unset), :codigo_selo => (String.t() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :base_calculo => (Webmania.Number.t() | integer() | :unset), :ipi_aliquota => (Webmania.Number.t() | integer() | :unset), :ipi_valor => (Webmania.Number.t() | integer() | :unset), :ipi_bc => (Webmania.Number.t() | integer() | :unset), :codigo_enquadramento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"valor", :valor, {:optional, :number}}, {"qtd_selo", :qtd_selo, {:optional, :number}}, {"codigo_selo", :codigo_selo, {:optional, :string}}, {"aliquota", :aliquota, {:optional, :number}}, {"base_calculo", :base_calculo, {:optional, :number}}, {"ipi_aliquota", :ipi_aliquota, {:optional, :number}}, {"ipi_valor", :ipi_valor, {:optional, :number}}, {"ipi_bc", :ipi_bc, {:optional, :number}}, {"codigo_enquadramento", :codigo_enquadramento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIpi"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosCofins do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cofins_bc, :unset}, {:situacao_tributaria, :unset}, {:valor, :unset}, {:cofins_valor, :unset}, {:aliquota, :unset}, {:base_calculo, :unset}, {:cofins_aliquota, :unset}, {:cofins_aliquota_valor, :unset}, {:cofins_quantidade_bc, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cofins_bc => (Webmania.Number.t() | integer() | :unset), :situacao_tributaria => (String.t() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :cofins_valor => (Webmania.Number.t() | integer() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :base_calculo => (Webmania.Number.t() | integer() | :unset), :cofins_aliquota => (Webmania.Number.t() | integer() | :unset), :cofins_aliquota_valor => (Webmania.Number.t() | integer() | :unset), :cofins_quantidade_bc => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cofins_bc", :cofins_bc, {:optional, :number}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"valor", :valor, {:optional, :number}}, {"cofins_valor", :cofins_valor, {:optional, :number}}, {"aliquota", :aliquota, {:optional, :number}}, {"base_calculo", :base_calculo, {:optional, :number}}, {"cofins_aliquota", :cofins_aliquota, {:optional, :number}}, {"cofins_aliquota_valor", :cofins_aliquota_valor, {:optional, :number}}, {"cofins_quantidade_bc", :cofins_quantidade_bc, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosCofins"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:classificacao_tributaria, :unset}, {:indicador_doacao, :unset}, {:bc, :unset}, {:valor_ibs, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:situacao_tributaria_regular, :unset}, {:classificacao_tributaria_regular, :unset}, {:tributacao_regular, :unset}, {:compra_governamental, :unset}, {:tributacao_monofasica, :unset}, {:transferencia_credito, :unset}, {:ajuste_competencia, :unset}, {:credito_presumido, :unset}, {:credito_presumido_zfm, :unset}, {:estorno_credito, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => (String.t() | :unset), :classificacao_tributaria => (String.t() | :unset), :indicador_doacao => (boolean() | :unset), :bc => (Webmania.Number.t() | integer() | :unset), :valor_ibs => (Webmania.Number.t() | integer() | :unset), :ibs_estadual => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal.t() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs.t() | :unset), :situacao_tributaria_regular => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :tributacao_regular => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular.t() | :unset), :compra_governamental => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental.t() | :unset), :tributacao_monofasica => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica.t() | :unset), :transferencia_credito => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito.t() | :unset), :ajuste_competencia => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia.t() | :unset), :credito_presumido => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido.t() | :unset), :credito_presumido_zfm => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm.t() | :unset), :estorno_credito => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :string}}, {"indicador_doacao", :indicador_doacao, {:optional, :boolean}}, {"bc", :bc, {:optional, :number}}, {"valor_ibs", :valor_ibs, {:optional, :number}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs}}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"tributacao_regular", :tributacao_regular, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular}}, {"compra_governamental", :compra_governamental, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental}}, {"tributacao_monofasica", :tributacao_monofasica, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica}}, {"transferencia_credito", :transferencia_credito, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito}}, {"ajuste_competencia", :ajuste_competencia, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido}}, {"credito_presumido_zfm", :credito_presumido_zfm, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm}}, {"estorno_credito", :estorno_credito, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:aliquota_diferimento, :unset}, {:valor_diferimento, :unset}, {:valor_devolvido, :unset}, {:aliquota_reducao, :unset}, {:aliquota_efetiva, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_devolvido => (Webmania.Number.t() | integer() | :unset), :aliquota_reducao => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}, {"valor_diferimento", :valor_diferimento, {:optional, :number}}, {"valor_devolvido", :valor_devolvido, {:optional, :number}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:aliquota_diferimento, :unset}, {:valor_diferimento, :unset}, {:valor_devolvido, :unset}, {:aliquota_reducao, :unset}, {:aliquota_efetiva, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_devolvido => (Webmania.Number.t() | integer() | :unset), :aliquota_reducao => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}, {"valor_diferimento", :valor_diferimento, {:optional, :number}}, {"valor_devolvido", :valor_devolvido, {:optional, :number}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:aliquota_diferimento, :unset}, {:valor_diferimento, :unset}, {:valor_devolvido, :unset}, {:aliquota_reducao, :unset}, {:aliquota_efetiva, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_devolvido => (Webmania.Number.t() | integer() | :unset), :aliquota_reducao => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}, {"valor_diferimento", :valor_diferimento, {:optional, :number}}, {"valor_devolvido", :valor_devolvido, {:optional, :number}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ibs_estadual => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal.t() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegular"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_efetiva, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_efetiva, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_efetiva, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoRegularCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ibs_estadual => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal.t() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamental"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCompraGovernamentalCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade_bc, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:quantidade_bc_retencao, :unset}, {:aliquota_ibs_retencao, :unset}, {:aliquota_cbs_retencao, :unset}, {:valor_ibs_retencao, :unset}, {:valor_cbs_retencao, :unset}, {:quantidade_bc_retido, :unset}, {:aliquota_ibs_retido, :unset}, {:aliquota_cbs_retido, :unset}, {:valor_ibs_retido, :unset}, {:valor_cbs_retido, :unset}, {:aliquota_diferimento_ibs, :unset}, {:aliquota_diferimento_cbs, :unset}, {:valor_diferimento_ibs, :unset}, {:valor_diferimento_cbs, :unset}, {:valor_total_ibs, :unset}, {:valor_total_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade_bc => (Webmania.Number.t() | integer() | :unset), :aliquota_ibs => (Webmania.Number.t() | integer() | :unset), :aliquota_cbs => (Webmania.Number.t() | integer() | :unset), :valor_ibs => (Webmania.Number.t() | integer() | :unset), :valor_cbs => (Webmania.Number.t() | integer() | :unset), :quantidade_bc_retencao => (Webmania.Number.t() | integer() | :unset), :aliquota_ibs_retencao => (Webmania.Number.t() | integer() | :unset), :aliquota_cbs_retencao => (Webmania.Number.t() | integer() | :unset), :valor_ibs_retencao => (Webmania.Number.t() | integer() | :unset), :valor_cbs_retencao => (Webmania.Number.t() | integer() | :unset), :quantidade_bc_retido => (Webmania.Number.t() | integer() | :unset), :aliquota_ibs_retido => (Webmania.Number.t() | integer() | :unset), :aliquota_cbs_retido => (Webmania.Number.t() | integer() | :unset), :valor_ibs_retido => (Webmania.Number.t() | integer() | :unset), :valor_cbs_retido => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento_ibs => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento_cbs => (Webmania.Number.t() | integer() | :unset), :valor_diferimento_ibs => (Webmania.Number.t() | integer() | :unset), :valor_diferimento_cbs => (Webmania.Number.t() | integer() | :unset), :valor_total_ibs => (Webmania.Number.t() | integer() | :unset), :valor_total_cbs => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade_bc", :quantidade_bc, {:optional, :number}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :number}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :number}}, {"valor_ibs", :valor_ibs, {:optional, :number}}, {"valor_cbs", :valor_cbs, {:optional, :number}}, {"quantidade_bc_retencao", :quantidade_bc_retencao, {:optional, :number}}, {"aliquota_ibs_retencao", :aliquota_ibs_retencao, {:optional, :number}}, {"aliquota_cbs_retencao", :aliquota_cbs_retencao, {:optional, :number}}, {"valor_ibs_retencao", :valor_ibs_retencao, {:optional, :number}}, {"valor_cbs_retencao", :valor_cbs_retencao, {:optional, :number}}, {"quantidade_bc_retido", :quantidade_bc_retido, {:optional, :number}}, {"aliquota_ibs_retido", :aliquota_ibs_retido, {:optional, :number}}, {"aliquota_cbs_retido", :aliquota_cbs_retido, {:optional, :number}}, {"valor_ibs_retido", :valor_ibs_retido, {:optional, :number}}, {"valor_cbs_retido", :valor_cbs_retido, {:optional, :number}}, {"aliquota_diferimento_ibs", :aliquota_diferimento_ibs, {:optional, :number}}, {"aliquota_diferimento_cbs", :aliquota_diferimento_cbs, {:optional, :number}}, {"valor_diferimento_ibs", :valor_diferimento_ibs, {:optional, :number}}, {"valor_diferimento_cbs", :valor_diferimento_cbs, {:optional, :number}}, {"valor_total_ibs", :valor_total_ibs, {:optional, :number}}, {"valor_total_cbs", :valor_total_cbs, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTributacaoMonofasica"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_ibs => (Webmania.Number.t() | integer() | :unset), :valor_cbs => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_ibs", :valor_ibs, {:optional, :number}}, {"valor_cbs", :valor_cbs, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsTransferenciaCredito"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:competencia_apuracao, :unset}, {:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:competencia_apuracao => (String.t() | :unset), :valor_ibs => (Webmania.Number.t() | integer() | :unset), :valor_cbs => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"competencia_apuracao", :competencia_apuracao, {:optional, :string}}, {"valor_ibs", :valor_ibs, {:optional, :number}}, {"valor_cbs", :valor_cbs, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsAjusteCompetencia"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:bc, :unset}, {:aliquota_ibs, :unset}, {:valor_ibs, :unset}, {:valor_ibs_condicionado_suspensao, :unset}, {:aliquota_cbs, :unset}, {:valor_cbs, :unset}, {:valor_cbs_condicionado_suspensao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => (String.t() | :unset), :bc => (Webmania.Number.t() | integer() | :unset), :aliquota_ibs => (Webmania.Number.t() | integer() | :unset), :valor_ibs => (Webmania.Number.t() | integer() | :unset), :valor_ibs_condicionado_suspensao => (Webmania.Number.t() | integer() | :unset), :aliquota_cbs => (Webmania.Number.t() | integer() | :unset), :valor_cbs => (Webmania.Number.t() | integer() | :unset), :valor_cbs_condicionado_suspensao => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, {:optional, :string}}, {"bc", :bc, {:optional, :number}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :number}}, {"valor_ibs", :valor_ibs, {:optional, :number}}, {"valor_ibs_condicionado_suspensao", :valor_ibs_condicionado_suspensao, {:optional, :number}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :number}}, {"valor_cbs", :valor_cbs, {:optional, :number}}, {"valor_cbs_condicionado_suspensao", :valor_cbs_condicionado_suspensao, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumido"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:competencia_apuracao, :unset}, {:classificacao, :unset}, {:valor_ibs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:competencia_apuracao => (String.t() | :unset), :classificacao => (String.t() | :unset), :valor_ibs => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"competencia_apuracao", :competencia_apuracao, {:optional, :string}}, {"classificacao", :classificacao, {:optional, :string}}, {"valor_ibs", :valor_ibs, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsCreditoPresumidoZfm"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_ibs => (Webmania.Number.t() | integer() | :unset), :valor_cbs => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_ibs", :valor_ibs, {:optional, :number}}, {"valor_cbs", :valor_cbs, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIbsCbsEstornoCredito"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIcms do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:fcp_aliquota_uf_destino, :unset}, {:icms_aliquota_reducao, :unset}, {:icms_st_aliquota, :unset}, {:icms_bc_uf_destino, :unset}, {:icms_st_aliquota_reducao, :unset}, {:icms_valor_uf_destino, :unset}, {:icms_motivo_desoneracao, :unset}, {:icms_aliquota_efetiva, :unset}, {:icms_st_retido_bc, :unset}, {:icms_valor_operacao, :unset}, {:icms_modalidade_bc, :unset}, {:fcp_st_bc, :unset}, {:fcp_st_retido_aliquota, :unset}, {:fcp_bc_uf_destino, :unset}, {:fcp_st_retido_bc, :unset}, {:icms_substituto_valor, :unset}, {:icms_st_uf, :unset}, {:aliquota, :unset}, {:icms_aliquota_reducao_efetiva, :unset}, {:icms_valor, :unset}, {:fcp_st_aliquota, :unset}, {:icms_bc_efetiva, :unset}, {:fcp_bc, :unset}, {:origem, :unset}, {:icms_st_valor_dest, :unset}, {:icms_bc_operacao_propria, :unset}, {:icms_st_retido_valor, :unset}, {:icms_aliquota_diferimento, :unset}, {:icms_st_bc_dest, :unset}, {:icms_aliquota_interestadual, :unset}, {:codigo_cfop, :unset}, {:icms_aliquota_uf_destino, :unset}, {:icms_valor_credito, :unset}, {:icms_aliquota_credito, :unset}, {:icms_st_aliquota_mva, :unset}, {:icms_st_bc, :unset}, {:valor, :unset}, {:fcp_st_retido_valor, :unset}, {:icms_bc, :unset}, {:icms_valor_efetivo, :unset}, {:fcp_st_valor, :unset}, {:base_calculo, :unset}, {:fcp_aliquota, :unset}, {:icms_aliquota_partilha_interestadual, :unset}, {:icms_valor_desonerado, :unset}, {:icms_st_valor, :unset}, {:icms_valor_uf_remetente, :unset}, {:situacao_tributaria, :unset}, {:icms_aliquota, :unset}, {:fcp_valor_uf_destino, :unset}, {:icms_valor_diferimento, :unset}, {:fcp_valor, :unset}, {:icms_st_modalidade_bc, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:fcp_aliquota_uf_destino => (Webmania.Number.t() | integer() | :unset), :icms_aliquota_reducao => (Webmania.Number.t() | integer() | :unset), :icms_st_aliquota => (Webmania.Number.t() | integer() | :unset), :icms_bc_uf_destino => (Webmania.Number.t() | integer() | :unset), :icms_st_aliquota_reducao => (Webmania.Number.t() | integer() | :unset), :icms_valor_uf_destino => (Webmania.Number.t() | integer() | :unset), :icms_motivo_desoneracao => (Webmania.Number.t() | integer() | :unset), :icms_aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :icms_st_retido_bc => (Webmania.Number.t() | integer() | :unset), :icms_valor_operacao => (Webmania.Number.t() | integer() | :unset), :icms_modalidade_bc => (Webmania.Number.t() | integer() | :unset), :fcp_st_bc => (Webmania.Number.t() | integer() | :unset), :fcp_st_retido_aliquota => (Webmania.Number.t() | integer() | :unset), :fcp_bc_uf_destino => (Webmania.Number.t() | integer() | :unset), :fcp_st_retido_bc => (Webmania.Number.t() | integer() | :unset), :icms_substituto_valor => (Webmania.Number.t() | integer() | :unset), :icms_st_uf => (Webmania.Number.t() | integer() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :icms_aliquota_reducao_efetiva => (Webmania.Number.t() | integer() | :unset), :icms_valor => (Webmania.Number.t() | integer() | :unset), :fcp_st_aliquota => (Webmania.Number.t() | integer() | :unset), :icms_bc_efetiva => (Webmania.Number.t() | integer() | :unset), :fcp_bc => (Webmania.Number.t() | integer() | :unset), :origem => (Webmania.Number.t() | integer() | :unset), :icms_st_valor_dest => (Webmania.Number.t() | integer() | :unset), :icms_bc_operacao_propria => (Webmania.Number.t() | integer() | :unset), :icms_st_retido_valor => (Webmania.Number.t() | integer() | :unset), :icms_aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :icms_st_bc_dest => (Webmania.Number.t() | integer() | :unset), :icms_aliquota_interestadual => (Webmania.Number.t() | integer() | :unset), :codigo_cfop => (String.t() | :unset), :icms_aliquota_uf_destino => (Webmania.Number.t() | integer() | :unset), :icms_valor_credito => (Webmania.Number.t() | integer() | :unset), :icms_aliquota_credito => (Webmania.Number.t() | integer() | :unset), :icms_st_aliquota_mva => (Webmania.Number.t() | integer() | :unset), :icms_st_bc => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :fcp_st_retido_valor => (Webmania.Number.t() | integer() | :unset), :icms_bc => (Webmania.Number.t() | integer() | :unset), :icms_valor_efetivo => (Webmania.Number.t() | integer() | :unset), :fcp_st_valor => (Webmania.Number.t() | integer() | :unset), :base_calculo => (Webmania.Number.t() | integer() | :unset), :fcp_aliquota => (Webmania.Number.t() | integer() | :unset), :icms_aliquota_partilha_interestadual => (Webmania.Number.t() | integer() | :unset), :icms_valor_desonerado => (Webmania.Number.t() | integer() | :unset), :icms_st_valor => (Webmania.Number.t() | integer() | :unset), :icms_valor_uf_remetente => (Webmania.Number.t() | integer() | :unset), :situacao_tributaria => (String.t() | :unset), :icms_aliquota => (Webmania.Number.t() | integer() | :unset), :fcp_valor_uf_destino => (Webmania.Number.t() | integer() | :unset), :icms_valor_diferimento => (Webmania.Number.t() | integer() | :unset), :fcp_valor => (Webmania.Number.t() | integer() | :unset), :icms_st_modalidade_bc => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"fcp_aliquota_uf_destino", :fcp_aliquota_uf_destino, {:optional, :number}}, {"icms_aliquota_reducao", :icms_aliquota_reducao, {:optional, :number}}, {"icms_st_aliquota", :icms_st_aliquota, {:optional, :number}}, {"icms_bc_uf_destino", :icms_bc_uf_destino, {:optional, :number}}, {"icms_st_aliquota_reducao", :icms_st_aliquota_reducao, {:optional, :number}}, {"icms_valor_uf_destino", :icms_valor_uf_destino, {:optional, :number}}, {"icms_motivo_desoneracao", :icms_motivo_desoneracao, {:optional, :number}}, {"icms_aliquota_efetiva", :icms_aliquota_efetiva, {:optional, :number}}, {"icms_st_retido_bc", :icms_st_retido_bc, {:optional, :number}}, {"icms_valor_operacao", :icms_valor_operacao, {:optional, :number}}, {"icms_modalidade_bc", :icms_modalidade_bc, {:optional, :number}}, {"fcp_st_bc", :fcp_st_bc, {:optional, :number}}, {"fcp_st_retido_aliquota", :fcp_st_retido_aliquota, {:optional, :number}}, {"fcp_bc_uf_destino", :fcp_bc_uf_destino, {:optional, :number}}, {"fcp_st_retido_bc", :fcp_st_retido_bc, {:optional, :number}}, {"icms_substituto_valor", :icms_substituto_valor, {:optional, :number}}, {"icms_st_uf", :icms_st_uf, {:optional, :number}}, {"aliquota", :aliquota, {:optional, :number}}, {"icms_aliquota_reducao_efetiva", :icms_aliquota_reducao_efetiva, {:optional, :number}}, {"icms_valor", :icms_valor, {:optional, :number}}, {"fcp_st_aliquota", :fcp_st_aliquota, {:optional, :number}}, {"icms_bc_efetiva", :icms_bc_efetiva, {:optional, :number}}, {"fcp_bc", :fcp_bc, {:optional, :number}}, {"origem", :origem, {:optional, :number}}, {"icms_st_valor_dest", :icms_st_valor_dest, {:optional, :number}}, {"icms_bc_operacao_propria", :icms_bc_operacao_propria, {:optional, :number}}, {"icms_st_retido_valor", :icms_st_retido_valor, {:optional, :number}}, {"icms_aliquota_diferimento", :icms_aliquota_diferimento, {:optional, :number}}, {"icms_st_bc_dest", :icms_st_bc_dest, {:optional, :number}}, {"icms_aliquota_interestadual", :icms_aliquota_interestadual, {:optional, :number}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"icms_aliquota_uf_destino", :icms_aliquota_uf_destino, {:optional, :number}}, {"icms_valor_credito", :icms_valor_credito, {:optional, :number}}, {"icms_aliquota_credito", :icms_aliquota_credito, {:optional, :number}}, {"icms_st_aliquota_mva", :icms_st_aliquota_mva, {:optional, :number}}, {"icms_st_bc", :icms_st_bc, {:optional, :number}}, {"valor", :valor, {:optional, :number}}, {"fcp_st_retido_valor", :fcp_st_retido_valor, {:optional, :number}}, {"icms_bc", :icms_bc, {:optional, :number}}, {"icms_valor_efetivo", :icms_valor_efetivo, {:optional, :number}}, {"fcp_st_valor", :fcp_st_valor, {:optional, :number}}, {"base_calculo", :base_calculo, {:optional, :number}}, {"fcp_aliquota", :fcp_aliquota, {:optional, :number}}, {"icms_aliquota_partilha_interestadual", :icms_aliquota_partilha_interestadual, {:optional, :number}}, {"icms_valor_desonerado", :icms_valor_desonerado, {:optional, :number}}, {"icms_st_valor", :icms_st_valor, {:optional, :number}}, {"icms_valor_uf_remetente", :icms_valor_uf_remetente, {:optional, :number}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"icms_aliquota", :icms_aliquota, {:optional, :number}}, {"fcp_valor_uf_destino", :fcp_valor_uf_destino, {:optional, :number}}, {"icms_valor_diferimento", :icms_valor_diferimento, {:optional, :number}}, {"fcp_valor", :fcp_valor, {:optional, :number}}, {"icms_st_modalidade_bc", :icms_st_modalidade_bc, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIcms"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosPis do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:pis_aliquota, :unset}, {:pis_bc, :unset}, {:situacao_tributaria, :unset}, {:valor, :unset}, {:pis_quantidade_bc, :unset}, {:pis_valor, :unset}, {:aliquota, :unset}, {:base_calculo, :unset}, {:pis_aliquota_valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:pis_aliquota => (Webmania.Number.t() | integer() | :unset), :pis_bc => (Webmania.Number.t() | integer() | :unset), :situacao_tributaria => (String.t() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :pis_quantidade_bc => (Webmania.Number.t() | integer() | :unset), :pis_valor => (Webmania.Number.t() | integer() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :base_calculo => (Webmania.Number.t() | integer() | :unset), :pis_aliquota_valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"pis_aliquota", :pis_aliquota, {:optional, :number}}, {"pis_bc", :pis_bc, {:optional, :number}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"valor", :valor, {:optional, :number}}, {"pis_quantidade_bc", :pis_quantidade_bc, {:optional, :number}}, {"pis_valor", :pis_valor, {:optional, :number}}, {"aliquota", :aliquota, {:optional, :number}}, {"base_calculo", :base_calculo, {:optional, :number}}, {"pis_aliquota_valor", :pis_aliquota_valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosPis"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIssqn do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:iss_bc, :unset}, {:iss_aliquota, :unset}, {:iss_valor, :unset}, {:municipio_fato_gerador, :unset}, {:item_servico, :unset}, {:deducao, :unset}, {:retencoes, :unset}, {:desconto_incondicionado, :unset}, {:desconto_condicionado, :unset}, {:iss_retido_valor, :unset}, {:exigibilidade, :unset}, {:codigo_servico, :unset}, {:municipio_incidencia, :unset}, {:pais, :unset}, {:processo, :unset}, {:incentivo_fiscal, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:iss_bc => (Webmania.Number.t() | integer() | :unset), :iss_aliquota => (Webmania.Number.t() | integer() | :unset), :iss_valor => (Webmania.Number.t() | integer() | :unset), :municipio_fato_gerador => (String.t() | :unset), :item_servico => (String.t() | :unset), :deducao => (Webmania.Number.t() | integer() | :unset), :retencoes => (Webmania.Number.t() | integer() | :unset), :desconto_incondicionado => (Webmania.Number.t() | integer() | :unset), :desconto_condicionado => (Webmania.Number.t() | integer() | :unset), :iss_retido_valor => (Webmania.Number.t() | integer() | :unset), :exigibilidade => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :municipio_incidencia => (String.t() | :unset), :pais => (String.t() | :unset), :processo => (String.t() | :unset), :incentivo_fiscal => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"iss_bc", :iss_bc, {:optional, :number}}, {"iss_aliquota", :iss_aliquota, {:optional, :number}}, {"iss_valor", :iss_valor, {:optional, :number}}, {"municipio_fato_gerador", :municipio_fato_gerador, {:optional, :string}}, {"item_servico", :item_servico, {:optional, :string}}, {"deducao", :deducao, {:optional, :number}}, {"retencoes", :retencoes, {:optional, :number}}, {"desconto_incondicionado", :desconto_incondicionado, {:optional, :number}}, {"desconto_condicionado", :desconto_condicionado, {:optional, :number}}, {"iss_retido_valor", :iss_retido_valor, {:optional, :number}}, {"exigibilidade", :exigibilidade, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"municipio_incidencia", :municipio_incidencia, {:optional, :string}}, {"pais", :pais, {:optional, :string}}, {"processo", :processo, {:optional, :string}}, {"incentivo_fiscal", :incentivo_fiscal, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIssqn"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProdutosItemImpostosIpiDevolvido do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:percentual_devolvido, :unset}, {:ipi_devolvido_valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:percentual_devolvido => (Webmania.Number.t() | integer() | :unset), :ipi_devolvido_valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"percentual_devolvido", :percentual_devolvido, {:optional, :number}}, {"ipi_devolvido_valor", :ipi_devolvido_valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProdutosItemImpostosIpiDevolvido"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProtocoloVariant1 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:motivo, :unset}, {:status, :unset}, {:data_recebimento, :unset}, {:numero_protocolo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:motivo => (String.t() | :unset), :status => (String.t() | :unset), :data_recebimento => (String.t() | :unset), :numero_protocolo => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"motivo", :motivo, {:optional, :string}}, {"status", :status, {:optional, :string}}, {"data_recebimento", :data_recebimento, {:optional, :string}}, {"numero_protocolo", :numero_protocolo, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProtocoloVariant1"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProtocolo do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :MonitorDocumentNfeProtocoloVariant1, value: Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProtocoloVariant1.t()}
  @doc false
  def __variants__, do: [{:Text, :string}, {:MonitorDocumentNfeProtocoloVariant1, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeProtocoloVariant1}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeProtocolo"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotais do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_desconto, :unset}, {:ii_valor, :unset}, {:valor_seguro, :unset}, {:fcp_st_retido_valor, :unset}, {:cofins_valor, :unset}, {:icms_bc, :unset}, {:ipi_devolvido_valor, :unset}, {:fcp_st_valor, :unset}, {:valor_produtos, :unset}, {:valor_outras_despesas, :unset}, {:icms_valor_desonerado, :unset}, {:valor_frete, :unset}, {:icms_st_valor, :unset}, {:valor_total_nfe, :unset}, {:pis_valor, :unset}, {:icms_valor, :unset}, {:ipi_valor, :unset}, {:fcp_valor, :unset}, {:icms_st_bc, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_desconto => (Webmania.Number.t() | integer() | :unset), :ii_valor => (Webmania.Number.t() | integer() | :unset), :valor_seguro => (Webmania.Number.t() | integer() | :unset), :fcp_st_retido_valor => (Webmania.Number.t() | integer() | :unset), :cofins_valor => (Webmania.Number.t() | integer() | :unset), :icms_bc => (Webmania.Number.t() | integer() | :unset), :ipi_devolvido_valor => (Webmania.Number.t() | integer() | :unset), :fcp_st_valor => (Webmania.Number.t() | integer() | :unset), :valor_produtos => (Webmania.Number.t() | integer() | :unset), :valor_outras_despesas => (Webmania.Number.t() | integer() | :unset), :icms_valor_desonerado => (Webmania.Number.t() | integer() | :unset), :valor_frete => (Webmania.Number.t() | integer() | :unset), :icms_st_valor => (Webmania.Number.t() | integer() | :unset), :valor_total_nfe => (Webmania.Number.t() | integer() | :unset), :pis_valor => (Webmania.Number.t() | integer() | :unset), :icms_valor => (Webmania.Number.t() | integer() | :unset), :ipi_valor => (Webmania.Number.t() | integer() | :unset), :fcp_valor => (Webmania.Number.t() | integer() | :unset), :icms_st_bc => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_desconto", :valor_desconto, {:optional, :number}}, {"ii_valor", :ii_valor, {:optional, :number}}, {"valor_seguro", :valor_seguro, {:optional, :number}}, {"fcp_st_retido_valor", :fcp_st_retido_valor, {:optional, :number}}, {"cofins_valor", :cofins_valor, {:optional, :number}}, {"icms_bc", :icms_bc, {:optional, :number}}, {"ipi_devolvido_valor", :ipi_devolvido_valor, {:optional, :number}}, {"fcp_st_valor", :fcp_st_valor, {:optional, :number}}, {"valor_produtos", :valor_produtos, {:optional, :number}}, {"valor_outras_despesas", :valor_outras_despesas, {:optional, :number}}, {"icms_valor_desonerado", :icms_valor_desonerado, {:optional, :number}}, {"valor_frete", :valor_frete, {:optional, :number}}, {"icms_st_valor", :icms_st_valor, {:optional, :number}}, {"valor_total_nfe", :valor_total_nfe, {:optional, :number}}, {"pis_valor", :pis_valor, {:optional, :number}}, {"icms_valor", :icms_valor, {:optional, :number}}, {"ipi_valor", :ipi_valor, {:optional, :number}}, {"fcp_valor", :fcp_valor, {:optional, :number}}, {"icms_st_bc", :icms_st_bc, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeTotais"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeFatura do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_desconto, :unset}, {:valor_liquido, :unset}, {:valor, :unset}, {:valor_original, :unset}, {:desconto, :unset}, {:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_desconto => (Webmania.Number.t() | integer() | :unset), :valor_liquido => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :valor_original => (Webmania.Number.t() | integer() | :unset), :desconto => (Webmania.Number.t() | integer() | :unset), :numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_desconto", :valor_desconto, {:optional, :number}}, {"valor_liquido", :valor_liquido, {:optional, :number}}, {"valor", :valor, {:optional, :number}}, {"valor_original", :valor_original, {:optional, :number}}, {"desconto", :desconto, {:optional, :number}}, {"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeFatura"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfePedido do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bandeira, :unset}, {:ID, :unset}, {:informacoes_complementares, :unset}, {:numero_compra, :unset}, {:cnpj_credenciadora, :unset}, {:intermediador, :unset}, {:informacoes_fisco, :unset}, {:desc_pagamento, :unset}, {:numero_pedido, :unset}, {:autorizacao, :unset}, {:valor_pagamento, :unset}, {:desconto, :unset}, {:forma_pagamento, :unset}, {:cnpj_intermediador, :unset}, {:frete, :unset}, {:presenca, :unset}, {:id_intermediador, :unset}, {:pagamento, :unset}, {:modalidade_frete, :unset}, {:tipo_integracao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bandeira => ([String.t()] | :unset), :ID => (String.t() | :unset), :informacoes_complementares => (String.t() | :unset), :numero_compra => (String.t() | :unset), :cnpj_credenciadora => ([String.t()] | :unset), :intermediador => (String.t() | :unset), :informacoes_fisco => (String.t() | :unset), :desc_pagamento => ([String.t()] | :unset), :numero_pedido => (String.t() | :unset), :autorizacao => ([String.t()] | :unset), :valor_pagamento => ([Webmania.Number.t() | integer()] | :unset), :desconto => (Webmania.Number.t() | integer() | :unset), :forma_pagamento => ([String.t()] | :unset), :cnpj_intermediador => (String.t() | :unset), :frete => (Webmania.Number.t() | integer() | :unset), :presenca => (String.t() | :unset), :id_intermediador => (String.t() | :unset), :pagamento => ([String.t()] | :unset), :modalidade_frete => (String.t() | :unset), :tipo_integracao => ([String.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bandeira", :bandeira, {:optional, {:array, :string}}}, {"ID", :ID, {:optional, :string}}, {"informacoes_complementares", :informacoes_complementares, {:optional, :string}}, {"numero_compra", :numero_compra, {:optional, :string}}, {"cnpj_credenciadora", :cnpj_credenciadora, {:optional, {:array, :string}}}, {"intermediador", :intermediador, {:optional, :string}}, {"informacoes_fisco", :informacoes_fisco, {:optional, :string}}, {"desc_pagamento", :desc_pagamento, {:optional, {:array, :string}}}, {"numero_pedido", :numero_pedido, {:optional, :string}}, {"autorizacao", :autorizacao, {:optional, {:array, :string}}}, {"valor_pagamento", :valor_pagamento, {:optional, {:array, :number}}}, {"desconto", :desconto, {:optional, :number}}, {"forma_pagamento", :forma_pagamento, {:optional, {:array, :string}}}, {"cnpj_intermediador", :cnpj_intermediador, {:optional, :string}}, {"frete", :frete, {:optional, :number}}, {"presenca", :presenca, {:optional, :string}}, {"id_intermediador", :id_intermediador, {:optional, :string}}, {"pagamento", :pagamento, {:optional, {:array, :string}}}, {"modalidade_frete", :modalidade_frete, {:optional, :string}}, {"tipo_integracao", :tipo_integracao, {:optional, {:array, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfePedido"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeResponsavelTecnico do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:telefone, :unset}, {:razao_social, :unset}, {:cnpj, :unset}, {:contato, :unset}, {:email, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:telefone => (String.t() | :unset), :razao_social => (String.t() | :unset), :cnpj => (String.t() | :unset), :contato => (String.t() | :unset), :email => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"telefone", :telefone, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"contato", :contato, {:optional, :string}}, {"email", :email, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeResponsavelTecnico"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporte do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:peso_liquido, :unset}, {:volume, :unset}, {:veiculo, :unset}, {:especie, :unset}, {:numeracao, :unset}, {:peso_bruto, :unset}, {:retirada, :unset}, {:marca, :unset}, {:entrega, :unset}, {:volumes, :unset}, {:transportadora, :unset}, {:modalidade_frete, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:peso_liquido => (Webmania.Number.t() | integer() | :unset), :volume => (String.t() | :unset), :veiculo => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteVeiculo.t() | :unset), :especie => (String.t() | :unset), :numeracao => (String.t() | :unset), :peso_bruto => (Webmania.Number.t() | integer() | :unset), :retirada => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteRetirada.t() | :unset), :marca => (String.t() | :unset), :entrega => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteEntrega.t() | :unset), :volumes => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteVolumesItem.t()] | :unset), :transportadora => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteTransportadora.t() | :unset), :modalidade_frete => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"peso_liquido", :peso_liquido, {:optional, :number}}, {"volume", :volume, {:optional, :string}}, {"veiculo", :veiculo, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteVeiculo}}, {"especie", :especie, {:optional, :string}}, {"numeracao", :numeracao, {:optional, :string}}, {"peso_bruto", :peso_bruto, {:optional, :number}}, {"retirada", :retirada, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteRetirada}}, {"marca", :marca, {:optional, :string}}, {"entrega", :entrega, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteEntrega}}, {"volumes", :volumes, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteVolumesItem}}}, {"transportadora", :transportadora, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteTransportadora}}, {"modalidade_frete", :modalidade_frete, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeTransporte"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteVeiculo do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:placa, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:placa => (String.t() | :unset), :uf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"placa", :placa, {:optional, :string}}, {"uf", :uf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeTransporteVeiculo"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteRetirada do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:razao_social, :unset}, {:nome_completo, :unset}, {:nome_fantasia, :unset}, {:ie, :unset}, {:endereco, :unset}, {:numero, :unset}, {:complemento, :unset}, {:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:uf, :unset}, {:telefone, :unset}, {:email, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :razao_social => (String.t() | :unset), :nome_completo => (String.t() | :unset), :nome_fantasia => (String.t() | :unset), :ie => (String.t() | :unset), :endereco => (String.t() | :unset), :numero => (String.t() | :unset), :complemento => (String.t() | :unset), :bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :uf => (String.t() | :unset), :telefone => (String.t() | :unset), :email => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"nome_fantasia", :nome_fantasia, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"email", :email, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeTransporteRetirada"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteEntrega do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:razao_social, :unset}, {:nome_completo, :unset}, {:nome_fantasia, :unset}, {:ie, :unset}, {:endereco, :unset}, {:numero, :unset}, {:complemento, :unset}, {:bairro, :unset}, {:cep, :unset}, {:cidade, :unset}, {:uf, :unset}, {:telefone, :unset}, {:email, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :razao_social => (String.t() | :unset), :nome_completo => (String.t() | :unset), :nome_fantasia => (String.t() | :unset), :ie => (String.t() | :unset), :endereco => (String.t() | :unset), :numero => (String.t() | :unset), :complemento => (String.t() | :unset), :bairro => (String.t() | :unset), :cep => (String.t() | :unset), :cidade => (String.t() | :unset), :uf => (String.t() | :unset), :telefone => (String.t() | :unset), :email => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"nome_fantasia", :nome_fantasia, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"email", :email, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeTransporteEntrega"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteVolumesItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade, :unset}, {:especie, :unset}, {:marca, :unset}, {:numeracao, :unset}, {:peso_liquido, :unset}, {:peso_bruto, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade => (Webmania.Number.t() | integer() | :unset), :especie => (String.t() | :unset), :marca => (String.t() | :unset), :numeracao => (String.t() | :unset), :peso_liquido => (Webmania.Number.t() | integer() | :unset), :peso_bruto => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade", :quantidade, {:optional, :number}}, {"especie", :especie, {:optional, :string}}, {"marca", :marca, {:optional, :string}}, {"numeracao", :numeracao, {:optional, :string}}, {"peso_liquido", :peso_liquido, {:optional, :number}}, {"peso_bruto", :peso_bruto, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeTransporteVolumesItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTransporteTransportadora do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:ie, :unset}, {:bairro, :unset}, {:cidade, :unset}, {:cep, :unset}, {:endereco, :unset}, {:nome_fantasia, :unset}, {:razao_social, :unset}, {:telefone, :unset}, {:uf, :unset}, {:nome_completo, :unset}, {:complemento, :unset}, {:cpf, :unset}, {:numero, :unset}, {:email, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :ie => (String.t() | :unset), :bairro => (String.t() | :unset), :cidade => (String.t() | :unset), :cep => (String.t() | :unset), :endereco => (String.t() | :unset), :nome_fantasia => (String.t() | :unset), :razao_social => (String.t() | :unset), :telefone => (String.t() | :unset), :uf => (String.t() | :unset), :nome_completo => (String.t() | :unset), :complemento => (String.t() | :unset), :cpf => (String.t() | :unset), :numero => (String.t() | :unset), :email => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"bairro", :bairro, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"endereco", :endereco, {:optional, :string}}, {"nome_fantasia", :nome_fantasia, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"telefone", :telefone, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"complemento", :complemento, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"email", :email, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeTransporteTransportadora"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeDocs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:xml, :unset}, {:pdf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:xml => ((String.t() | nil) | :unset), :pdf => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"xml", :xml, {:optional, {:nullable, :string}}}, {"pdf", :pdf, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeDocs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeParcelasItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor, :unset}, {:numero, :unset}, {:vencimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor => (Webmania.Number.t() | integer() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :vencimento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor", :valor, {:optional, :number}}, {"numero", :numero, {:optional, :scalar}}, {"vencimento", :vencimento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeParcelasItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeFornecedorVariant0 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:razao_social, :unset}, {:documento, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:razao_social => (String.t() | :unset), :documento => ((String.t() | nil) | :unset), :uf => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"razao_social", :razao_social, {:optional, :string}}, {"documento", :documento, {:optional, {:nullable, :string}}}, {"uf", :uf, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeFornecedorVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotaisIbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bc, :unset}, {:valor_ibs, :unset}, {:aliquota_ibs, :unset}, {:aliquota_cbs, :unset}, {:cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bc => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_ibs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :aliquota_cbs => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotaisIbsCbsCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bc", :bc, {:optional, :scalar}}, {"valor_ibs", :valor_ibs, {:optional, :scalar}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :scalar}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :scalar}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotaisIbsCbsCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeTotaisIbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfeTotaisIbsCbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor", :valor, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfeTotaisIbsCbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfse do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:discriminacao, :unset}, {:data_emissao, :unset}, {:codigo_tributacao_municipio, :unset}, {:valor, :unset}, {:codigo_cnae, :unset}, {:totais, :unset}, {:impostos, :unset}, {:desconto_incondicionado, :unset}, {:identificacao_nfse, :unset}, {:valor_recebido, :unset}, {:tomador, :unset}, {:desconto_condicionado, :unset}, {:valor_liquido, :unset}, {:servicos, :unset}, {:data_cancelamento, :unset}, {:codigo_servico, :unset}, {:local_prestacao, :unset}, {:empresa_uuid, :unset}, {:prestador, :unset}, {:docs, :unset}, {:modelo, :unset}, {:uuid, :unset}, {:serie, :unset}, {:categoria, :unset}, {:numero, :unset}, {:data_captura, :unset}, {:fornecedor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => (String.t() | :unset), :discriminacao => (String.t() | :unset), :data_emissao => (String.t() | :unset), :codigo_tributacao_municipio => (String.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cnae => (String.t() | :unset), :totais => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseTotais.t() | :unset), :impostos => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostos.t() | :unset), :desconto_incondicionado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :identificacao_nfse => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseIdentificacaoNfse.t() | :unset), :valor_recebido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :tomador => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :desconto_condicionado => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor_liquido => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :servicos => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItem.t()] | :unset), :data_cancelamento => ((String.t() | nil) | :unset), :codigo_servico => (String.t() | :unset), :local_prestacao => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseLocalPrestacao.t() | :unset), :empresa_uuid => String.t(), :prestador => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :docs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseDocs.t() | :unset), :modelo => String.t(), :uuid => String.t(), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :categoria => (String.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_captura => (String.t() | :unset), :fornecedor => ((Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseFornecedorVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, {:optional, :string}}, {"discriminacao", :discriminacao, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"codigo_tributacao_municipio", :codigo_tributacao_municipio, {:optional, :string}}, {"valor", :valor, {:optional, :scalar}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"totais", :totais, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseTotais}}, {"impostos", :impostos, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostos}}, {"desconto_incondicionado", :desconto_incondicionado, {:optional, :scalar}}, {"identificacao_nfse", :identificacao_nfse, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseIdentificacaoNfse}}, {"valor_recebido", :valor_recebido, {:optional, :scalar}}, {"tomador", :tomador, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"desconto_condicionado", :desconto_condicionado, {:optional, :scalar}}, {"valor_liquido", :valor_liquido, {:optional, :scalar}}, {"servicos", :servicos, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItem}}}, {"data_cancelamento", :data_cancelamento, {:optional, {:nullable, :string}}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"local_prestacao", :local_prestacao, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseLocalPrestacao}}, {"empresa_uuid", :empresa_uuid, :string}, {"prestador", :prestador, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"docs", :docs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseDocs}}, {"modelo", :modelo, :string}, {"uuid", :uuid, :string}, {"serie", :serie, {:optional, :scalar}}, {"categoria", :categoria, {:optional, :string}}, {"numero", :numero, {:optional, :scalar}}, {"data_captura", :data_captura, {:optional, :string}}, {"fornecedor", :fornecedor, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseFornecedorVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseTotais do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor, :unset}, {:desconto_incondicionado, :unset}, {:desconto_condicionado, :unset}, {:iss_valor, :unset}, {:pis_valor, :unset}, {:cofins_valor, :unset}, {:inss_valor, :unset}, {:ir_valor, :unset}, {:csll_valor, :unset}, {:cp_valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor => (Webmania.Number.t() | integer() | :unset), :desconto_incondicionado => (Webmania.Number.t() | integer() | :unset), :desconto_condicionado => (Webmania.Number.t() | integer() | :unset), :iss_valor => (Webmania.Number.t() | integer() | :unset), :pis_valor => (Webmania.Number.t() | integer() | :unset), :cofins_valor => (Webmania.Number.t() | integer() | :unset), :inss_valor => (Webmania.Number.t() | integer() | :unset), :ir_valor => (Webmania.Number.t() | integer() | :unset), :csll_valor => (Webmania.Number.t() | integer() | :unset), :cp_valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor", :valor, {:optional, :number}}, {"desconto_incondicionado", :desconto_incondicionado, {:optional, :number}}, {"desconto_condicionado", :desconto_condicionado, {:optional, :number}}, {"iss_valor", :iss_valor, {:optional, :number}}, {"pis_valor", :pis_valor, {:optional, :number}}, {"cofins_valor", :cofins_valor, {:optional, :number}}, {"inss_valor", :inss_valor, {:optional, :number}}, {"ir_valor", :ir_valor, {:optional, :number}}, {"csll_valor", :csll_valor, {:optional, :number}}, {"cp_valor", :cp_valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseTotais"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostos do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tributacao_iss, :unset}, {:tributacao_descricao, :unset}, {:iss_retido, :unset}, {:bc, :unset}, {:iss_aliquota, :unset}, {:iss_valor, :unset}, {:pis_aliquota, :unset}, {:pis_valor, :unset}, {:cofins_aliquota, :unset}, {:cofins_valor, :unset}, {:inss_aliquota, :unset}, {:inss_valor, :unset}, {:ir_aliquota, :unset}, {:ir_valor, :unset}, {:csll_aliquota, :unset}, {:csll_valor, :unset}, {:cp_aliquota, :unset}, {:cp_valor, :unset}, {:ibs_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tributacao_iss => (Webmania.Number.t() | integer() | :unset), :tributacao_descricao => (String.t() | :unset), :iss_retido => (Webmania.Number.t() | integer() | :unset), :bc => (Webmania.Number.t() | integer() | :unset), :iss_aliquota => (Webmania.Number.t() | integer() | :unset), :iss_valor => (Webmania.Number.t() | integer() | :unset), :pis_aliquota => (Webmania.Number.t() | integer() | :unset), :pis_valor => (Webmania.Number.t() | integer() | :unset), :cofins_aliquota => (Webmania.Number.t() | integer() | :unset), :cofins_valor => (Webmania.Number.t() | integer() | :unset), :inss_aliquota => (Webmania.Number.t() | integer() | :unset), :inss_valor => (Webmania.Number.t() | integer() | :unset), :ir_aliquota => (Webmania.Number.t() | integer() | :unset), :ir_valor => (Webmania.Number.t() | integer() | :unset), :csll_aliquota => (Webmania.Number.t() | integer() | :unset), :csll_valor => (Webmania.Number.t() | integer() | :unset), :cp_aliquota => (Webmania.Number.t() | integer() | :unset), :cp_valor => (Webmania.Number.t() | integer() | :unset), :ibs_cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tributacao_iss", :tributacao_iss, {:optional, :number}}, {"tributacao_descricao", :tributacao_descricao, {:optional, :string}}, {"iss_retido", :iss_retido, {:optional, :number}}, {"bc", :bc, {:optional, :number}}, {"iss_aliquota", :iss_aliquota, {:optional, :number}}, {"iss_valor", :iss_valor, {:optional, :number}}, {"pis_aliquota", :pis_aliquota, {:optional, :number}}, {"pis_valor", :pis_valor, {:optional, :number}}, {"cofins_aliquota", :cofins_aliquota, {:optional, :number}}, {"cofins_valor", :cofins_valor, {:optional, :number}}, {"inss_aliquota", :inss_aliquota, {:optional, :number}}, {"inss_valor", :inss_valor, {:optional, :number}}, {"ir_aliquota", :ir_aliquota, {:optional, :number}}, {"ir_valor", :ir_valor, {:optional, :number}}, {"csll_aliquota", :csll_aliquota, {:optional, :number}}, {"csll_valor", :csll_valor, {:optional, :number}}, {"cp_aliquota", :cp_aliquota, {:optional, :number}}, {"cp_valor", :cp_valor, {:optional, :number}}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseImpostos"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bc, :unset}, {:cbs, :unset}, {:valor_ibs, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:finalidade_nfse, :unset}, {:situacao_tributaria, :unset}, {:localidade_incidencia, :unset}, {:cod_indicador_operacao, :unset}, {:indicador_destinatario, :unset}, {:classificacao_tributaria, :unset}, {:valor_calculo_reembolso_repasse, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bc => (Webmania.Number.t() | integer() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsCbs.t() | :unset), :valor_ibs => (Webmania.Number.t() | integer() | :unset), :ibs_estadual => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsIbsMunicipal.t() | :unset), :finalidade_nfse => (Webmania.Number.t() | integer() | :unset), :situacao_tributaria => (String.t() | :unset), :localidade_incidencia => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia.t() | :unset), :cod_indicador_operacao => (String.t() | :unset), :indicador_destinatario => (Webmania.Number.t() | integer() | :unset), :classificacao_tributaria => (String.t() | :unset), :valor_calculo_reembolso_repasse => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bc", :bc, {:optional, :number}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsCbs}}, {"valor_ibs", :valor_ibs, {:optional, :number}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsIbsMunicipal}}, {"finalidade_nfse", :finalidade_nfse, {:optional, :number}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"localidade_incidencia", :localidade_incidencia, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia}}, {"cod_indicador_operacao", :cod_indicador_operacao, {:optional, :string}}, {"indicador_destinatario", :indicador_destinatario, {:optional, :number}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :string}}, {"valor_calculo_reembolso_repasse", :valor_calculo_reembolso_repasse, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseImpostosIbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor, :unset}, {:aliquota, :unset}, {:aliquota_efetiva, :unset}, {:aliquota_diferimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor => (Webmania.Number.t() | integer() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor", :valor, {:optional, :number}}, {"aliquota", :aliquota, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseImpostosIbsCbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor, :unset}, {:aliquota, :unset}, {:aliquota_efetiva, :unset}, {:aliquota_diferimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor => (Webmania.Number.t() | integer() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor", :valor, {:optional, :number}}, {"aliquota", :aliquota, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseImpostosIbsCbsIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor, :unset}, {:aliquota, :unset}, {:aliquota_efetiva, :unset}, {:aliquota_diferimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor => (Webmania.Number.t() | integer() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor", :valor, {:optional, :number}}, {"aliquota", :aliquota, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseImpostosIbsCbsIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:descricao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => (String.t() | :unset), :descricao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, {:optional, :string}}, {"descricao", :descricao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseImpostosIbsCbsLocalidadeIncidencia"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseIdentificacaoNfse do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data_competencia, :unset}, {:rps, :unset}, {:codigo_verificacao, :unset}, {:chave, :unset}, {:provedor, :unset}, {:nfse_substituida, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data_competencia => (String.t() | :unset), :rps => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseIdentificacaoNfseRps.t() | :unset), :codigo_verificacao => (String.t() | :unset), :chave => (String.t() | :unset), :provedor => (String.t() | :unset), :nfse_substituida => ((Webmania.Number.t() | integer() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data_competencia", :data_competencia, {:optional, :string}}, {"rps", :rps, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseIdentificacaoNfseRps}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"provedor", :provedor, {:optional, :string}}, {"nfse_substituida", :nfse_substituida, {:optional, {:nullable, :number}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseIdentificacaoNfse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseIdentificacaoNfseRps do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:serie, :unset}, {:numero, :unset}, {:data_emissao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:serie => (String.t() | :unset), :numero => (Webmania.Number.t() | integer() | :unset), :data_emissao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"serie", :serie, {:optional, :string}}, {"numero", :numero, {:optional, :number}}, {"data_emissao", :data_emissao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseIdentificacaoNfseRps"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:desconto_condicionado, :unset}, {:discriminacao, :unset}, {:valor_liquido, :unset}, {:codigo_tributacao_municipio, :unset}, {:valor, :unset}, {:codigo_cnae, :unset}, {:codigo_servico, :unset}, {:local_prestacao, :unset}, {:impostos, :unset}, {:desconto_incondicionado, :unset}, {:valor_recebido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:desconto_condicionado => (Webmania.Number.t() | integer() | :unset), :discriminacao => (String.t() | :unset), :valor_liquido => (Webmania.Number.t() | integer() | :unset), :codigo_tributacao_municipio => (String.t() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :codigo_cnae => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :local_prestacao => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemLocalPrestacao.t() | :unset), :impostos => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostos.t() | :unset), :desconto_incondicionado => (Webmania.Number.t() | integer() | :unset), :valor_recebido => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"desconto_condicionado", :desconto_condicionado, {:optional, :number}}, {"discriminacao", :discriminacao, {:optional, :string}}, {"valor_liquido", :valor_liquido, {:optional, :number}}, {"codigo_tributacao_municipio", :codigo_tributacao_municipio, {:optional, :string}}, {"valor", :valor, {:optional, :number}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"local_prestacao", :local_prestacao, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemLocalPrestacao}}, {"impostos", :impostos, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostos}}, {"desconto_incondicionado", :desconto_incondicionado, {:optional, :number}}, {"valor_recebido", :valor_recebido, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseServicosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemLocalPrestacaoVariant1 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uf, :unset}, {:cidade, :unset}, {:codigo_municipio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uf => (String.t() | :unset), :cidade => (String.t() | :unset), :codigo_municipio => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uf", :uf, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseServicosItemLocalPrestacaoVariant1"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemLocalPrestacao do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :MonitorDocumentNfseServicosItemLocalPrestacaoVariant1, value: Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemLocalPrestacaoVariant1.t()}
  @doc false
  def __variants__, do: [{:Text, :string}, {:MonitorDocumentNfseServicosItemLocalPrestacaoVariant1, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemLocalPrestacaoVariant1}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseServicosItemLocalPrestacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostos do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tributacao_iss, :unset}, {:tributacao_descricao, :unset}, {:iss_retido, :unset}, {:bc, :unset}, {:iss_aliquota, :unset}, {:iss_valor, :unset}, {:pis_aliquota, :unset}, {:pis_valor, :unset}, {:cofins_aliquota, :unset}, {:cofins_valor, :unset}, {:inss_aliquota, :unset}, {:inss_valor, :unset}, {:ir_aliquota, :unset}, {:ir_valor, :unset}, {:csll_aliquota, :unset}, {:csll_valor, :unset}, {:cp_aliquota, :unset}, {:cp_valor, :unset}, {:ibs_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tributacao_iss => (String.t() | :unset), :tributacao_descricao => (String.t() | :unset), :iss_retido => (Webmania.Number.t() | integer() | :unset), :bc => (Webmania.Number.t() | integer() | :unset), :iss_aliquota => (Webmania.Number.t() | integer() | :unset), :iss_valor => (Webmania.Number.t() | integer() | :unset), :pis_aliquota => (Webmania.Number.t() | integer() | :unset), :pis_valor => (Webmania.Number.t() | integer() | :unset), :cofins_aliquota => (Webmania.Number.t() | integer() | :unset), :cofins_valor => (Webmania.Number.t() | integer() | :unset), :inss_aliquota => (Webmania.Number.t() | integer() | :unset), :inss_valor => (Webmania.Number.t() | integer() | :unset), :ir_aliquota => (Webmania.Number.t() | integer() | :unset), :ir_valor => (Webmania.Number.t() | integer() | :unset), :csll_aliquota => (Webmania.Number.t() | integer() | :unset), :csll_valor => (Webmania.Number.t() | integer() | :unset), :cp_aliquota => (Webmania.Number.t() | integer() | :unset), :cp_valor => (Webmania.Number.t() | integer() | :unset), :ibs_cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tributacao_iss", :tributacao_iss, {:optional, :string}}, {"tributacao_descricao", :tributacao_descricao, {:optional, :string}}, {"iss_retido", :iss_retido, {:optional, :number}}, {"bc", :bc, {:optional, :number}}, {"iss_aliquota", :iss_aliquota, {:optional, :number}}, {"iss_valor", :iss_valor, {:optional, :number}}, {"pis_aliquota", :pis_aliquota, {:optional, :number}}, {"pis_valor", :pis_valor, {:optional, :number}}, {"cofins_aliquota", :cofins_aliquota, {:optional, :number}}, {"cofins_valor", :cofins_valor, {:optional, :number}}, {"inss_aliquota", :inss_aliquota, {:optional, :number}}, {"inss_valor", :inss_valor, {:optional, :number}}, {"ir_aliquota", :ir_aliquota, {:optional, :number}}, {"ir_valor", :ir_valor, {:optional, :number}}, {"csll_aliquota", :csll_aliquota, {:optional, :number}}, {"csll_valor", :csll_valor, {:optional, :number}}, {"cp_aliquota", :cp_aliquota, {:optional, :number}}, {"cp_valor", :cp_valor, {:optional, :number}}, {"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseServicosItemImpostos"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:bc, :unset}, {:cbs, :unset}, {:valor_ibs, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:finalidade_nfse, :unset}, {:situacao_tributaria, :unset}, {:localidade_incidencia, :unset}, {:cod_indicador_operacao, :unset}, {:indicador_destinatario, :unset}, {:classificacao_tributaria, :unset}, {:valor_calculo_reembolso_repasse, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:bc => (Webmania.Number.t() | integer() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsCbs.t() | :unset), :valor_ibs => (Webmania.Number.t() | integer() | :unset), :ibs_estadual => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal.t() | :unset), :finalidade_nfse => (Webmania.Number.t() | integer() | :unset), :situacao_tributaria => (String.t() | :unset), :localidade_incidencia => (Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia.t() | :unset), :cod_indicador_operacao => (String.t() | :unset), :indicador_destinatario => (Webmania.Number.t() | integer() | :unset), :classificacao_tributaria => (String.t() | :unset), :valor_calculo_reembolso_repasse => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"bc", :bc, {:optional, :number}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsCbs}}, {"valor_ibs", :valor_ibs, {:optional, :number}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal}}, {"finalidade_nfse", :finalidade_nfse, {:optional, :number}}, {"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"localidade_incidencia", :localidade_incidencia, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia}}, {"cod_indicador_operacao", :cod_indicador_operacao, {:optional, :string}}, {"indicador_destinatario", :indicador_destinatario, {:optional, :number}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :string}}, {"valor_calculo_reembolso_repasse", :valor_calculo_reembolso_repasse, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseServicosItemImpostosIbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor, :unset}, {:aliquota, :unset}, {:aliquota_efetiva, :unset}, {:aliquota_diferimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor => (Webmania.Number.t() | integer() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor", :valor, {:optional, :number}}, {"aliquota", :aliquota, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseServicosItemImpostosIbsCbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor, :unset}, {:aliquota, :unset}, {:aliquota_efetiva, :unset}, {:aliquota_diferimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor => (Webmania.Number.t() | integer() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor", :valor, {:optional, :number}}, {"aliquota", :aliquota, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseServicosItemImpostosIbsCbsIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor, :unset}, {:aliquota, :unset}, {:aliquota_efetiva, :unset}, {:aliquota_diferimento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor => (Webmania.Number.t() | integer() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor", :valor, {:optional, :number}}, {"aliquota", :aliquota, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseServicosItemImpostosIbsCbsIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:descricao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => (String.t() | :unset), :descricao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, {:optional, :string}}, {"descricao", :descricao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseServicosItemImpostosIbsCbsLocalidadeIncidencia"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseLocalPrestacaoVariant1 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cidade, :unset}, {:uf, :unset}, {:codigo_municipio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cidade => (String.t() | :unset), :uf => (String.t() | :unset), :codigo_municipio => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cidade", :cidade, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseLocalPrestacaoVariant1"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseLocalPrestacao do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :MonitorDocumentNfseLocalPrestacaoVariant1, value: Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseLocalPrestacaoVariant1.t()}
  @doc false
  def __variants__, do: [{:Text, :string}, {:MonitorDocumentNfseLocalPrestacaoVariant1, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseLocalPrestacaoVariant1}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseLocalPrestacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseDocs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:xml, :unset}, {:pdf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:xml => ((String.t() | nil) | :unset), :pdf => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"xml", :xml, {:optional, {:nullable, :string}}}, {"pdf", :pdf, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseDocs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentNfseFornecedorVariant0 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:razao_social, :unset}, {:documento, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:razao_social => (String.t() | :unset), :documento => ((String.t() | nil) | :unset), :uf => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"razao_social", :razao_social, {:optional, :string}}, {"documento", :documento, {:optional, {:nullable, :string}}}, {"uf", :uf, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentNfseFornecedorVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfe do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:data_emissao, :unset}, {:uf_carregamento, :unset}, {:carregamento, :unset}, {:valor, :unset}, {:seguro, :unset}, {:quantidade_mdfe, :unset}, {:percurso, :unset}, {:quantidade_nfe, :unset}, {:descarregamento, :unset}, {:ferroviario, :unset}, {:produto_predominante, :unset}, {:aquaviario, :unset}, {:modalidade, :unset}, {:rodoviario, :unset}, {:emitente, :unset}, {:chave, :unset}, {:peso_bruto, :unset}, {:empresa_uuid, :unset}, {:docs, :unset}, {:modelo, :unset}, {:uuid, :unset}, {:serie, :unset}, {:categoria, :unset}, {:numero, :unset}, {:uf_descarregamento, :unset}, {:aereo, :unset}, {:quantidade_cte, :unset}, {:data_captura, :unset}, {:fornecedor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => (String.t() | :unset), :data_emissao => (String.t() | :unset), :uf_carregamento => (String.t() | :unset), :carregamento => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeCarregamentoItem.t()] | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :seguro => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeSeguroItem.t()] | :unset), :quantidade_mdfe => (Webmania.Number.t() | integer() | :unset), :percurso => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfePercursoItem.t()] | :unset), :quantidade_nfe => (Webmania.Number.t() | integer() | :unset), :descarregamento => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDescarregamentoItem.t()] | :unset), :ferroviario => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFerroviario.t() | :unset), :produto_predominante => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominante.t() | :unset), :aquaviario => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviario.t() | :unset), :modalidade => (Webmania.Number.t() | integer() | :unset), :rodoviario => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviario.t() | :unset), :emitente => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :chave => (String.t() | :unset), :peso_bruto => (Webmania.Number.t() | integer() | :unset), :empresa_uuid => String.t(), :docs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDocs.t() | :unset), :modelo => String.t(), :uuid => String.t(), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :categoria => (String.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :uf_descarregamento => (String.t() | :unset), :aereo => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAereo.t() | :unset), :quantidade_cte => (Webmania.Number.t() | integer() | :unset), :data_captura => (String.t() | :unset), :fornecedor => ((Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFornecedorVariant0.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"uf_carregamento", :uf_carregamento, {:optional, :string}}, {"carregamento", :carregamento, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeCarregamentoItem}}}, {"valor", :valor, {:optional, :scalar}}, {"seguro", :seguro, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeSeguroItem}}}, {"quantidade_mdfe", :quantidade_mdfe, {:optional, :number}}, {"percurso", :percurso, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfePercursoItem}}}, {"quantidade_nfe", :quantidade_nfe, {:optional, :number}}, {"descarregamento", :descarregamento, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDescarregamentoItem}}}, {"ferroviario", :ferroviario, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFerroviario}}, {"produto_predominante", :produto_predominante, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominante}}, {"aquaviario", :aquaviario, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviario}}, {"modalidade", :modalidade, {:optional, :number}}, {"rodoviario", :rodoviario, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviario}}, {"emitente", :emitente, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"chave", :chave, {:optional, :string}}, {"peso_bruto", :peso_bruto, {:optional, :number}}, {"empresa_uuid", :empresa_uuid, :string}, {"docs", :docs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDocs}}, {"modelo", :modelo, :string}, {"uuid", :uuid, :string}, {"serie", :serie, {:optional, :scalar}}, {"categoria", :categoria, {:optional, :string}}, {"numero", :numero, {:optional, :scalar}}, {"uf_descarregamento", :uf_descarregamento, {:optional, :string}}, {"aereo", :aereo, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAereo}}, {"quantidade_cte", :quantidade_cte, {:optional, :number}}, {"data_captura", :data_captura, {:optional, :string}}, {"fornecedor", :fornecedor, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFornecedorVariant0}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfe"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeCarregamentoItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_municipio, :unset}, {:uf, :unset}, {:cidade, :unset}, {:nome_municipio, :unset}, {:documentos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_municipio => (String.t() | :unset), :uf => (String.t() | :unset), :cidade => (String.t() | :unset), :nome_municipio => (String.t() | :unset), :documentos => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeCarregamentoItemDocumentosItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"nome_municipio", :nome_municipio, {:optional, :string}}, {"documentos", :documentos, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeCarregamentoItemDocumentosItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeCarregamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeCarregamentoItemDocumentosItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo, :unset}, {:chave, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo => (String.t() | :unset), :chave => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo", :tipo, {:optional, :string}}, {"chave", :chave, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeCarregamentoItemDocumentosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeSeguroItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:responsavel, :unset}, {:seguradora, :unset}, {:numero_apolice, :unset}, {:numero_averbacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:responsavel => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeSeguroItemResponsavel.t() | :unset), :seguradora => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeSeguroItemSeguradora.t() | :unset), :numero_apolice => (String.t() | :unset), :numero_averbacao => ([String.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"responsavel", :responsavel, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeSeguroItemResponsavel}}, {"seguradora", :seguradora, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeSeguroItemSeguradora}}, {"numero_apolice", :numero_apolice, {:optional, :string}}, {"numero_averbacao", :numero_averbacao, {:optional, {:array, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeSeguroItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeSeguroItemResponsavel do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_responsavel, :unset}, {:cnpj, :unset}, {:cpf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_responsavel => (String.t() | :unset), :cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_responsavel", :tipo_responsavel, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeSeguroItemResponsavel"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeSeguroItemSeguradora do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:nome_seguradora, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :nome_seguradora => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"nome_seguradora", :nome_seguradora, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeSeguroItemSeguradora"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfePercursoItemVariant0 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uf, :unset}, {:ordem, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uf => (String.t() | :unset), :ordem => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uf", :uf, {:optional, :string}}, {"ordem", :ordem, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfePercursoItemVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfePercursoItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :MonitorDocumentMdfePercursoItemVariant0, value: Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfePercursoItemVariant0.t()} | %__MODULE__{variant: :Text, value: String.t()}
  @doc false
  def __variants__, do: [{:MonitorDocumentMdfePercursoItemVariant0, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfePercursoItemVariant0}, {:Text, :string}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfePercursoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDescarregamentoItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_municipio, :unset}, {:documentos_fiscais, :unset}, {:uf, :unset}, {:cidade, :unset}, {:nome_municipio, :unset}, {:documentos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_municipio => (String.t() | :unset), :documentos_fiscais => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem.t()] | :unset), :uf => (String.t() | :unset), :cidade => (String.t() | :unset), :nome_municipio => (String.t() | :unset), :documentos => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDescarregamentoItemDocumentosItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_municipio", :codigo_municipio, {:optional, :string}}, {"documentos_fiscais", :documentos_fiscais, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem}}}, {"uf", :uf, {:optional, :string}}, {"cidade", :cidade, {:optional, :string}}, {"nome_municipio", :nome_municipio, {:optional, :string}}, {"documentos", :documentos, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDescarregamentoItemDocumentosItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeDescarregamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:chave, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:chave => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"chave", :chave, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeDescarregamentoItemDocumentosFiscaisItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDescarregamentoItemDocumentosItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo, :unset}, {:chave, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo => (String.t() | :unset), :chave => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo", :tipo, {:optional, :string}}, {"chave", :chave, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeDescarregamentoItemDocumentosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFerroviario do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:trem, :unset}, {:vagoes, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:trem => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFerroviarioTrem.t() | :unset), :vagoes => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFerroviarioVagoesItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"trem", :trem, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFerroviarioTrem}}, {"vagoes", :vagoes, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFerroviarioVagoesItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeFerroviario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFerroviarioTrem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:prefixo, :unset}, {:data_liberacao, :unset}, {:origem, :unset}, {:destino, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:prefixo => (String.t() | :unset), :data_liberacao => (String.t() | :unset), :origem => (String.t() | :unset), :destino => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"prefixo", :prefixo, {:optional, :string}}, {"data_liberacao", :data_liberacao, {:optional, :string}}, {"origem", :origem, {:optional, :string}}, {"destino", :destino, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeFerroviarioTrem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFerroviarioVagoesItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:peso_bc, :unset}, {:peso_real, :unset}, {:tipo_vagao, :unset}, {:serie, :unset}, {:numero, :unset}, {:sequencia_vagao, :unset}, {:tonelada_util, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:peso_bc => (String.t() | :unset), :peso_real => (String.t() | :unset), :tipo_vagao => (String.t() | :unset), :serie => (String.t() | :unset), :numero => (String.t() | :unset), :sequencia_vagao => (String.t() | :unset), :tonelada_util => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"peso_bc", :peso_bc, {:optional, :string}}, {"peso_real", :peso_real, {:optional, :string}}, {"tipo_vagao", :tipo_vagao, {:optional, :string}}, {"serie", :serie, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"sequencia_vagao", :sequencia_vagao, {:optional, :string}}, {"tonelada_util", :tonelada_util, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeFerroviarioVagoesItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominante do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_carga, :unset}, {:nome, :unset}, {:gtin, :unset}, {:ncm, :unset}, {:lotacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_carga => (String.t() | :unset), :nome => (String.t() | :unset), :gtin => (String.t() | :unset), :ncm => (String.t() | :unset), :lotacao => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominanteLotacao.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_carga", :tipo_carga, {:optional, :string}}, {"nome", :nome, {:optional, :string}}, {"gtin", :gtin, {:optional, :string}}, {"ncm", :ncm, {:optional, :string}}, {"lotacao", :lotacao, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominanteLotacao}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeProdutoPredominante"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominanteLotacao do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:carregamento, :unset}, {:descarregamento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:carregamento => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento.t() | :unset), :descarregamento => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"carregamento", :carregamento, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento}}, {"descarregamento", :descarregamento, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeProdutoPredominanteLotacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:latitude, :unset}, {:longitude, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :latitude => (String.t() | :unset), :longitude => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"latitude", :latitude, {:optional, :string}}, {"longitude", :longitude, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeProdutoPredominanteLotacaoCarregamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:latitude, :unset}, {:longitude, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :latitude => (String.t() | :unset), :longitude => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"latitude", :latitude, {:optional, :string}}, {"longitude", :longitude, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeProdutoPredominanteLotacaoDescarregamento"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviario do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:irin, :unset}, {:tipo_embarcacao, :unset}, {:codigo_embarcacao, :unset}, {:nome_embarcacao, :unset}, {:numero_viagem, :unset}, {:codigo_porto_embarque, :unset}, {:codigo_porto_destino, :unset}, {:porto_transbordo, :unset}, {:tipo_navegacao, :unset}, {:terminal_carregamento, :unset}, {:terminal_descarregamento, :unset}, {:embarcacao_comboio, :unset}, {:carga_vazia, :unset}, {:transporte_vazio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:irin => (String.t() | :unset), :tipo_embarcacao => (String.t() | :unset), :codigo_embarcacao => (String.t() | :unset), :nome_embarcacao => (String.t() | :unset), :numero_viagem => (String.t() | :unset), :codigo_porto_embarque => (String.t() | :unset), :codigo_porto_destino => (String.t() | :unset), :porto_transbordo => (String.t() | :unset), :tipo_navegacao => (String.t() | :unset), :terminal_carregamento => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem.t()] | :unset), :terminal_descarregamento => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem.t()] | :unset), :embarcacao_comboio => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem.t()] | :unset), :carga_vazia => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioCargaVaziaItem.t()] | :unset), :transporte_vazio => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioTransporteVazioItem.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"irin", :irin, {:optional, :string}}, {"tipo_embarcacao", :tipo_embarcacao, {:optional, :string}}, {"codigo_embarcacao", :codigo_embarcacao, {:optional, :string}}, {"nome_embarcacao", :nome_embarcacao, {:optional, :string}}, {"numero_viagem", :numero_viagem, {:optional, :string}}, {"codigo_porto_embarque", :codigo_porto_embarque, {:optional, :string}}, {"codigo_porto_destino", :codigo_porto_destino, {:optional, :string}}, {"porto_transbordo", :porto_transbordo, {:optional, :string}}, {"tipo_navegacao", :tipo_navegacao, {:optional, :string}}, {"terminal_carregamento", :terminal_carregamento, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem}}}, {"terminal_descarregamento", :terminal_descarregamento, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem}}}, {"embarcacao_comboio", :embarcacao_comboio, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem}}}, {"carga_vazia", :carga_vazia, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioCargaVaziaItem}}}, {"transporte_vazio", :transporte_vazio, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioTransporteVazioItem}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeAquaviario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:nome, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => (String.t() | :unset), :nome => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, {:optional, :string}}, {"nome", :nome, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeAquaviarioTerminalCarregamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:nome, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => (String.t() | :unset), :nome => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, {:optional, :string}}, {"nome", :nome, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeAquaviarioTerminalDescarregamentoItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo, :unset}, {:identificador_balsa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo => (String.t() | :unset), :identificador_balsa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo", :codigo, {:optional, :string}}, {"identificador_balsa", :identificador_balsa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeAquaviarioEmbarcacaoComboioItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioCargaVaziaItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:identificador, :unset}, {:tipo_unidade, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:identificador => (String.t() | :unset), :tipo_unidade => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"identificador", :identificador, {:optional, :string}}, {"tipo_unidade", :tipo_unidade, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeAquaviarioCargaVaziaItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAquaviarioTransporteVazioItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:identificador, :unset}, {:tipo_unidade, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:identificador => (String.t() | :unset), :tipo_unidade => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"identificador", :identificador, {:optional, :string}}, {"tipo_unidade", :tipo_unidade, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeAquaviarioTransporteVazioItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviario do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:contratantes, :unset}, {:veiculo_reboque, :unset}, {:lacres, :unset}, {:veiculos, :unset}, {:ciot, :unset}, {:contratante, :unset}, {:condutor, :unset}, {:rntrc, :unset}, {:veiculo_tracao, :unset}, {:vale_pedagio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:contratantes => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioContratantesItem.t()] | :unset), :veiculo_reboque => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoReboqueItem.t()] | :unset), :lacres => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioLacresItem.t()] | :unset), :veiculos => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculosItem.t()] | :unset), :ciot => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioCiotItem.t()] | :unset), :contratante => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioContratanteItem.t()] | :unset), :condutor => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioCondutorItem.t()] | :unset), :rntrc => (String.t() | :unset), :veiculo_tracao => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoTracao.t() | :unset), :vale_pedagio => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioValePedagio.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"contratantes", :contratantes, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioContratantesItem}}}, {"veiculo_reboque", :veiculo_reboque, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoReboqueItem}}}, {"lacres", :lacres, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioLacresItem}}}, {"veiculos", :veiculos, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculosItem}}}, {"ciot", :ciot, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioCiotItem}}}, {"contratante", :contratante, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioContratanteItem}}}, {"condutor", :condutor, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioCondutorItem}}}, {"rntrc", :rntrc, {:optional, :string}}, {"veiculo_tracao", :veiculo_tracao, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoTracao}}, {"vale_pedagio", :vale_pedagio, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioValePedagio}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioContratantesItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:razao_social, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :razao_social => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioContratantesItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoReboqueItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_interno, :unset}, {:placa, :unset}, {:renavam, :unset}, {:tara, :unset}, {:capacidade_kg, :unset}, {:capacidade_m3, :unset}, {:tipo_carroceria, :unset}, {:uf_licenciamento, :unset}, {:proprietario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_interno => (String.t() | :unset), :placa => (String.t() | :unset), :renavam => (String.t() | :unset), :tara => (String.t() | :unset), :capacidade_kg => (String.t() | :unset), :capacidade_m3 => (String.t() | :unset), :tipo_carroceria => (String.t() | :unset), :uf_licenciamento => (String.t() | :unset), :proprietario => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_interno", :codigo_interno, {:optional, :string}}, {"placa", :placa, {:optional, :string}}, {"renavam", :renavam, {:optional, :string}}, {"tara", :tara, {:optional, :string}}, {"capacidade_kg", :capacidade_kg, {:optional, :string}}, {"capacidade_m3", :capacidade_m3, {:optional, :string}}, {"tipo_carroceria", :tipo_carroceria, {:optional, :string}}, {"uf_licenciamento", :uf_licenciamento, {:optional, :string}}, {"proprietario", :proprietario, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculoReboqueItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:razao_social, :unset}, {:nome_completo, :unset}, {:ie, :unset}, {:rntrc, :unset}, {:uf, :unset}, {:tipo_proprietario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :razao_social => (String.t() | :unset), :nome_completo => (String.t() | :unset), :ie => (String.t() | :unset), :rntrc => (String.t() | :unset), :uf => (String.t() | :unset), :tipo_proprietario => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"rntrc", :rntrc, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"tipo_proprietario", :tipo_proprietario, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculoReboqueItemProprietario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioLacresItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:numero, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:numero => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"numero", :numero, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioLacresItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculosItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tara, :unset}, {:uf, :unset}, {:capacidade_kg, :unset}, {:codigo_interno, :unset}, {:placa, :unset}, {:tipo_rodado, :unset}, {:condutor, :unset}, {:capacidade_m3, :unset}, {:tipo_carroceria, :unset}, {:renavam, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tara => (Webmania.Number.t() | integer() | :unset), :uf => (String.t() | :unset), :capacidade_kg => (Webmania.Number.t() | integer() | :unset), :codigo_interno => (String.t() | :unset), :placa => (String.t() | :unset), :tipo_rodado => (String.t() | :unset), :condutor => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculosItemCondutor.t() | :unset), :capacidade_m3 => (Webmania.Number.t() | integer() | :unset), :tipo_carroceria => (String.t() | :unset), :renavam => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tara", :tara, {:optional, :number}}, {"uf", :uf, {:optional, :string}}, {"capacidade_kg", :capacidade_kg, {:optional, :number}}, {"codigo_interno", :codigo_interno, {:optional, :string}}, {"placa", :placa, {:optional, :string}}, {"tipo_rodado", :tipo_rodado, {:optional, :string}}, {"condutor", :condutor, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculosItemCondutor}}, {"capacidade_m3", :capacidade_m3, {:optional, :number}}, {"tipo_carroceria", :tipo_carroceria, {:optional, :string}}, {"renavam", :renavam, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculosItemCondutor do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cpf, :unset}, {:nome, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cpf => (String.t() | :unset), :nome => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cpf", :cpf, {:optional, :string}}, {"nome", :nome, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculosItemCondutor"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioCiotItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj_responsavel, :unset}, {:cpf_responsavel, :unset}, {:numero, :unset}, {:cpf_cnpj, :unset}, {:codigo_ciot, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj_responsavel => (String.t() | :unset), :cpf_responsavel => (String.t() | :unset), :numero => (String.t() | :unset), :cpf_cnpj => (String.t() | :unset), :codigo_ciot => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj_responsavel", :cnpj_responsavel, {:optional, :string}}, {"cpf_responsavel", :cpf_responsavel, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"cpf_cnpj", :cpf_cnpj, {:optional, :string}}, {"codigo_ciot", :codigo_ciot, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioCiotItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioContratanteItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioContratanteItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioCondutorItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cpf, :unset}, {:nome, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cpf => (String.t() | :unset), :nome => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cpf", :cpf, {:optional, :string}}, {"nome", :nome, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioCondutorItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoTracao do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_interno, :unset}, {:placa, :unset}, {:renavam, :unset}, {:tara, :unset}, {:capacidade_kg, :unset}, {:capacidade_m3, :unset}, {:tipo_rodado, :unset}, {:tipo_carroceria, :unset}, {:uf_licenciamento, :unset}, {:proprietario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_interno => (String.t() | :unset), :placa => (String.t() | :unset), :renavam => (String.t() | :unset), :tara => (String.t() | :unset), :capacidade_kg => (String.t() | :unset), :capacidade_m3 => (String.t() | :unset), :tipo_rodado => (String.t() | :unset), :tipo_carroceria => (String.t() | :unset), :uf_licenciamento => (String.t() | :unset), :proprietario => (Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_interno", :codigo_interno, {:optional, :string}}, {"placa", :placa, {:optional, :string}}, {"renavam", :renavam, {:optional, :string}}, {"tara", :tara, {:optional, :string}}, {"capacidade_kg", :capacidade_kg, {:optional, :string}}, {"capacidade_m3", :capacidade_m3, {:optional, :string}}, {"tipo_rodado", :tipo_rodado, {:optional, :string}}, {"tipo_carroceria", :tipo_carroceria, {:optional, :string}}, {"uf_licenciamento", :uf_licenciamento, {:optional, :string}}, {"proprietario", :proprietario, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculoTracao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:razao_social, :unset}, {:nome_completo, :unset}, {:ie, :unset}, {:rntrc, :unset}, {:uf, :unset}, {:tipo_proprietario, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :razao_social => (String.t() | :unset), :nome_completo => (String.t() | :unset), :ie => (String.t() | :unset), :rntrc => (String.t() | :unset), :uf => (String.t() | :unset), :tipo_proprietario => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"ie", :ie, {:optional, :string}}, {"rntrc", :rntrc, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"tipo_proprietario", :tipo_proprietario, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioVeiculoTracaoProprietario"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioValePedagioVariant0 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj_fornecedor, :unset}, {:cnpj_responsavel, :unset}, {:numero_comprovante, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj_fornecedor => (String.t() | :unset), :cnpj_responsavel => (String.t() | :unset), :numero_comprovante => (String.t() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj_fornecedor", :cnpj_fornecedor, {:optional, :string}}, {"cnpj_responsavel", :cnpj_responsavel, {:optional, :string}}, {"numero_comprovante", :numero_comprovante, {:optional, :string}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioValePedagioVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioValePedagioVariant1Item do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj_fornecedor, :unset}, {:cnpj_responsavel, :unset}, {:cpf_responsavel, :unset}, {:valor, :unset}, {:comprovante, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj_fornecedor => (String.t() | :unset), :cnpj_responsavel => (String.t() | :unset), :cpf_responsavel => (String.t() | :unset), :valor => (String.t() | :unset), :comprovante => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj_fornecedor", :cnpj_fornecedor, {:optional, :string}}, {"cnpj_responsavel", :cnpj_responsavel, {:optional, :string}}, {"cpf_responsavel", :cpf_responsavel, {:optional, :string}}, {"valor", :valor, {:optional, :string}}, {"comprovante", :comprovante, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioValePedagioVariant1Item"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioValePedagio do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :MonitorDocumentMdfeRodoviarioValePedagioVariant0, value: Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioValePedagioVariant0.t()} | %__MODULE__{variant: :List, value: [Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioValePedagioVariant1Item.t()]}
  @doc false
  def __variants__, do: [{:MonitorDocumentMdfeRodoviarioValePedagioVariant0, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioValePedagioVariant0}, {:List, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeRodoviarioValePedagioVariant1Item}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeRodoviarioValePedagio"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeDocs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:xml, :unset}, {:pdf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:xml => ((String.t() | nil) | :unset), :pdf => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"xml", :xml, {:optional, {:nullable, :string}}}, {"pdf", :pdf, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeDocs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeAereo do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nacionalidade_aeronave, :unset}, {:matricula_aeronave, :unset}, {:numero_voo, :unset}, {:aerodromo_embarque, :unset}, {:aerodromo_destino, :unset}, {:data_voo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nacionalidade_aeronave => (String.t() | :unset), :matricula_aeronave => (String.t() | :unset), :numero_voo => (String.t() | :unset), :aerodromo_embarque => (String.t() | :unset), :aerodromo_destino => (String.t() | :unset), :data_voo => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nacionalidade_aeronave", :nacionalidade_aeronave, {:optional, :string}}, {"matricula_aeronave", :matricula_aeronave, {:optional, :string}}, {"numero_voo", :numero_voo, {:optional, :string}}, {"aerodromo_embarque", :aerodromo_embarque, {:optional, :string}}, {"aerodromo_destino", :aerodromo_destino, {:optional, :string}}, {"data_voo", :data_voo, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeAereo"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfeFornecedorVariant0 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:razao_social, :unset}, {:documento, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:razao_social => (String.t() | :unset), :documento => ((String.t() | nil) | :unset), :uf => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"razao_social", :razao_social, {:optional, :string}}, {"documento", :documento, {:optional, {:nullable, :string}}}, {"uf", :uf, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentMdfeFornecedorVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCte do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:cfop, :unset}, {:data_emissao, :unset}, {:documentos_fiscais, :unset}, {:servico, :unset}, {:remetente, :unset}, {:valor, :unset}, {:finalidade, :unset}, {:impostos, :unset}, {:expedidor, :unset}, {:natureza_operacao, :unset}, {:uf_termino_prestacao, :unset}, {:uf_inicio_prestacao, :unset}, {:tomador, :unset}, {:recebedor, :unset}, {:modalidade, :unset}, {:emitente, :unset}, {:indicador_tomador, :unset}, {:destinatario, :unset}, {:chave, :unset}, {:empresa_uuid, :unset}, {:docs, :unset}, {:modelo, :unset}, {:uuid, :unset}, {:serie, :unset}, {:categoria, :unset}, {:numero, :unset}, {:data_captura, :unset}, {:fornecedor, :unset}, {:relacao_empresa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => (String.t() | :unset), :cfop => ([String.t()] | :unset), :data_emissao => (String.t() | :unset), :documentos_fiscais => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentCteDocumentosFiscaisItem.t()] | :unset), :servico => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServico.t() | :unset), :remetente => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :finalidade => (Webmania.Number.t() | integer() | :unset), :impostos => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostos.t() | :unset), :expedidor => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :natureza_operacao => (String.t() | :unset), :uf_termino_prestacao => (String.t() | :unset), :uf_inicio_prestacao => (String.t() | :unset), :tomador => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :recebedor => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :modalidade => (Webmania.Number.t() | integer() | :unset), :emitente => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :indicador_tomador => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :destinatario => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :chave => (String.t() | :unset), :empresa_uuid => String.t(), :docs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteDocs.t() | :unset), :modelo => String.t(), :uuid => String.t(), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :categoria => (String.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_captura => (String.t() | :unset), :fornecedor => ((Webmania.Models.Api2MonitorManagement.MonitorDocumentCteFornecedorVariant0.t() | nil) | :unset), :relacao_empresa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, {:optional, :string}}, {"cfop", :cfop, {:optional, {:array, :string}}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"documentos_fiscais", :documentos_fiscais, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteDocumentosFiscaisItem}}}, {"servico", :servico, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServico}}, {"remetente", :remetente, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"valor", :valor, {:optional, :scalar}}, {"finalidade", :finalidade, {:optional, :number}}, {"impostos", :impostos, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostos}}, {"expedidor", :expedidor, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"natureza_operacao", :natureza_operacao, {:optional, :string}}, {"uf_termino_prestacao", :uf_termino_prestacao, {:optional, :string}}, {"uf_inicio_prestacao", :uf_inicio_prestacao, {:optional, :string}}, {"tomador", :tomador, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"recebedor", :recebedor, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"modalidade", :modalidade, {:optional, :number}}, {"emitente", :emitente, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"indicador_tomador", :indicador_tomador, {:optional, :scalar}}, {"destinatario", :destinatario, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"chave", :chave, {:optional, :string}}, {"empresa_uuid", :empresa_uuid, :string}, {"docs", :docs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteDocs}}, {"modelo", :modelo, :string}, {"uuid", :uuid, :string}, {"serie", :serie, {:optional, :scalar}}, {"categoria", :categoria, {:optional, :string}}, {"numero", :numero, {:optional, :scalar}}, {"data_captura", :data_captura, {:optional, :string}}, {"fornecedor", :fornecedor, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteFornecedorVariant0}}}, {"relacao_empresa", :relacao_empresa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCte"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteDocumentosFiscaisItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo, :unset}, {:chave, :unset}, {:pin, :unset}, {:previsao_entrega, :unset}, {:modelo, :unset}, {:numero, :unset}, {:serie, :unset}, {:data_emissao, :unset}, {:valor_total, :unset}, {:cfop, :unset}, {:descricao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo => (integer() | :unset), :chave => (String.t() | :unset), :pin => (String.t() | :unset), :previsao_entrega => (String.t() | :unset), :modelo => (String.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_emissao => (String.t() | :unset), :valor_total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cfop => (String.t() | :unset), :descricao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo", :tipo, {:optional, :i64}}, {"chave", :chave, {:optional, :string}}, {"pin", :pin, {:optional, :string}}, {"previsao_entrega", :previsao_entrega, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"numero", :numero, {:optional, :scalar}}, {"serie", :serie, {:optional, :scalar}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"valor_total", :valor_total, {:optional, :scalar}}, {"cfop", :cfop, {:optional, :string}}, {"descricao", :descricao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteDocumentosFiscaisItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServico do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao, :unset}, {:unidade_medida, :unset}, {:tipo, :unset}, {:valor_total, :unset}, {:documentos_originarios, :unset}, {:componentes_valor, :unset}, {:quantidade_carga, :unset}, {:modal, :unset}, {:tipo_servico, :unset}, {:informacoes_carga, :unset}, {:valor_recebido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao => (String.t() | :unset), :unidade_medida => (String.t() | :unset), :tipo => (Webmania.Number.t() | integer() | :unset), :valor_total => (Webmania.Number.t() | integer() | :unset), :documentos_originarios => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoDocumentosOriginariosItem.t()] | :unset), :componentes_valor => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoComponentesValorItem.t()] | :unset), :quantidade_carga => (Webmania.Number.t() | integer() | :unset), :modal => (String.t() | :unset), :tipo_servico => (Webmania.Number.t() | integer() | :unset), :informacoes_carga => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoInformacoesCarga.t() | :unset), :valor_recebido => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao", :descricao, {:optional, :string}}, {"unidade_medida", :unidade_medida, {:optional, :string}}, {"tipo", :tipo, {:optional, :number}}, {"valor_total", :valor_total, {:optional, :number}}, {"documentos_originarios", :documentos_originarios, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoDocumentosOriginariosItem}}}, {"componentes_valor", :componentes_valor, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoComponentesValorItem}}}, {"quantidade_carga", :quantidade_carga, {:optional, :number}}, {"modal", :modal, {:optional, :string}}, {"tipo_servico", :tipo_servico, {:optional, :number}}, {"informacoes_carga", :informacoes_carga, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoInformacoesCarga}}, {"valor_recebido", :valor_recebido, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteServico"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoDocumentosOriginariosItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo, :unset}, {:chave, :unset}, {:serie, :unset}, {:numero, :unset}, {:data_emissao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo => (String.t() | :unset), :chave => (String.t() | :unset), :serie => (String.t() | :unset), :numero => (String.t() | :unset), :data_emissao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo", :tipo, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"serie", :serie, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteServicoDocumentosOriginariosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoComponentesValorItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nome, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nome => (String.t() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nome", :nome, {:optional, :string}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteServicoComponentesValorItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoInformacoesCarga do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_total, :unset}, {:produto_predominante, :unset}, {:outras_caracteristicas, :unset}, {:cubagem, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_total => (Webmania.Number.t() | integer() | :unset), :produto_predominante => (String.t() | :unset), :outras_caracteristicas => (String.t() | :unset), :cubagem => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoInformacoesCargaCubagem.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_total", :valor_total, {:optional, :number}}, {"produto_predominante", :produto_predominante, {:optional, :string}}, {"outras_caracteristicas", :outras_caracteristicas, {:optional, :string}}, {"cubagem", :cubagem, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoInformacoesCargaCubagem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteServicoInformacoesCarga"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteServicoInformacoesCargaCubagem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade, :unset}, {:unidade, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade => (Webmania.Number.t() | integer() | :unset), :unidade => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade", :quantidade, {:optional, :number}}, {"unidade", :unidade, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteServicoInformacoesCargaCubagem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostos do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ibs_cbs, :unset}, {:icms, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ibs_cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbs.t() | :unset), :icms => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIcms.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbs}}, {"icms", :icms, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIcms}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostos"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:classificacao_tributaria, :unset}, {:indicador_doacao, :unset}, {:bc, :unset}, {:valor_ibs, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:situacao_tributaria_regular, :unset}, {:classificacao_tributaria_regular, :unset}, {:tributacao_regular, :unset}, {:compra_governamental, :unset}, {:credito_presumido, :unset}, {:estorno_credito, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => (String.t() | :unset), :classificacao_tributaria => (String.t() | :unset), :indicador_doacao => (boolean() | :unset), :bc => (Webmania.Number.t() | integer() | :unset), :valor_ibs => (Webmania.Number.t() | integer() | :unset), :ibs_estadual => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsIbsMunicipal.t() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCbs.t() | :unset), :situacao_tributaria_regular => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :tributacao_regular => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegular.t() | :unset), :compra_governamental => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamental.t() | :unset), :credito_presumido => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCreditoPresumido.t() | :unset), :estorno_credito => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsEstornoCredito.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :string}}, {"indicador_doacao", :indicador_doacao, {:optional, :boolean}}, {"bc", :bc, {:optional, :number}}, {"valor_ibs", :valor_ibs, {:optional, :number}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsIbsMunicipal}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCbs}}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"tributacao_regular", :tributacao_regular, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegular}}, {"compra_governamental", :compra_governamental, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamental}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCreditoPresumido}}, {"estorno_credito", :estorno_credito, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsEstornoCredito}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:aliquota_diferimento, :unset}, {:valor_diferimento, :unset}, {:valor_devolvido, :unset}, {:aliquota_reducao, :unset}, {:aliquota_efetiva, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_devolvido => (Webmania.Number.t() | integer() | :unset), :aliquota_reducao => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}, {"valor_diferimento", :valor_diferimento, {:optional, :number}}, {"valor_devolvido", :valor_devolvido, {:optional, :number}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:aliquota_diferimento, :unset}, {:valor_diferimento, :unset}, {:valor_devolvido, :unset}, {:aliquota_reducao, :unset}, {:aliquota_efetiva, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_devolvido => (Webmania.Number.t() | integer() | :unset), :aliquota_reducao => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}, {"valor_diferimento", :valor_diferimento, {:optional, :number}}, {"valor_devolvido", :valor_devolvido, {:optional, :number}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:aliquota_diferimento, :unset}, {:valor_diferimento, :unset}, {:valor_devolvido, :unset}, {:aliquota_reducao, :unset}, {:aliquota_efetiva, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_devolvido => (Webmania.Number.t() | integer() | :unset), :aliquota_reducao => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}, {"valor_diferimento", :valor_diferimento, {:optional, :number}}, {"valor_devolvido", :valor_devolvido, {:optional, :number}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegular do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ibs_estadual => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal.t() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsTributacaoRegular"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_efetiva, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_efetiva, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsTributacaoRegularIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_efetiva, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsTributacaoRegularCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamental do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ibs_estadual => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal.t() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCompraGovernamental"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCompraGovernamentalIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCompraGovernamentalCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsCreditoPresumido do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:aliquota_ibs, :unset}, {:valor_ibs, :unset}, {:valor_ibs_condicionado_suspensao, :unset}, {:aliquota_cbs, :unset}, {:valor_cbs, :unset}, {:valor_cbs_condicionado_suspensao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => (String.t() | :unset), :aliquota_ibs => (Webmania.Number.t() | integer() | :unset), :valor_ibs => (Webmania.Number.t() | integer() | :unset), :valor_ibs_condicionado_suspensao => (Webmania.Number.t() | integer() | :unset), :aliquota_cbs => (Webmania.Number.t() | integer() | :unset), :valor_cbs => (Webmania.Number.t() | integer() | :unset), :valor_cbs_condicionado_suspensao => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, {:optional, :string}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :number}}, {"valor_ibs", :valor_ibs, {:optional, :number}}, {"valor_ibs_condicionado_suspensao", :valor_ibs_condicionado_suspensao, {:optional, :number}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :number}}, {"valor_cbs", :valor_cbs, {:optional, :number}}, {"valor_cbs_condicionado_suspensao", :valor_cbs_condicionado_suspensao, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsCreditoPresumido"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIbsCbsEstornoCredito do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_ibs => (Webmania.Number.t() | integer() | :unset), :valor_cbs => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_ibs", :valor_ibs, {:optional, :number}}, {"valor_cbs", :valor_cbs, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIbsCbsEstornoCredito"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteImpostosIcms do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:valor, :unset}, {:valor_credito, :unset}, {:percentual_credito, :unset}, {:aliquota, :unset}, {:percentual_reducao, :unset}, {:codigo_cfop, :unset}, {:bc, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => (String.t() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :valor_credito => (Webmania.Number.t() | integer() | :unset), :percentual_credito => (Webmania.Number.t() | integer() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :percentual_reducao => (Webmania.Number.t() | integer() | :unset), :codigo_cfop => (String.t() | :unset), :bc => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"valor", :valor, {:optional, :number}}, {"valor_credito", :valor_credito, {:optional, :number}}, {"percentual_credito", :percentual_credito, {:optional, :number}}, {"aliquota", :aliquota, {:optional, :number}}, {"percentual_reducao", :percentual_reducao, {:optional, :number}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"bc", :bc, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteImpostosIcms"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteDocs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:xml, :unset}, {:pdf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:xml => ((String.t() | nil) | :unset), :pdf => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"xml", :xml, {:optional, {:nullable, :string}}}, {"pdf", :pdf, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteDocs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteFornecedorVariant0 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:razao_social, :unset}, {:documento, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:razao_social => (String.t() | :unset), :documento => ((String.t() | nil) | :unset), :uf => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"razao_social", :razao_social, {:optional, :string}}, {"documento", :documento, {:optional, {:nullable, :string}}}, {"uf", :uf, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteFornecedorVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:status, :unset}, {:cfop, :unset}, {:data_emissao, :unset}, {:documentos_fiscais, :unset}, {:servico, :unset}, {:valor, :unset}, {:finalidade, :unset}, {:impostos, :unset}, {:natureza_operacao, :unset}, {:uf_termino_prestacao, :unset}, {:uf_inicio_prestacao, :unset}, {:tomador, :unset}, {:modalidade, :unset}, {:emitente, :unset}, {:indicador_tomador, :unset}, {:chave, :unset}, {:empresa_uuid, :unset}, {:docs, :unset}, {:modelo, :unset}, {:uuid, :unset}, {:serie, :unset}, {:categoria, :unset}, {:numero, :unset}, {:data_captura, :unset}, {:fornecedor, :unset}, {:relacao_empresa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:status => (String.t() | :unset), :cfop => ([String.t()] | :unset), :data_emissao => (String.t() | :unset), :documentos_fiscais => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsDocumentosFiscaisItem.t()] | :unset), :servico => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServico.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :finalidade => (Webmania.Number.t() | integer() | :unset), :impostos => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostos.t() | :unset), :natureza_operacao => (String.t() | :unset), :uf_termino_prestacao => (String.t() | :unset), :uf_inicio_prestacao => (String.t() | :unset), :tomador => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :modalidade => (Webmania.Number.t() | integer() | :unset), :emitente => ((Webmania.Models.Api2MonitorManagement.MonitorPerson.t() | nil) | :unset), :indicador_tomador => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :chave => (String.t() | :unset), :empresa_uuid => String.t(), :docs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsDocs.t() | :unset), :modelo => String.t(), :uuid => String.t(), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :categoria => (String.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_captura => (String.t() | :unset), :fornecedor => ((Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsFornecedorVariant0.t() | nil) | :unset), :relacao_empresa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"status", :status, {:optional, :string}}, {"cfop", :cfop, {:optional, {:array, :string}}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"documentos_fiscais", :documentos_fiscais, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsDocumentosFiscaisItem}}}, {"servico", :servico, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServico}}, {"valor", :valor, {:optional, :scalar}}, {"finalidade", :finalidade, {:optional, :number}}, {"impostos", :impostos, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostos}}, {"natureza_operacao", :natureza_operacao, {:optional, :string}}, {"uf_termino_prestacao", :uf_termino_prestacao, {:optional, :string}}, {"uf_inicio_prestacao", :uf_inicio_prestacao, {:optional, :string}}, {"tomador", :tomador, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"modalidade", :modalidade, {:optional, :number}}, {"emitente", :emitente, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorPerson}}}, {"indicador_tomador", :indicador_tomador, {:optional, :scalar}}, {"chave", :chave, {:optional, :string}}, {"empresa_uuid", :empresa_uuid, :string}, {"docs", :docs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsDocs}}, {"modelo", :modelo, :string}, {"uuid", :uuid, :string}, {"serie", :serie, {:optional, :scalar}}, {"categoria", :categoria, {:optional, :string}}, {"numero", :numero, {:optional, :scalar}}, {"data_captura", :data_captura, {:optional, :string}}, {"fornecedor", :fornecedor, {:optional, {:nullable, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsFornecedorVariant0}}}, {"relacao_empresa", :relacao_empresa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsDocumentosFiscaisItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo, :unset}, {:chave, :unset}, {:pin, :unset}, {:previsao_entrega, :unset}, {:modelo, :unset}, {:numero, :unset}, {:serie, :unset}, {:data_emissao, :unset}, {:valor_total, :unset}, {:cfop, :unset}, {:descricao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo => (integer() | :unset), :chave => (String.t() | :unset), :pin => (String.t() | :unset), :previsao_entrega => (String.t() | :unset), :modelo => (String.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :data_emissao => (String.t() | :unset), :valor_total => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :cfop => (String.t() | :unset), :descricao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo", :tipo, {:optional, :i64}}, {"chave", :chave, {:optional, :string}}, {"pin", :pin, {:optional, :string}}, {"previsao_entrega", :previsao_entrega, {:optional, :string}}, {"modelo", :modelo, {:optional, :string}}, {"numero", :numero, {:optional, :scalar}}, {"serie", :serie, {:optional, :scalar}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"valor_total", :valor_total, {:optional, :scalar}}, {"cfop", :cfop, {:optional, :string}}, {"descricao", :descricao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsDocumentosFiscaisItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServico do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:descricao, :unset}, {:unidade_medida, :unset}, {:tipo, :unset}, {:valor_total, :unset}, {:documentos_originarios, :unset}, {:componentes_valor, :unset}, {:quantidade_carga, :unset}, {:modal, :unset}, {:tipo_servico, :unset}, {:informacoes_carga, :unset}, {:valor_recebido, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:descricao => (String.t() | :unset), :unidade_medida => (String.t() | :unset), :tipo => (Webmania.Number.t() | integer() | :unset), :valor_total => (Webmania.Number.t() | integer() | :unset), :documentos_originarios => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoDocumentosOriginariosItem.t()] | :unset), :componentes_valor => ([Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoComponentesValorItem.t()] | :unset), :quantidade_carga => (Webmania.Number.t() | integer() | :unset), :modal => (String.t() | :unset), :tipo_servico => (Webmania.Number.t() | integer() | :unset), :informacoes_carga => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoInformacoesCarga.t() | :unset), :valor_recebido => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"descricao", :descricao, {:optional, :string}}, {"unidade_medida", :unidade_medida, {:optional, :string}}, {"tipo", :tipo, {:optional, :number}}, {"valor_total", :valor_total, {:optional, :number}}, {"documentos_originarios", :documentos_originarios, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoDocumentosOriginariosItem}}}, {"componentes_valor", :componentes_valor, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoComponentesValorItem}}}, {"quantidade_carga", :quantidade_carga, {:optional, :number}}, {"modal", :modal, {:optional, :string}}, {"tipo_servico", :tipo_servico, {:optional, :number}}, {"informacoes_carga", :informacoes_carga, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoInformacoesCarga}}, {"valor_recebido", :valor_recebido, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsServico"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoDocumentosOriginariosItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo, :unset}, {:chave, :unset}, {:serie, :unset}, {:numero, :unset}, {:data_emissao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo => (String.t() | :unset), :chave => (String.t() | :unset), :serie => (String.t() | :unset), :numero => (String.t() | :unset), :data_emissao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo", :tipo, {:optional, :string}}, {"chave", :chave, {:optional, :string}}, {"serie", :serie, {:optional, :string}}, {"numero", :numero, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsServicoDocumentosOriginariosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoComponentesValorItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nome, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nome => (String.t() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nome", :nome, {:optional, :string}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsServicoComponentesValorItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoInformacoesCarga do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_total, :unset}, {:produto_predominante, :unset}, {:outras_caracteristicas, :unset}, {:cubagem, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_total => (Webmania.Number.t() | integer() | :unset), :produto_predominante => (String.t() | :unset), :outras_caracteristicas => (String.t() | :unset), :cubagem => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoInformacoesCargaCubagem.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_total", :valor_total, {:optional, :number}}, {"produto_predominante", :produto_predominante, {:optional, :string}}, {"outras_caracteristicas", :outras_caracteristicas, {:optional, :string}}, {"cubagem", :cubagem, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoInformacoesCargaCubagem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsServicoInformacoesCarga"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsServicoInformacoesCargaCubagem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:quantidade, :unset}, {:unidade, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:quantidade => (Webmania.Number.t() | integer() | :unset), :unidade => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"quantidade", :quantidade, {:optional, :number}}, {"unidade", :unidade, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsServicoInformacoesCargaCubagem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostos do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ibs_cbs, :unset}, {:icms, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ibs_cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbs.t() | :unset), :icms => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIcms.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ibs_cbs", :ibs_cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbs}}, {"icms", :icms, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIcms}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostos"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:classificacao_tributaria, :unset}, {:indicador_doacao, :unset}, {:bc, :unset}, {:valor_ibs, :unset}, {:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:situacao_tributaria_regular, :unset}, {:classificacao_tributaria_regular, :unset}, {:tributacao_regular, :unset}, {:compra_governamental, :unset}, {:credito_presumido, :unset}, {:estorno_credito, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => (String.t() | :unset), :classificacao_tributaria => (String.t() | :unset), :indicador_doacao => (boolean() | :unset), :bc => (Webmania.Number.t() | integer() | :unset), :valor_ibs => (Webmania.Number.t() | integer() | :unset), :ibs_estadual => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal.t() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCbs.t() | :unset), :situacao_tributaria_regular => (String.t() | :unset), :classificacao_tributaria_regular => (String.t() | :unset), :tributacao_regular => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular.t() | :unset), :compra_governamental => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental.t() | :unset), :credito_presumido => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido.t() | :unset), :estorno_credito => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsEstornoCredito.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"classificacao_tributaria", :classificacao_tributaria, {:optional, :string}}, {"indicador_doacao", :indicador_doacao, {:optional, :boolean}}, {"bc", :bc, {:optional, :number}}, {"valor_ibs", :valor_ibs, {:optional, :number}}, {"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCbs}}, {"situacao_tributaria_regular", :situacao_tributaria_regular, {:optional, :string}}, {"classificacao_tributaria_regular", :classificacao_tributaria_regular, {:optional, :string}}, {"tributacao_regular", :tributacao_regular, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular}}, {"compra_governamental", :compra_governamental, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental}}, {"credito_presumido", :credito_presumido, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido}}, {"estorno_credito", :estorno_credito, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsEstornoCredito}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:aliquota_diferimento, :unset}, {:valor_diferimento, :unset}, {:valor_devolvido, :unset}, {:aliquota_reducao, :unset}, {:aliquota_efetiva, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_devolvido => (Webmania.Number.t() | integer() | :unset), :aliquota_reducao => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}, {"valor_diferimento", :valor_diferimento, {:optional, :number}}, {"valor_devolvido", :valor_devolvido, {:optional, :number}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:aliquota_diferimento, :unset}, {:valor_diferimento, :unset}, {:valor_devolvido, :unset}, {:aliquota_reducao, :unset}, {:aliquota_efetiva, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_devolvido => (Webmania.Number.t() | integer() | :unset), :aliquota_reducao => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}, {"valor_diferimento", :valor_diferimento, {:optional, :number}}, {"valor_devolvido", :valor_devolvido, {:optional, :number}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:aliquota_diferimento, :unset}, {:valor_diferimento, :unset}, {:valor_devolvido, :unset}, {:aliquota_reducao, :unset}, {:aliquota_efetiva, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :aliquota_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_diferimento => (Webmania.Number.t() | integer() | :unset), :valor_devolvido => (Webmania.Number.t() | integer() | :unset), :aliquota_reducao => (Webmania.Number.t() | integer() | :unset), :aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}, {"aliquota_diferimento", :aliquota_diferimento, {:optional, :number}}, {"valor_diferimento", :valor_diferimento, {:optional, :number}}, {"valor_devolvido", :valor_devolvido, {:optional, :number}}, {"aliquota_reducao", :aliquota_reducao, {:optional, :number}}, {"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ibs_estadual => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal.t() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegular"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_efetiva, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_efetiva, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota_efetiva, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota_efetiva => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota_efetiva", :aliquota_efetiva, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsTributacaoRegularCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ibs_estadual, :unset}, {:ibs_municipal, :unset}, {:cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ibs_estadual => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual.t() | :unset), :ibs_municipal => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal.t() | :unset), :cbs => (Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ibs_estadual", :ibs_estadual, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual}}, {"ibs_municipal", :ibs_municipal, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal}}, {"cbs", :cbs, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamental"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsEstadual"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalIbsMunicipal"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:aliquota, :unset}, {:valor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:aliquota => (Webmania.Number.t() | integer() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"aliquota", :aliquota, {:optional, :number}}, {"valor", :valor, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCompraGovernamentalCbs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:classificacao, :unset}, {:aliquota_ibs, :unset}, {:valor_ibs, :unset}, {:valor_ibs_condicionado_suspensao, :unset}, {:aliquota_cbs, :unset}, {:valor_cbs, :unset}, {:valor_cbs_condicionado_suspensao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:classificacao => (String.t() | :unset), :aliquota_ibs => (Webmania.Number.t() | integer() | :unset), :valor_ibs => (Webmania.Number.t() | integer() | :unset), :valor_ibs_condicionado_suspensao => (Webmania.Number.t() | integer() | :unset), :aliquota_cbs => (Webmania.Number.t() | integer() | :unset), :valor_cbs => (Webmania.Number.t() | integer() | :unset), :valor_cbs_condicionado_suspensao => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"classificacao", :classificacao, {:optional, :string}}, {"aliquota_ibs", :aliquota_ibs, {:optional, :number}}, {"valor_ibs", :valor_ibs, {:optional, :number}}, {"valor_ibs_condicionado_suspensao", :valor_ibs_condicionado_suspensao, {:optional, :number}}, {"aliquota_cbs", :aliquota_cbs, {:optional, :number}}, {"valor_cbs", :valor_cbs, {:optional, :number}}, {"valor_cbs_condicionado_suspensao", :valor_cbs_condicionado_suspensao, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsCreditoPresumido"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIbsCbsEstornoCredito do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:valor_ibs, :unset}, {:valor_cbs, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:valor_ibs => (Webmania.Number.t() | integer() | :unset), :valor_cbs => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"valor_ibs", :valor_ibs, {:optional, :number}}, {"valor_cbs", :valor_cbs, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIbsCbsEstornoCredito"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsImpostosIcms do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:situacao_tributaria, :unset}, {:valor, :unset}, {:valor_credito, :unset}, {:percentual_credito, :unset}, {:aliquota, :unset}, {:percentual_reducao, :unset}, {:codigo_cfop, :unset}, {:bc, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:situacao_tributaria => (String.t() | :unset), :valor => (Webmania.Number.t() | integer() | :unset), :valor_credito => (Webmania.Number.t() | integer() | :unset), :percentual_credito => (Webmania.Number.t() | integer() | :unset), :aliquota => (Webmania.Number.t() | integer() | :unset), :percentual_reducao => (Webmania.Number.t() | integer() | :unset), :codigo_cfop => (String.t() | :unset), :bc => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"situacao_tributaria", :situacao_tributaria, {:optional, :string}}, {"valor", :valor, {:optional, :number}}, {"valor_credito", :valor_credito, {:optional, :number}}, {"percentual_credito", :percentual_credito, {:optional, :number}}, {"aliquota", :aliquota, {:optional, :number}}, {"percentual_reducao", :percentual_reducao, {:optional, :number}}, {"codigo_cfop", :codigo_cfop, {:optional, :string}}, {"bc", :bc, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsImpostosIcms"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsDocs do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:xml, :unset}, {:pdf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:xml => ((String.t() | nil) | :unset), :pdf => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"xml", :xml, {:optional, {:nullable, :string}}}, {"pdf", :pdf, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsDocs"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOsFornecedorVariant0 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:razao_social, :unset}, {:documento, :unset}, {:uf, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:razao_social => (String.t() | :unset), :documento => ((String.t() | nil) | :unset), :uf => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"razao_social", :razao_social, {:optional, :string}}, {"documento", :documento, {:optional, {:nullable, :string}}}, {"uf", :uf, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentCteOsFornecedorVariant0"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocument do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :MonitorDocumentNfe, value: Webmania.Models.Api2MonitorManagement.MonitorDocumentNfe.t()} | %__MODULE__{variant: :MonitorDocumentNfse, value: Webmania.Models.Api2MonitorManagement.MonitorDocumentNfse.t()} | %__MODULE__{variant: :MonitorDocumentMdfe, value: Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfe.t()} | %__MODULE__{variant: :MonitorDocumentCte, value: Webmania.Models.Api2MonitorManagement.MonitorDocumentCte.t()} | %__MODULE__{variant: :MonitorDocumentCteOs, value: Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOs.t()}
  @doc false
  def __variants__, do: [{:MonitorDocumentNfe, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfe}, {:MonitorDocumentNfse, Webmania.Models.Api2MonitorManagement.MonitorDocumentNfse}, {:MonitorDocumentMdfe, Webmania.Models.Api2MonitorManagement.MonitorDocumentMdfe}, {:MonitorDocumentCte, Webmania.Models.Api2MonitorManagement.MonitorDocumentCte}, {:MonitorDocumentCteOs, Webmania.Models.Api2MonitorManagement.MonitorDocumentCteOs}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocument"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorCursorPagination do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:per_page, :unset}, {:next_cursor, :unset}, {:prev_cursor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:per_page => integer(), :next_cursor => (String.t() | nil), :prev_cursor => (String.t() | nil), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"per_page", :per_page, :i64}, {"next_cursor", :next_cursor, {:nullable, :string}}, {"prev_cursor", :prev_cursor, {:nullable, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorCursorPagination"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentPage do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data, :unset}, {:meta, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data => [Webmania.Models.Api2MonitorManagement.MonitorDocument.t()], :meta => Webmania.Models.Api2MonitorManagement.MonitorDocumentPageMeta.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data", :data, {:array, Webmania.Models.Api2MonitorManagement.MonitorDocument}}, {"meta", :meta, Webmania.Models.Api2MonitorManagement.MonitorDocumentPageMeta}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentPage"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDocumentPageMeta do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :MonitorPagination, value: Webmania.Models.Api2MonitorManagement.MonitorPagination.t()} | %__MODULE__{variant: :MonitorCursorPagination, value: Webmania.Models.Api2MonitorManagement.MonitorCursorPagination.t()}
  @doc false
  def __variants__, do: [{:MonitorPagination, Webmania.Models.Api2MonitorManagement.MonitorPagination}, {:MonitorCursorPagination, Webmania.Models.Api2MonitorManagement.MonitorCursorPagination}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDocumentPageMeta"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorReport do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:relatorio, :unset}, {:modelo, :unset}, {:status, :unset}, {:processado, :unset}, {:total, :unset}, {:criado_em, :unset}, {:atualizado_em, :unset}, {:filtros, :unset}, {:url, :unset}, {:expira_em, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :relatorio => String.t(), :modelo => String.t(), :status => String.t(), :processado => (integer() | :unset), :total => (integer() | :unset), :criado_em => (String.t() | :unset), :atualizado_em => (String.t() | :unset), :filtros => (Webmania.Models.Api2MonitorManagement.MonitorReportFiltros.t() | :unset), :url => (String.t() | :unset), :expira_em => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"relatorio", :relatorio, :string}, {"modelo", :modelo, :string}, {"status", :status, :string}, {"processado", :processado, {:optional, :i64}}, {"total", :total, {:optional, :i64}}, {"criado_em", :criado_em, {:optional, :string}}, {"atualizado_em", :atualizado_em, {:optional, :string}}, {"filtros", :filtros, {:optional, Webmania.Models.Api2MonitorManagement.MonitorReportFiltros}}, {"url", :url, {:optional, :string}}, {"expira_em", :expira_em, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorReport"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorReportFiltros do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:selecao_manual, :unset}, {:periodo, :unset}, {:empresas, :unset}, {:categoria, :unset}, {:finalidade, :unset}, {:operacao, :unset}, {:modalidade, :unset}, {:status, :unset}, {:manifestacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:selecao_manual => (integer() | :unset), :periodo => (Webmania.Models.Api2MonitorManagement.MonitorReportFiltrosPeriodo.t() | :unset), :empresas => (integer() | :unset), :categoria => ([String.t()] | :unset), :finalidade => ([String.t()] | :unset), :operacao => ([String.t()] | :unset), :modalidade => ([String.t()] | :unset), :status => ([String.t()] | :unset), :manifestacao => ([String.t()] | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"selecao_manual", :selecao_manual, {:optional, :i64}}, {"periodo", :periodo, {:optional, Webmania.Models.Api2MonitorManagement.MonitorReportFiltrosPeriodo}}, {"empresas", :empresas, {:optional, :i64}}, {"categoria", :categoria, {:optional, {:array, :string}}}, {"finalidade", :finalidade, {:optional, {:array, :string}}}, {"operacao", :operacao, {:optional, {:array, :string}}}, {"modalidade", :modalidade, {:optional, {:array, :string}}}, {"status", :status, {:optional, {:array, :string}}}, {"manifestacao", :manifestacao, {:optional, {:array, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorReportFiltros"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorReportFiltrosPeriodo do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:de, :unset}, {:ate, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:de => (String.t() | :unset), :ate => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"de", :de, {:optional, :string}}, {"ate", :ate, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorReportFiltrosPeriodo"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorReportPage do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data, :unset}, {:meta, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data => [Webmania.Models.Api2MonitorManagement.MonitorReport.t()], :meta => Webmania.Models.Api2MonitorManagement.MonitorPagination.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data", :data, {:array, Webmania.Models.Api2MonitorManagement.MonitorReport}}, {"meta", :meta, Webmania.Models.Api2MonitorManagement.MonitorPagination}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorReportPage"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequest do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:modelo, :unset}, {:ambiente, :unset}, {:empresa_uuid, :unset}, {:categoria, :unset}, {:data_inicial, :unset}, {:data_final, :unset}, {:status, :unset}, {:manifestacao, :unset}, {:chave, :unset}, {:numero, :unset}, {:serie, :unset}, {:valor, :unset}, {:codigo_verificacao, :unset}, {:fornecedor, :unset}, {:pesquisa, :unset}, {:finalidade, :unset}, {:operacao, :unset}, {:ncm, :unset}, {:cfop, :unset}, {:serie_rps, :unset}, {:numero_rps, :unset}, {:codigo_cnae, :unset}, {:codigo_servico, :unset}, {:modalidade, :unset}, {:uf_carregamento, :unset}, {:uf_descarregamento, :unset}, {:placa_veiculo, :unset}, {:uf_inicio_prestacao, :unset}, {:uf_termino_prestacao, :unset}, {:relatorio, :unset}, {:documentos, :unset}, {:url_notificacao, :unset}, {:per_page, :unset}, {:page, :unset}, {:cursor, :unset}, {:paginacao, :unset}, {:ordenar_por, :unset}, {:ordem, :unset}, {:novos_documentos, :unset}, {:filtros, :unset}, {:filtros_modelo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:modelo => (String.t() | :unset), :ambiente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :empresa_uuid => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestEmpresaUuid.t() | :unset), :categoria => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestCategoria.t() | :unset), :data_inicial => (String.t() | :unset), :data_final => (String.t() | :unset), :status => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestStatus.t() | :unset), :manifestacao => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestManifestacao.t() | :unset), :chave => (String.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_verificacao => (String.t() | :unset), :fornecedor => (String.t() | :unset), :pesquisa => (String.t() | :unset), :finalidade => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFinalidade.t() | :unset), :operacao => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestOperacao.t() | :unset), :ncm => (String.t() | :unset), :cfop => (String.t() | :unset), :serie_rps => (String.t() | :unset), :numero_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cnae => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :modalidade => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestModalidade.t() | :unset), :uf_carregamento => (String.t() | :unset), :uf_descarregamento => (String.t() | :unset), :placa_veiculo => (String.t() | :unset), :uf_inicio_prestacao => (String.t() | :unset), :uf_termino_prestacao => (String.t() | :unset), :relatorio => (String.t() | :unset), :documentos => ([String.t()] | :unset), :url_notificacao => (String.t() | :unset), :per_page => (integer() | :unset), :page => (integer() | :unset), :cursor => (String.t() | :unset), :paginacao => (String.t() | :unset), :ordenar_por => (String.t() | :unset), :ordem => (String.t() | :unset), :novos_documentos => (boolean() | :unset), :filtros => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltros.t() | :unset), :filtros_modelo => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModelo.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"modelo", :modelo, {:optional, :string}}, {"ambiente", :ambiente, {:optional, :scalar}}, {"empresa_uuid", :empresa_uuid, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestEmpresaUuid}}, {"categoria", :categoria, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestCategoria}}, {"data_inicial", :data_inicial, {:optional, :string}}, {"data_final", :data_final, {:optional, :string}}, {"status", :status, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestStatus}}, {"manifestacao", :manifestacao, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestManifestacao}}, {"chave", :chave, {:optional, :string}}, {"numero", :numero, {:optional, :scalar}}, {"serie", :serie, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"fornecedor", :fornecedor, {:optional, :string}}, {"pesquisa", :pesquisa, {:optional, :string}}, {"finalidade", :finalidade, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFinalidade}}, {"operacao", :operacao, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestOperacao}}, {"ncm", :ncm, {:optional, :string}}, {"cfop", :cfop, {:optional, :string}}, {"serie_rps", :serie_rps, {:optional, :string}}, {"numero_rps", :numero_rps, {:optional, :scalar}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"modalidade", :modalidade, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestModalidade}}, {"uf_carregamento", :uf_carregamento, {:optional, :string}}, {"uf_descarregamento", :uf_descarregamento, {:optional, :string}}, {"placa_veiculo", :placa_veiculo, {:optional, :string}}, {"uf_inicio_prestacao", :uf_inicio_prestacao, {:optional, :string}}, {"uf_termino_prestacao", :uf_termino_prestacao, {:optional, :string}}, {"relatorio", :relatorio, {:optional, :string}}, {"documentos", :documentos, {:optional, {:array, :string}}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"per_page", :per_page, {:optional, :i64}}, {"page", :page, {:optional, :i64}}, {"cursor", :cursor, {:optional, :string}}, {"paginacao", :paginacao, {:optional, :string}}, {"ordenar_por", :ordenar_por, {:optional, :string}}, {"ordem", :ordem, {:optional, :string}}, {"novos_documentos", :novos_documentos, {:optional, :boolean}}, {"filtros", :filtros, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltros}}, {"filtros_modelo", :filtros_modelo, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModelo}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestEmpresaUuid do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestEmpresaUuid"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestCategoria do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestCategoria"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestStatus do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestManifestacao do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestManifestacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFinalidade do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Scalar, value: nil | boolean() | String.t() | integer() | Webmania.Number.t()} | %__MODULE__{variant: :List, value: [nil | boolean() | String.t() | integer() | Webmania.Number.t()]}
  @doc false
  def __variants__, do: [{:Scalar, :scalar}, {:List, {:array, :scalar}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestFinalidade"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestOperacao do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Scalar, value: nil | boolean() | String.t() | integer() | Webmania.Number.t()} | %__MODULE__{variant: :List, value: [nil | boolean() | String.t() | integer() | Webmania.Number.t()]}
  @doc false
  def __variants__, do: [{:Scalar, :scalar}, {:List, {:array, :scalar}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestOperacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestModalidade do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Scalar, value: nil | boolean() | String.t() | integer() | Webmania.Number.t()} | %__MODULE__{variant: :List, value: [nil | boolean() | String.t() | integer() | Webmania.Number.t()]}
  @doc false
  def __variants__, do: [{:Scalar, :scalar}, {:List, {:array, :scalar}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestModalidade"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltros do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ambiente, :unset}, {:empresa_uuid, :unset}, {:categoria, :unset}, {:data_inicial, :unset}, {:data_final, :unset}, {:status, :unset}, {:manifestacao, :unset}, {:chave, :unset}, {:numero, :unset}, {:serie, :unset}, {:valor, :unset}, {:codigo_verificacao, :unset}, {:fornecedor, :unset}, {:pesquisa, :unset}, {:relatorio, :unset}, {:url_notificacao, :unset}, {:per_page, :unset}, {:novos_documentos, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ambiente => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :empresa_uuid => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosEmpresaUuid.t() | :unset), :categoria => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosCategoria.t() | :unset), :data_inicial => (String.t() | :unset), :data_final => (String.t() | :unset), :status => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosStatus.t() | :unset), :manifestacao => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosManifestacao.t() | :unset), :chave => (String.t() | :unset), :numero => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :serie => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :valor => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_verificacao => (String.t() | :unset), :fornecedor => (String.t() | :unset), :pesquisa => (String.t() | :unset), :relatorio => (String.t() | :unset), :url_notificacao => (String.t() | :unset), :per_page => (integer() | :unset), :novos_documentos => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ambiente", :ambiente, {:optional, :scalar}}, {"empresa_uuid", :empresa_uuid, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosEmpresaUuid}}, {"categoria", :categoria, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosCategoria}}, {"data_inicial", :data_inicial, {:optional, :string}}, {"data_final", :data_final, {:optional, :string}}, {"status", :status, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosStatus}}, {"manifestacao", :manifestacao, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosManifestacao}}, {"chave", :chave, {:optional, :string}}, {"numero", :numero, {:optional, :scalar}}, {"serie", :serie, {:optional, :scalar}}, {"valor", :valor, {:optional, :scalar}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"fornecedor", :fornecedor, {:optional, :string}}, {"pesquisa", :pesquisa, {:optional, :string}}, {"relatorio", :relatorio, {:optional, :string}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"per_page", :per_page, {:optional, :i64}}, {"novos_documentos", :novos_documentos, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestFiltros"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosEmpresaUuid do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestFiltrosEmpresaUuid"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosCategoria do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestFiltrosCategoria"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosStatus do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestFiltrosStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosManifestacao do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Text, value: String.t()} | %__MODULE__{variant: :List, value: [String.t()]}
  @doc false
  def __variants__, do: [{:Text, :string}, {:List, {:array, :string}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestFiltrosManifestacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModelo do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:finalidade, :unset}, {:operacao, :unset}, {:ncm, :unset}, {:cfop, :unset}, {:codigo_verificacao, :unset}, {:serie_rps, :unset}, {:numero_rps, :unset}, {:codigo_cnae, :unset}, {:codigo_servico, :unset}, {:modalidade, :unset}, {:uf_carregamento, :unset}, {:uf_descarregamento, :unset}, {:placa_veiculo, :unset}, {:uf_inicio_prestacao, :unset}, {:uf_termino_prestacao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:finalidade => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModeloFinalidade.t() | :unset), :operacao => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModeloOperacao.t() | :unset), :ncm => (String.t() | :unset), :cfop => (String.t() | :unset), :codigo_verificacao => (String.t() | :unset), :serie_rps => (String.t() | :unset), :numero_rps => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :codigo_cnae => (String.t() | :unset), :codigo_servico => (String.t() | :unset), :modalidade => (Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModeloModalidade.t() | :unset), :uf_carregamento => (String.t() | :unset), :uf_descarregamento => (String.t() | :unset), :placa_veiculo => (String.t() | :unset), :uf_inicio_prestacao => (String.t() | :unset), :uf_termino_prestacao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"finalidade", :finalidade, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModeloFinalidade}}, {"operacao", :operacao, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModeloOperacao}}, {"ncm", :ncm, {:optional, :string}}, {"cfop", :cfop, {:optional, :string}}, {"codigo_verificacao", :codigo_verificacao, {:optional, :string}}, {"serie_rps", :serie_rps, {:optional, :string}}, {"numero_rps", :numero_rps, {:optional, :scalar}}, {"codigo_cnae", :codigo_cnae, {:optional, :string}}, {"codigo_servico", :codigo_servico, {:optional, :string}}, {"modalidade", :modalidade, {:optional, Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModeloModalidade}}, {"uf_carregamento", :uf_carregamento, {:optional, :string}}, {"uf_descarregamento", :uf_descarregamento, {:optional, :string}}, {"placa_veiculo", :placa_veiculo, {:optional, :string}}, {"uf_inicio_prestacao", :uf_inicio_prestacao, {:optional, :string}}, {"uf_termino_prestacao", :uf_termino_prestacao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestFiltrosModelo"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModeloFinalidade do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Scalar, value: nil | boolean() | String.t() | integer() | Webmania.Number.t()} | %__MODULE__{variant: :List, value: [nil | boolean() | String.t() | integer() | Webmania.Number.t()]}
  @doc false
  def __variants__, do: [{:Scalar, :scalar}, {:List, {:array, :scalar}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestFiltrosModeloFinalidade"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModeloOperacao do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Scalar, value: nil | boolean() | String.t() | integer() | Webmania.Number.t()} | %__MODULE__{variant: :List, value: [nil | boolean() | String.t() | integer() | Webmania.Number.t()]}
  @doc false
  def __variants__, do: [{:Scalar, :scalar}, {:List, {:array, :scalar}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestFiltrosModeloOperacao"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorSearchRequestFiltrosModeloModalidade do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :Scalar, value: nil | boolean() | String.t() | integer() | Webmania.Number.t()} | %__MODULE__{variant: :List, value: [nil | boolean() | String.t() | integer() | Webmania.Number.t()]}
  @doc false
  def __variants__, do: [{:Scalar, :scalar}, {:List, {:array, :scalar}}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorSearchRequestFiltrosModeloModalidade"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorEvent do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:documento_uuid, :unset}, {:protocolo, :unset}, {:registrado_em, :unset}, {:data_captura, :unset}, {:descricao_evento, :unset}, {:cnpj_autor, :unset}, {:cpf_autor, :unset}, {:justificativa, :unset}, {:correcao, :unset}, {:chave_cte, :unset}, {:protocolo_cte, :unset}, {:data_entrega, :unset}, {:documento_recebedor, :unset}, {:nome_recebedor, :unset}, {:data_encerramento, :unset}, {:cidade_encerramento, :unset}, {:uf_encerramento, :unset}, {:tipo_evento, :unset}, {:resumo, :unset}, {:alteracoes, :unset}, {:latitude, :unset}, {:longitude, :unset}, {:chaves_nfe, :unset}, {:mdfe, :unset}, {:log, :unset}, {:chave_substituta, :unset}, {:cpf_condutor, :unset}, {:nome_condutor, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :documento_uuid => String.t(), :protocolo => (String.t() | :unset), :registrado_em => String.t(), :data_captura => (String.t() | :unset), :descricao_evento => (String.t() | :unset), :cnpj_autor => (String.t() | :unset), :cpf_autor => (String.t() | :unset), :justificativa => (String.t() | :unset), :correcao => (String.t() | :unset), :chave_cte => (String.t() | :unset), :protocolo_cte => (String.t() | :unset), :data_entrega => (String.t() | :unset), :documento_recebedor => (String.t() | :unset), :nome_recebedor => (String.t() | :unset), :data_encerramento => (String.t() | :unset), :cidade_encerramento => (String.t() | :unset), :uf_encerramento => (String.t() | :unset), :tipo_evento => Webmania.Number.t() | integer(), :resumo => boolean(), :alteracoes => ([Webmania.Models.Api2MonitorManagement.MonitorEventAlteracoesItem.t()] | :unset), :latitude => (Webmania.Number.t() | integer() | :unset), :longitude => (Webmania.Number.t() | integer() | :unset), :chaves_nfe => ([String.t()] | :unset), :mdfe => (Webmania.Models.Api2MonitorManagement.MonitorEventMdfe.t() | :unset), :log => (Webmania.Models.Api2MonitorManagement.MonitorEventLog.t() | :unset), :chave_substituta => (String.t() | :unset), :cpf_condutor => (String.t() | :unset), :nome_condutor => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"documento_uuid", :documento_uuid, :string}, {"protocolo", :protocolo, {:optional, :string}}, {"registrado_em", :registrado_em, :string}, {"data_captura", :data_captura, {:optional, :string}}, {"descricao_evento", :descricao_evento, {:optional, :string}}, {"cnpj_autor", :cnpj_autor, {:optional, :string}}, {"cpf_autor", :cpf_autor, {:optional, :string}}, {"justificativa", :justificativa, {:optional, :string}}, {"correcao", :correcao, {:optional, :string}}, {"chave_cte", :chave_cte, {:optional, :string}}, {"protocolo_cte", :protocolo_cte, {:optional, :string}}, {"data_entrega", :data_entrega, {:optional, :string}}, {"documento_recebedor", :documento_recebedor, {:optional, :string}}, {"nome_recebedor", :nome_recebedor, {:optional, :string}}, {"data_encerramento", :data_encerramento, {:optional, :string}}, {"cidade_encerramento", :cidade_encerramento, {:optional, :string}}, {"uf_encerramento", :uf_encerramento, {:optional, :string}}, {"tipo_evento", :tipo_evento, :number}, {"resumo", :resumo, :boolean}, {"alteracoes", :alteracoes, {:optional, {:array, Webmania.Models.Api2MonitorManagement.MonitorEventAlteracoesItem}}}, {"latitude", :latitude, {:optional, :number}}, {"longitude", :longitude, {:optional, :number}}, {"chaves_nfe", :chaves_nfe, {:optional, {:array, :string}}}, {"mdfe", :mdfe, {:optional, Webmania.Models.Api2MonitorManagement.MonitorEventMdfe}}, {"log", :log, {:optional, Webmania.Models.Api2MonitorManagement.MonitorEventLog}}, {"chave_substituta", :chave_substituta, {:optional, :string}}, {"cpf_condutor", :cpf_condutor, {:optional, :string}}, {"nome_condutor", :nome_condutor, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorEvent"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorEventAlteracoesItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:grupo, :unset}, {:campo, :unset}, {:alteracao, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:grupo => (String.t() | :unset), :campo => (String.t() | :unset), :alteracao => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"grupo", :grupo, {:optional, :string}}, {"campo", :campo, {:optional, :string}}, {"alteracao", :alteracao, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorEventAlteracoesItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorEventMdfe do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:protocolo, :unset}, {:data_emissao, :unset}, {:modalidade, :unset}, {:chave, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:protocolo => (String.t() | :unset), :data_emissao => (String.t() | :unset), :modalidade => (Webmania.Number.t() | integer() | :unset), :chave => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"protocolo", :protocolo, {:optional, :string}}, {"data_emissao", :data_emissao, {:optional, :string}}, {"modalidade", :modalidade, {:optional, :number}}, {"chave", :chave, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorEventMdfe"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorEventLog do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:nProt, :unset}, {:dhRegEvento, :unset}, {:cStat, :unset}, {:xEvento, :unset}, {:xMotivo, :unset}, {:tpEvento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:nProt => (String.t() | :unset), :dhRegEvento => (String.t() | :unset), :cStat => (String.t() | :unset), :xEvento => (String.t() | :unset), :xMotivo => (String.t() | :unset), :tpEvento => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"nProt", :nProt, {:optional, :string}}, {"dhRegEvento", :dhRegEvento, {:optional, :string}}, {"cStat", :cStat, {:optional, :string}}, {"xEvento", :xEvento, {:optional, :string}}, {"xMotivo", :xMotivo, {:optional, :string}}, {"tpEvento", :tpEvento, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorEventLog"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorManifestationRequest do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:evento, :unset}, {:manifestacao, :unset}, {:justificativa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:evento => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :manifestacao => nil | boolean() | String.t() | integer() | Webmania.Number.t(), :justificativa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"evento", :evento, :scalar}, {"manifestacao", :manifestacao, :scalar}, {"justificativa", :justificativa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorManifestationRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorImportRequest do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:empresa_uuid, :unset}, {:chave, :unset}, {:xml, :unset}, {:url_arquivo_zip, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:empresa_uuid => String.t(), :chave => (String.t() | :unset), :xml => (String.t() | :unset), :url_arquivo_zip => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"empresa_uuid", :empresa_uuid, :string}, {"chave", :chave, {:optional, :string}}, {"xml", :xml, {:optional, :string}}, {"url_arquivo_zip", :url_arquivo_zip, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorImportRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorImportStatus do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:empresa_uuid, :unset}, {:status, :unset}, {:processado, :unset}, {:total, :unset}, {:importados, :unset}, {:descartados, :unset}, {:erro, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :empresa_uuid => (String.t() | :unset), :status => String.t(), :processado => integer(), :total => (integer() | :unset), :importados => [Webmania.Models.Api2MonitorManagement.MonitorImportStatusImportadosItem.t()], :descartados => [Webmania.Models.Api2MonitorManagement.MonitorImportStatusDescartadosItem.t()], :erro => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"empresa_uuid", :empresa_uuid, {:optional, :string}}, {"status", :status, :string}, {"processado", :processado, :i64}, {"total", :total, {:optional, :i64}}, {"importados", :importados, {:array, Webmania.Models.Api2MonitorManagement.MonitorImportStatusImportadosItem}}, {"descartados", :descartados, {:array, Webmania.Models.Api2MonitorManagement.MonitorImportStatusDescartadosItem}}, {"erro", :erro, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorImportStatus"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorImportStatusImportadosItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:arquivo, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:arquivo => String.t(), :uuid => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"arquivo", :arquivo, :string}, {"uuid", :uuid, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorImportStatusImportadosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorImportStatusDescartadosItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:arquivo, :unset}, {:motivo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:arquivo => String.t(), :motivo => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"arquivo", :arquivo, :string}, {"motivo", :motivo, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorImportStatusDescartadosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorCreateCompanyRequest do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:razao_social, :unset}, {:cep, :unset}, {:im, :unset}, {:certificado_base64, :unset}, {:certificado_senha, :unset}, {:modelos_download, :unset}, {:categorias_download, :unset}, {:ambiente_download, :unset}, {:url_notificacao, :unset}, {:dfe_retroativas, :unset}, {:status, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :razao_social => String.t(), :cep => String.t(), :im => (String.t() | :unset), :certificado_base64 => String.t(), :certificado_senha => String.t(), :modelos_download => ([String.t()] | :unset), :categorias_download => (integer() | :unset), :ambiente_download => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :url_notificacao => (String.t() | :unset), :dfe_retroativas => (boolean() | :unset), :status => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"razao_social", :razao_social, :string}, {"cep", :cep, :string}, {"im", :im, {:optional, :string}}, {"certificado_base64", :certificado_base64, :string}, {"certificado_senha", :certificado_senha, :string}, {"modelos_download", :modelos_download, {:optional, {:array, :string}}}, {"categorias_download", :categorias_download, {:optional, :i64}}, {"ambiente_download", :ambiente_download, {:optional, :scalar}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"dfe_retroativas", :dfe_retroativas, {:optional, :boolean}}, {"status", :status, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorCreateCompanyRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorUpdateCompanyRequest do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cnpj, :unset}, {:cpf, :unset}, {:razao_social, :unset}, {:cep, :unset}, {:im, :unset}, {:certificado_base64, :unset}, {:certificado_senha, :unset}, {:modelos_download, :unset}, {:categorias_download, :unset}, {:ambiente_download, :unset}, {:url_notificacao, :unset}, {:dfe_retroativas, :unset}, {:status, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cnpj => (String.t() | :unset), :cpf => (String.t() | :unset), :razao_social => (String.t() | :unset), :cep => (String.t() | :unset), :im => (String.t() | :unset), :certificado_base64 => (String.t() | :unset), :certificado_senha => (String.t() | :unset), :modelos_download => ([String.t()] | :unset), :categorias_download => (integer() | :unset), :ambiente_download => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :url_notificacao => (String.t() | :unset), :dfe_retroativas => (boolean() | :unset), :status => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cnpj", :cnpj, {:optional, :string}}, {"cpf", :cpf, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"cep", :cep, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"certificado_base64", :certificado_base64, {:optional, :string}}, {"certificado_senha", :certificado_senha, {:optional, :string}}, {"modelos_download", :modelos_download, {:optional, {:array, :string}}}, {"categorias_download", :categorias_download, {:optional, :i64}}, {"ambiente_download", :ambiente_download, {:optional, :scalar}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"dfe_retroativas", :dfe_retroativas, {:optional, :boolean}}, {"status", :status, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorUpdateCompanyRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorCreateMunicipalityRequest do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_ibge, :unset}, {:login, :unset}, {:senha, :unset}, {:im, :unset}, {:tipo_download, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_ibge => String.t(), :login => (String.t() | :unset), :senha => (String.t() | :unset), :im => (String.t() | :unset), :tipo_download => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_ibge", :codigo_ibge, :string}, {"login", :login, {:optional, :string}}, {"senha", :senha, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"tipo_download", :tipo_download, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorCreateMunicipalityRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorUpdateMunicipalityRequest do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:login, :unset}, {:senha, :unset}, {:im, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:login => (String.t() | :unset), :senha => (String.t() | :unset), :im => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"login", :login, {:optional, :string}}, {"senha", :senha, {:optional, :string}}, {"im", :im, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorUpdateMunicipalityRequest"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorImportNotificationData do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:empresa_uuid, :unset}, {:status, :unset}, {:processado, :unset}, {:total, :unset}, {:importados, :unset}, {:descartados, :unset}, {:erro, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :empresa_uuid => ((String.t() | nil) | :unset), :status => (String.t() | nil), :processado => (integer() | nil), :total => ((integer() | nil) | :unset), :importados => [Webmania.Models.Api2MonitorManagement.MonitorImportNotificationDataImportadosItem.t()], :descartados => [Webmania.Models.Api2MonitorManagement.MonitorImportNotificationDataDescartadosItem.t()], :erro => ((String.t() | nil) | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"empresa_uuid", :empresa_uuid, {:optional, {:nullable, :string}}}, {"status", :status, {:nullable, :string}}, {"processado", :processado, {:nullable, :i64}}, {"total", :total, {:optional, {:nullable, :i64}}}, {"importados", :importados, {:array, Webmania.Models.Api2MonitorManagement.MonitorImportNotificationDataImportadosItem}}, {"descartados", :descartados, {:array, Webmania.Models.Api2MonitorManagement.MonitorImportNotificationDataDescartadosItem}}, {"erro", :erro, {:optional, {:nullable, :string}}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorImportNotificationData"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorImportNotificationDataImportadosItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:arquivo, :unset}, {:uuid, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:arquivo => String.t(), :uuid => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"arquivo", :arquivo, :string}, {"uuid", :uuid, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorImportNotificationDataImportadosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorImportNotificationDataDescartadosItem do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:arquivo, :unset}, {:motivo, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:arquivo => String.t(), :motivo => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"arquivo", :arquivo, :string}, {"motivo", :motivo, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorImportNotificationDataDescartadosItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorNotification1 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_notificacao, :unset}, {:data, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_notificacao => integer(), :data => Webmania.Models.Api2MonitorManagement.MonitorDocument.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_notificacao", :tipo_notificacao, :i64}, {"data", :data, Webmania.Models.Api2MonitorManagement.MonitorDocument}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorNotification1"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorNotification2 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_notificacao, :unset}, {:data, :unset}, {:documento, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_notificacao => integer(), :data => Webmania.Models.Api2MonitorManagement.MonitorEvent.t(), :documento => (Webmania.Models.Api2MonitorManagement.MonitorDocument.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_notificacao", :tipo_notificacao, :i64}, {"data", :data, Webmania.Models.Api2MonitorManagement.MonitorEvent}, {"documento", :documento, {:optional, Webmania.Models.Api2MonitorManagement.MonitorDocument}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorNotification2"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorNotification3 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_notificacao, :unset}, {:data, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_notificacao => integer(), :data => Webmania.Models.Api2MonitorManagement.MonitorCompany.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_notificacao", :tipo_notificacao, :i64}, {"data", :data, Webmania.Models.Api2MonitorManagement.MonitorCompany}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorNotification3"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorNotification4 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_notificacao, :unset}, {:data, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_notificacao => integer(), :data => Webmania.Models.Api2MonitorManagement.MonitorNotification4Data.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_notificacao", :tipo_notificacao, :i64}, {"data", :data, Webmania.Models.Api2MonitorManagement.MonitorNotification4Data}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorNotification4"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorNotification4Data do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:tipo_download, :unset}, {:municipio, :unset}, {:uf, :unset}, {:codigo_ibge, :unset}, {:login, :unset}, {:im, :unset}, {:erro, :unset}, {:data_erro, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :tipo_download => (integer() | :unset), :municipio => (String.t() | :unset), :uf => (String.t() | :unset), :codigo_ibge => (String.t() | :unset), :login => (String.t() | :unset), :im => (String.t() | :unset), :erro => String.t(), :data_erro => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"tipo_download", :tipo_download, {:optional, :i64}}, {"municipio", :municipio, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"codigo_ibge", :codigo_ibge, {:optional, :string}}, {"login", :login, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"erro", :erro, :string}, {"data_erro", :data_erro, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorNotification4Data"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorNotification5 do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:tipo_notificacao, :unset}, {:data, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:tipo_notificacao => integer(), :data => Webmania.Models.Api2MonitorManagement.MonitorImportNotificationData.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"tipo_notificacao", :tipo_notificacao, :i64}, {"data", :data, Webmania.Models.Api2MonitorManagement.MonitorImportNotificationData}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorNotification5"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorNotification do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :MonitorNotification1, value: Webmania.Models.Api2MonitorManagement.MonitorNotification1.t()} | %__MODULE__{variant: :MonitorNotification2, value: Webmania.Models.Api2MonitorManagement.MonitorNotification2.t()} | %__MODULE__{variant: :MonitorNotification3, value: Webmania.Models.Api2MonitorManagement.MonitorNotification3.t()} | %__MODULE__{variant: :MonitorNotification4, value: Webmania.Models.Api2MonitorManagement.MonitorNotification4.t()} | %__MODULE__{variant: :MonitorNotification5, value: Webmania.Models.Api2MonitorManagement.MonitorNotification5.t()}
  @doc false
  def __variants__, do: [{:MonitorNotification1, Webmania.Models.Api2MonitorManagement.MonitorNotification1}, {:MonitorNotification2, Webmania.Models.Api2MonitorManagement.MonitorNotification2}, {:MonitorNotification3, Webmania.Models.Api2MonitorManagement.MonitorNotification3}, {:MonitorNotification4, Webmania.Models.Api2MonitorManagement.MonitorNotification4}, {:MonitorNotification5, Webmania.Models.Api2MonitorManagement.MonitorNotification5}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorNotification"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorManagement.MonitorDeleteCompanyMunicipalityResponse do
  @moduledoc "Nominal model from the pinned api2_monitor_management contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:msg, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:msg => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"msg", :msg, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_management::MonitorDeleteCompanyMunicipalityResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
