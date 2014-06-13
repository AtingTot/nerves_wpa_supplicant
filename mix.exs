Code.ensure_loaded?(Hex) and Hex.start

defmodule Mix.Tasks.Compile.WpaSupplicant do
  @shortdoc "Compiles the wpa_ex port binary"
  def run(_) do
    0=Mix.Shell.IO.cmd("make priv/wpa_ex")
  end
end

defmodule WpaSupplicant.Mixfile do
  use Mix.Project

  def project do
    [app: :wpa_supplicant,
     version: "0.0.1",
     elixir: "~> 0.14.0",
     compilers: [:WpaSupplicant, :elixir, :app],
     deps: deps(Mix.env),
     package: package,
     description: description
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: []]
  end

  defp description do
    """
    Elixir interface to the wpa_supplicant
    """
  end

  defp package do
    [
      contributors: ["Frank Hunleth"],
      license: "Apache-2.0",
      links: [
        { "GitHub", "https://github.com/fhunleth/wpa_supplicant.ex" },
        { "Issues", "https://github.com/fhunleth/wpa_supplicant.ex/issues" }
      ],
      files: [
        "lib",
        "src",
        "priv",
        "Makefile",
        "mix.exs",
        "README.md",
        "LICENSE"
        ]
      ]
  end

  defp deps(:docs) do
    [{ :ex_doc, github: "elixir-lang/ex_doc" }]
  end

  defp deps(_) do
    []
  end
end
