defmodule Webmania.Error do
  @moduledoc "A sanitized SDK failure. Protected recovery, result and Location require explicit reveal."
  defexception kind: "validation",
               message: "Value does not match the pinned contract.",
               status: nil,
               outcome: nil,
               protected_recovery: nil,
               protected_location: nil,
               protected_result: nil,
               sdk_call_completed: false,
               correlation_id: nil,
               request_id: nil,
               operation: nil,
               details: nil

  @type t :: %__MODULE__{
          kind: String.t(),
          message: String.t(),
          status: integer() | nil,
          outcome: String.t() | nil,
          protected_recovery: term(),
          protected_location: term(),
          protected_result: Webmania.JSON.value() | nil,
          sdk_call_completed: boolean(),
          correlation_id: term(),
          request_id: term(),
          operation: term(),
          details: term()
        }
  @spec new(String.t(), String.t()) :: t()
  def new(kind, message), do: %__MODULE__{kind: kind, message: message}
  @doc false
  def from_value(value) do
    fields = __struct__() |> Map.from_struct() |> Map.keys()

    Enum.reduce(fields, %__MODULE__{}, fn key, error ->
      case Map.fetch(value, Atom.to_string(key)) do
        {:ok, value} -> Map.put(error, key, value)
        :error -> error
      end
    end)
  end

  @spec reveal_recovery(t()) :: term()
  def reveal_recovery(%__MODULE__{protected_recovery: value}), do: value
  @spec reveal_location(t()) :: term()
  def reveal_location(%__MODULE__{protected_location: value}), do: value
  @spec reveal_result(t()) :: Webmania.JSON.value() | nil
  def reveal_result(%__MODULE__{protected_result: value}), do: value
  @spec sdk_call_completed?(t()) :: boolean()
  def sdk_call_completed?(%__MODULE__{sdk_call_completed: value}), do: value == true
  @impl true
  def message(%__MODULE__{}), do: "Webmania SDK failure."
end

defimpl Inspect, for: Webmania.Error do
  def inspect(_, _), do: "#Webmania.Error<[private]>"
end
