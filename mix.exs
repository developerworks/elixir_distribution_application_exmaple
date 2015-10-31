defmodule ElixirDistributionApplicationExmaple.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_distribution_application_exmaple,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:crypto, :logger],
     mod: {ElixirDistributionApplicationExmaple, []}]
  end

  defp deps do
    [
      {:exrm, "~> 0.19.9"}
    ]
  end
end
