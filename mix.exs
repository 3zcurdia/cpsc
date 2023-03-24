defmodule Cpsc.MixProject do
  use Mix.Project

  def project do
    [
      app: :cpsc,
      name: "cpsc",
      version: "0.1.0",
      elixir: "~> 1.14",
      licenses: ["MIT"],
      description: "A simple wrapper for the CPSC API",
      source_url: "https://github.com/3zcurdia/cpsc",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Cpsc.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.29.3", only: :dev, runtime: false},
      {:finch, "~> 0.15.0"},
      {:jason, "~> 1.4"}
    ]
  end
end
