defmodule Webmania.Config do
  @moduledoc "Finite native call configuration. HTTP is restricted to literal loopback addresses by the backend."
  @derive {Inspect, only: []}
  defstruct base_url: nil,
            timeout_ms: 30_000,
            max_response_bytes: 16 * 1024 * 1024,
            max_header_bytes: 65_536,
            ca_pem: nil,
            trusted_file_origins: []

  @type t :: %__MODULE__{
          base_url: String.t() | nil,
          timeout_ms: pos_integer(),
          max_response_bytes: pos_integer(),
          max_header_bytes: pos_integer(),
          ca_pem: String.t() | nil,
          trusted_file_origins: [String.t()]
        }
  @spec new(keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def new(opts \\ []) do
    try do
      if not is_list(opts) or length(Enum.take(opts, 7)) > 6 or not Keyword.keyword?(opts),
        do: throw(:invalid)

      config = struct!(__MODULE__, opts)
      with {:ok, _} <- wire(config), do: {:ok, config}
    rescue
      _ -> invalid()
    catch
      _, _ -> invalid()
    end
  end

  @doc false
  def wire(%__MODULE__{} = config) do
    valid =
      is_integer(config.timeout_ms) and config.timeout_ms in 1..300_000 and
        is_integer(config.max_response_bytes) and config.max_response_bytes in 1..16_777_216 and
        is_integer(config.max_header_bytes) and config.max_header_bytes in 1..1_048_576 and
        (is_nil(config.base_url) or
           (is_binary(config.base_url) and byte_size(config.base_url) <= 8192)) and
        (is_nil(config.ca_pem) or
           (is_binary(config.ca_pem) and byte_size(config.ca_pem) <= 1_048_576)) and
        is_list(config.trusted_file_origins) and
        length(Enum.take(config.trusted_file_origins, 33)) <= 32 and
        Enum.all?(config.trusted_file_origins, &(is_binary(&1) and byte_size(&1) <= 8192))

    if valid do
      {:ok,
       config
       |> Map.from_struct()
       |> Enum.reject(fn {_, v} -> is_nil(v) end)
       |> Map.new(fn {k, v} -> {Atom.to_string(k), v} end)}
    else
      invalid()
    end
  end

  def wire(_), do: invalid()

  defp invalid,
    do: {:error, Webmania.Error.new("configuration", "Expected bounded client configuration.")}
end

defmodule Webmania.Credentials do
  @moduledoc "Scope-bound credentials. Inspect is always redacted."
  @derive {Inspect, only: []}
  defstruct [:kind, :values]
  @opaque t :: %__MODULE__{kind: :company | :reseller | :issuer | :monitor, values: map()}
  @spec company(String.t(), String.t(), String.t(), String.t()) ::
          {:ok, t()} | {:error, Webmania.Error.t()}
  def company(key, secret, token, token_secret),
    do: four(:company, key, secret, token, token_secret)

  @spec reseller(String.t(), String.t(), String.t(), String.t()) ::
          {:ok, t()} | {:error, Webmania.Error.t()}
  def reseller(key, secret, token, token_secret),
    do: four(:reseller, key, secret, token, token_secret)

  @spec issuer(String.t()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def issuer(token), do: token(:issuer, token)
  @spec monitor(String.t()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def monitor(token), do: token(:monitor, token)

  defp four(kind, key, secret, token, token_secret) do
    make(kind, %{
      "consumer_key" => key,
      "consumer_secret" => secret,
      "access_token" => token,
      "access_token_secret" => token_secret
    })
  end

  defp token(kind, value), do: make(kind, %{"token" => value})

  defp make(kind, values) do
    if Enum.all?(values, fn {_, v} -> valid_text?(v) end),
      do: {:ok, %__MODULE__{kind: kind, values: values}},
      else:
        {:error,
         Webmania.Error.new(
           "configuration",
           "Expected nonempty credentials without control characters."
         )}
  end

  @doc false
  def valid_text?(value),
    do:
      is_binary(value) and byte_size(value) in 1..8192 and String.valid?(value) and
        not Regex.match?(~r/[\x00-\x20\x7f]/, value)

  @spec reveal(t()) :: map()
  def reveal(%__MODULE__{kind: kind, values: values}),
    do: Map.put(values, "kind", Atom.to_string(kind))
end

defmodule Webmania.FileAuth do
  @moduledoc "Explicit file authorization. Document tokens require no company credentials."
  @derive {Inspect, only: []}
  defstruct [:mode, :token]

  @opaque t :: %__MODULE__{
            mode: :company | :issuer | :document_token | :anonymous | :capability,
            token: String.t() | nil
          }
  @spec company() :: t()
  def company, do: %__MODULE__{mode: :company}
  @spec issuer() :: t()
  def issuer, do: %__MODULE__{mode: :issuer}
  @spec anonymous() :: t()
  def anonymous, do: %__MODULE__{mode: :anonymous}
  @spec public_report() :: t()
  def public_report, do: %__MODULE__{mode: :capability}
  @spec document_token(String.t()) :: {:ok, t()} | {:error, Webmania.Error.t()}
  def document_token(token) do
    if Webmania.Credentials.valid_text?(token),
      do: {:ok, %__MODULE__{mode: :document_token, token: token}},
      else: {:error, Webmania.Error.new("capability", "Expected a bounded document token.")}
  end

  @doc false
  def wire(%__MODULE__{mode: :document_token, token: token}) do
    with {:ok, _} <- document_token(token),
         do: {:ok, %{"mode" => "document_token", "token" => token}}
  end

  def wire(%__MODULE__{mode: mode, token: nil})
      when mode in [:company, :issuer, :anonymous, :capability],
      do: {:ok, %{"mode" => Atom.to_string(mode)}}

  def wire(_),
    do: {:error, Webmania.Error.new("capability", "Expected explicit file authorization.")}
end
