defmodule Generic.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_in_action,
      version: "0.1.1",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "Elixir In Action",
      source_url: "https://github.com/oliveiragahenrique/elixir_in_action",
      homepage_url: "https://oliveiragahenrique.github.io/elixir_in_action",
      docs: [
        # The main page in the docs
        main: "chapter_1",
        logo: "logo.png",
        extras: [
          "./lib/chapter_1/chapter_1.md",
          "./lib/chapter_2/chapter_2.md",
          "./lib/chapter_3/chapter_3.md"
        ]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.22", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
