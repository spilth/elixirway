# Elixirway

Piglatin translator written in Elixir

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `elixirway` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:elixirway, "~> 0.1.3"}]
    end
    ```

  2. Ensure `piglatin` is started before your application:

    ```elixir
    def application do
      [applications: [:piglatin]]
    end
    ```
