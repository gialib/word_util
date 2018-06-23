defmodule WordUtil.Mixfile do
  use Mix.Project

  def project do
    [
      app: :word_util,
      name: "WordUtil",
      version: "0.1.2",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps(),
      aliases: aliases(),
      description: "Lib for elixir",
      source_url: "https://github.com/gialib/word_util",
      homepage_url: "https://github.com/gialib/word_util",
      package: package(),
      docs: [
        extras: ["README.md"],
        main: "readme"
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {WordUtil.Application, []}
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp package do
    %{
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["happy"],
      licenses: ["BSD 3-Clause"],
      links: %{"Github" => "https://github.com/gialib/word_util"}
    }
  end

  defp aliases do
    [
      test: ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
