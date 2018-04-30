defmodule ProtobufNilExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :protobuf_nil_example,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: dialyzer()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:dialyxir, "~> 0.5", only: :dev, runtime: false},
      {:protobuf, "~> 0.5.3"}
    ]
  end

  defp dialyzer do
    [flags: [:error_handling, :race_conditions, :underspecs, :unmatched_returns]]
  end
end
