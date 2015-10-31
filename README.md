# ElixirDistributionApplicationExmaple

```
iex --name 'a@192.168.8.104' --erl "-config a" -pa "ebin/"  -S mix
iex --name 'b@192.168.8.104' --erl "-config b" -pa "ebin/"  -S mix
iex --name 'c@192.168.8.104' --erl "-config c" -pa "ebin/"  -S mix

```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add elixir_distribution_application_exmaple to your list of dependencies in `mix.exs`:

        def deps do
          [{:elixir_distribution_application_exmaple, "~> 0.0.1"}]
        end

  2. Ensure elixir_distribution_application_exmaple is started before your application:

        def application do
          [applications: [:elixir_distribution_application_exmaple]]
        end
# elixir_distribution_application_exmaple
