# Generated. Run scripts/generate.py in the pinned Docker toolchain.
defmodule Webmania.Models.Api2MonitorReads.MonitorError do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:msg, :unset}, {:success, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => (String.t() | :unset), :message => (String.t() | :unset), :msg => (String.t() | :unset), :success => (boolean() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, {:optional, :string}}, {"message", :message, {:optional, :string}}, {"msg", :msg, {:optional, :string}}, {"success", :success, {:optional, :boolean}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorError"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorPagination do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:current_page, :unset}, {:last_page, :unset}, {:per_page, :unset}, {:total, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:current_page => integer(), :last_page => integer(), :per_page => integer(), :total => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"current_page", :current_page, :i64}, {"last_page", :last_page, :i64}, {"per_page", :per_page, :i64}, {"total", :total, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorPagination"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorAddress do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:cep, :unset}, {:municipio, :unset}, {:estado, :unset}, {:codigo_municipio, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:cep => (String.t() | :unset), :municipio => (String.t() | :unset), :estado => (String.t() | :unset), :codigo_municipio => (nil | boolean() | String.t() | integer() | Webmania.Number.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"cep", :cep, {:optional, :string}}, {"municipio", :municipio, {:optional, :string}}, {"estado", :estado, {:optional, :string}}, {"codigo_municipio", :codigo_municipio, {:optional, :scalar}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorAddress"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorCompany do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:status, :unset}, {:cpf, :unset}, {:cnpj, :unset}, {:nome_completo, :unset}, {:razao_social, :unset}, {:im, :unset}, {:endereco, :unset}, {:modelos_download, :unset}, {:categorias_download, :unset}, {:ambiente_download, :unset}, {:certificado_vencimento, :unset}, {:url_notificacao, :unset}, {:dfe_retroativas, :unset}, {:dfe_retroativas_total, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :status => (integer() | :unset), :cpf => (String.t() | :unset), :cnpj => (String.t() | :unset), :nome_completo => (String.t() | :unset), :razao_social => (String.t() | :unset), :im => (String.t() | :unset), :endereco => (Webmania.Models.Api2MonitorReads.MonitorAddress.t() | :unset), :modelos_download => ([String.t()] | :unset), :categorias_download => (integer() | :unset), :ambiente_download => (integer() | :unset), :certificado_vencimento => (String.t() | :unset), :url_notificacao => (String.t() | :unset), :dfe_retroativas => (boolean() | :unset), :dfe_retroativas_total => (integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"status", :status, {:optional, :i64}}, {"cpf", :cpf, {:optional, :string}}, {"cnpj", :cnpj, {:optional, :string}}, {"nome_completo", :nome_completo, {:optional, :string}}, {"razao_social", :razao_social, {:optional, :string}}, {"im", :im, {:optional, :string}}, {"endereco", :endereco, {:optional, Webmania.Models.Api2MonitorReads.MonitorAddress}}, {"modelos_download", :modelos_download, {:optional, {:array, :string}}}, {"categorias_download", :categorias_download, {:optional, :i64}}, {"ambiente_download", :ambiente_download, {:optional, :i64}}, {"certificado_vencimento", :certificado_vencimento, {:optional, :string}}, {"url_notificacao", :url_notificacao, {:optional, :string}}, {"dfe_retroativas", :dfe_retroativas, {:optional, :boolean}}, {"dfe_retroativas_total", :dfe_retroativas_total, {:optional, :i64}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorCompany"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorMunicipalityRegistration do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:uuid, :unset}, {:tipo_download, :unset}, {:municipio, :unset}, {:uf, :unset}, {:codigo_ibge, :unset}, {:login, :unset}, {:im, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:uuid => String.t(), :tipo_download => integer(), :municipio => String.t(), :uf => String.t(), :codigo_ibge => String.t(), :login => (String.t() | :unset), :im => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"uuid", :uuid, :string}, {"tipo_download", :tipo_download, :i64}, {"municipio", :municipio, :string}, {"uf", :uf, :string}, {"codigo_ibge", :codigo_ibge, :string}, {"login", :login, {:optional, :string}}, {"im", :im, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorMunicipalityRegistration"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorAvailableMunicipality do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:municipio, :unset}, {:uf, :unset}, {:codigo_ibge, :unset}, {:nativo, :unset}, {:im, :unset}, {:certificado, :unset}, {:login_senha, :unset}, {:cadastro_prefeitura, :unset}, {:domicilio_fiscal_municipio, :unset}, {:multiplos_servicos, :unset}, {:download_emitidas, :unset}, {:download_recebidas, :unset}, {:guia_cadastro_prefeitura, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:municipio => (String.t() | :unset), :uf => (String.t() | :unset), :codigo_ibge => (String.t() | :unset), :nativo => boolean(), :im => boolean(), :certificado => boolean(), :login_senha => boolean(), :cadastro_prefeitura => boolean(), :domicilio_fiscal_municipio => boolean(), :multiplos_servicos => boolean(), :download_emitidas => (boolean() | :unset), :download_recebidas => (boolean() | :unset), :guia_cadastro_prefeitura => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"municipio", :municipio, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"codigo_ibge", :codigo_ibge, {:optional, :string}}, {"nativo", :nativo, :boolean}, {"im", :im, :boolean}, {"certificado", :certificado, :boolean}, {"login_senha", :login_senha, :boolean}, {"cadastro_prefeitura", :cadastro_prefeitura, :boolean}, {"domicilio_fiscal_municipio", :domicilio_fiscal_municipio, :boolean}, {"multiplos_servicos", :multiplos_servicos, :boolean}, {"download_emitidas", :download_emitidas, {:optional, :boolean}}, {"download_recebidas", :download_recebidas, {:optional, :boolean}}, {"guia_cadastro_prefeitura", :guia_cadastro_prefeitura, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorAvailableMunicipality"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorDownloadStatistics do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:total_downloads, :unset}, {:empresas, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:total_downloads => integer(), :empresas => [Webmania.Models.Api2MonitorReads.MonitorDownloadStatisticsEmpresasItem.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"total_downloads", :total_downloads, :i64}, {"empresas", :empresas, {:array, Webmania.Models.Api2MonitorReads.MonitorDownloadStatisticsEmpresasItem}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorDownloadStatistics"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorDownloadStatisticsEmpresasItem do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:empresa_uuid, :unset}, {:total_downloads, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:empresa_uuid => String.t(), :total_downloads => integer(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"empresa_uuid", :empresa_uuid, :string}, {"total_downloads", :total_downloads, :i64}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorDownloadStatisticsEmpresasItem"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorCompanyPage do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data, :unset}, {:meta, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data => [Webmania.Models.Api2MonitorReads.MonitorCompany.t()], :meta => Webmania.Models.Api2MonitorReads.MonitorPagination.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data", :data, {:array, Webmania.Models.Api2MonitorReads.MonitorCompany}}, {"meta", :meta, Webmania.Models.Api2MonitorReads.MonitorPagination}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorCompanyPage"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorMunicipalityPage do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data, :unset}, {:meta, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data => [Webmania.Models.Api2MonitorReads.MonitorMunicipalityRegistration.t()], :meta => Webmania.Models.Api2MonitorReads.MonitorPagination.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data", :data, {:array, Webmania.Models.Api2MonitorReads.MonitorMunicipalityRegistration}}, {"meta", :meta, Webmania.Models.Api2MonitorReads.MonitorPagination}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorMunicipalityPage"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorAvailableMunicipalities do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:data, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:data => [Webmania.Models.Api2MonitorReads.MonitorAvailableMunicipality.t()], :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"data", :data, {:array, Webmania.Models.Api2MonitorReads.MonitorAvailableMunicipality}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorAvailableMunicipalities"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorListCompaniesQuery do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:page, :unset}, {:per_page, :unset}, {:pesquisa, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:page => (integer() | :unset), :per_page => (integer() | :unset), :pesquisa => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"page", :page, {:optional, :i64}}, {"per_page", :per_page, {:optional, :i64}}, {"pesquisa", :pesquisa, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorListCompaniesQuery"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorListCompanyMunicipalitiesQuery do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:page, :unset}, {:per_page, :unset}, {:municipio, :unset}, {:uf, :unset}, {:codigo_ibge, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:page => (integer() | :unset), :per_page => (integer() | :unset), :municipio => (String.t() | :unset), :uf => (String.t() | :unset), :codigo_ibge => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"page", :page, {:optional, :i64}}, {"per_page", :per_page, {:optional, :i64}}, {"municipio", :municipio, {:optional, :string}}, {"uf", :uf, {:optional, :string}}, {"codigo_ibge", :codigo_ibge, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorListCompanyMunicipalitiesQuery"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorListAvailableMunicipalitiesResponse do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [:variant, :value]
  @type t :: %__MODULE__{variant: :MonitorAvailableMunicipalities, value: Webmania.Models.Api2MonitorReads.MonitorAvailableMunicipalities.t()} | %__MODULE__{variant: :MonitorAvailableMunicipality, value: Webmania.Models.Api2MonitorReads.MonitorAvailableMunicipality.t()}
  @doc false
  def __variants__, do: [{:MonitorAvailableMunicipalities, Webmania.Models.Api2MonitorReads.MonitorAvailableMunicipalities}, {:MonitorAvailableMunicipality, Webmania.Models.Api2MonitorReads.MonitorAvailableMunicipality}]
  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorListAvailableMunicipalitiesResponse"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorListAvailableMunicipalitiesQuery do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:codigo_ibge, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:codigo_ibge => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"codigo_ibge", :codigo_ibge, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorListAvailableMunicipalitiesQuery"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2MonitorReads.MonitorGetDownloadStatisticsQuery do
  @moduledoc "Nominal model from the pinned api2_monitor_reads contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:ano, :unset}, {:mes, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:ano => (integer() | :unset), :mes => (Webmania.Number.t() | integer() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"ano", :ano, {:optional, :i64}}, {"mes", :mes, {:optional, :number}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_monitor_reads::MonitorGetDownloadStatisticsQuery"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
