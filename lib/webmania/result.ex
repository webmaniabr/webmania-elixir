defmodule Webmania.FileResponse do
  @moduledoc "Opaque file bytes, including HTML. bytes/1 explicitly reveals the complete binary."
  @derive {Inspect, only: []}
  defstruct [:status, :media_type, :file_kind, :bytes]

  @type t :: %__MODULE__{
          status: integer(),
          media_type: String.t(),
          file_kind: String.t(),
          bytes: binary()
        }
  @spec bytes(t()) :: binary()
  def bytes(%__MODULE__{bytes: bytes}), do: bytes
end

defmodule Webmania.FileResult do
  @moduledoc "A file, protected redirect, or typed NFS-e PDF pending response."
  @derive {Inspect, only: []}
  defstruct [:kind, :file, :pending, :protected_location, :status, :media_type]

  @type t :: %__MODULE__{
          kind: :file | :redirect | :pending,
          file: Webmania.FileResponse.t() | nil,
          pending: Webmania.Models.Api2EmitterFiles.NfsePdfPending.t() | nil,
          protected_location: String.t() | nil,
          status: integer() | nil,
          media_type: String.t() | nil
        }
  @spec reveal_location(t()) :: String.t() | nil
  def reveal_location(%__MODULE__{protected_location: value}), do: value
end
