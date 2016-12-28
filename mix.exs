defmodule PigLatin.Mixfile do
  use Mix.Project

  def project do
    [app: :elixirway,
     version: "0.1.4",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp description do
    """
    A piglatin translator written in Elixir
    """
  end

  defp package do
    [# These are the default files included in the package
     name: :elixirway,
     files: ["lib", "mix.exs", "README.md", "LICENSE.txt"],
     maintainers: ["Brian Kelly"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/spilth/elixirway"}]
  end
end
