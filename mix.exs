defmodule RclexMake.MixProject do
  use Mix.Project

  @description """
  Mix task which generates a list of message type packages at compile time for Rclex
  """

  @version "0.1.0"
  @source_url "https://github.com/rclex/rclex_gen_msgs"

  def project do
    [
      app: :rclex_gen_msgs,
      version: @version,
      elixir: "~> 1.9",
      description: @description,
      package: package(),
      name: "rclex_gen_msgs",
      docs: docs(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp package do
    %{
      name: "rclex_gen_msgs",
      files: [
        "lib",
        "mix.exs",
        "README.md",
        "LICENSE",
      ],
      licenses: ["Apache-2.0"],
      links: %{"Github" => @source_url}
    }
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.22", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      extras: ["README.md"],
      main: "readme",
      source_ref: "v#{@version}",
      source_url: @source_url
    ]
  end
end
