# Generated. Run scripts/generate.py in the pinned Docker toolchain.
defmodule Webmania.Models.Api2EmitterFiles.FiscalFileError do
  @moduledoc "Nominal model from the pinned api2_emitter_files contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:error, :unset}, {:message, :unset}, {:msg, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:error => (Webmania.JSON.value() | :unset), :message => (String.t() | :unset), :msg => (String.t() | :unset), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"error", :error, {:optional, :value}}, {"message", :message, {:optional, :string}}, {"msg", :msg, {:optional, :string}}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_files::FiscalFileError"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
defmodule Webmania.Models.Api2EmitterFiles.NfsePdfPending do
  @moduledoc "Nominal model from the pinned api2_emitter_files contract. Inspect hides all fields."
  @derive {Inspect, only: []}
  defstruct [{:msg, :unset}, {:__extra__, %{}}]
  @type t :: %__MODULE__{:msg => String.t(), :__extra__ => %{String.t() => Webmania.JSON.value()}}
  @doc false
  def __fields__, do: [{"msg", :msg, :string}]
  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)
  @doc false
  def __model__, do: "api2_emitter_files::NfsePdfPending"
  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)
  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)
  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}
  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)
  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}
  def to_value(value), do: Webmania.Model.to_value(value)
  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}
  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)
end
