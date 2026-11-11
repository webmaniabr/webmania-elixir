defmodule Webmania.Number do
  @moduledoc "An exact JSON number, including its decimal/exponent lexeme. Never uses float."
  @enforce_keys [:lexeme]
  defstruct [:lexeme]
  @opaque t :: %__MODULE__{lexeme: String.t()}
  @spec new(String.t() | integer()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(value) when is_integer(value), do: new(Integer.to_string(value))

  def new(value) when is_binary(value) and byte_size(value) <= 16_777_216 do
    if Regex.match?(~r/\A-?(?:0|[1-9][0-9]*)(?:\.[0-9]+)?(?:[eE][+-]?[0-9]+)?\z/, value) do
      [mantissa | exponent] = Regex.split(~r/[eE]/, value)
      all = String.replace(mantissa, ["-", "."], "")
      leading = String.trim_leading(all, "0")
      significant = String.trim_trailing(leading, "0")

      integer_digits =
        mantissa |> String.trim_leading("-") |> String.split(".", parts: 2) |> hd() |> byte_size()

      # Match the pinned backend's normalized decimal digit/exponent bounds,
      # while retaining the original text, signs, exponent case and zeroes.
      raw_exp =
        case exponent do
          [] -> 0
          [e] -> bounded_exponent(e)
        end

      exp = integer_digits + raw_exp - (byte_size(all) - byte_size(leading))

      if significant == "" or (byte_size(significant) <= 4096 and abs(exp) <= 4096),
        do: {:ok, %__MODULE__{lexeme: value}},
        else: invalid()
    else
      invalid()
    end
  end

  def new(_), do: invalid()

  defp bounded_exponent(text) do
    negative = String.starts_with?(text, "-")

    digits =
      text |> String.trim_leading("+") |> String.trim_leading("-") |> String.trim_leading("0")

    magnitude =
      cond do
        digits == "" -> 0
        byte_size(digits) > 12 -> 1_000_000_000_000
        true -> min(String.to_integer(digits), 1_000_000_000_000)
      end

    if negative, do: -magnitude, else: magnitude
  end

  defp invalid,
    do: {:error, Webmania.Error.new("validation", "Expected a bounded exact JSON number.")}

  @spec reveal(t()) :: String.t()
  def reveal(%__MODULE__{lexeme: value}), do: value
end

defimpl Inspect, for: Webmania.Number do
  def inspect(_, _), do: "#Webmania.Number<[private]>"
end
