defmodule Logger.Backends.JSON.Mixfile do
  use Mix.Project

  def project do
    [app: :json_logger,
     version: "0.6.0",
     elixir: ">= 1.0.0",
     deps: deps(),
     description: "A simple library for logging with JSON, best suited with Logstash.",
     package: package(),
     source_url: "https://github.com/coingaming/json_logger"]
  end

  def application, do: []

  defp deps do
    [
      {:poison, "~> 3.1"},
      {:iteraptor, github: "firstsports/elixir-iteraptor", only: [:prod], branch: "IH-476"},
#     {:iteraptor, git: "git@github.com:firstsports/elixir-iteraptor.git", branch: "IH-476"},
    ]
  end

  def package do
    [
      maintainers: ["Leeroy Ding"],
      licenses: ["Apache License 2.0"],
      links: %{"GitHub" => "https://github.com/coingaming/json_logger"}
    ]
  end
end
