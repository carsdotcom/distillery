defmodule OrderedApp.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ordered_app,
      version: "0.1.0",
      elixir: "~> 1.3",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {OrderedApp, []},
      extra_applications: [:crypto, :sasl, :logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:lager, "~> 3.9"},
      {:db_connection, "~> 2.6"},
      {:distillery, path: "../../../."}
    ]
  end
end
