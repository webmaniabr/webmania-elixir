defmodule WebmaniaSDK.MixProject do
  use Mix.Project

  def project do
    [
      app: :webmania_sdk,
      version: "0.1.0-alpha.6",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: [],
      description: "Typed Webmania Emissor Fiscal and Monitor Fiscal SDK (private alpha)",
      package: [
        licenses: ["LicenseRef-Webmania-Terms"],
        links: %{"Webmania Terms" => "https://webmania.com.br/termos-de-uso/"},
        files:
          ~w(lib priv mix.exs README.md CHANGELOG.md WIRE-NAMES.md LICENSE THIRD-PARTY-NOTICES.md THIRD_PARTY_LICENSES native/launcher.c native/PROTOCOL.md native/WORKER-PROTOCOL.md native/PROJECTION-HINTS.md native/PROVENANCE.json scripts api-metadata.json wire-name-audit.json)
      ],
      elixirc_options: [warnings_as_errors: true]
    ]
  end

  def application, do: [extra_applications: [:crypto]]
end
