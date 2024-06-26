# BrokerAPI

Open brokerage accounts, enable crypto and stock trading, and manage the ongoing user experience with Alpaca Broker API

Generated on 2024-06-12 with

```bash
openapi-generator-cli generate -i https://raw.githubusercontent.com/alpacahq/alpaca-docs/master/oas/broker/openapi.yaml -g elixir -o ./alpaca_broker_api_ex
```

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `alpaca_broker_api` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:alpaca_broker_api, "~> 1.0.0"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/alpaca_broker_api][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :alpaca_broker_api,
  base_url: "https://broker-api.sandbox.alpaca.markets",
  api_client_id: System.get_env("ALPACA_CLIENT_ID"),
  api_secret: System.get_env("ALPACA_CLIENT_SECRET")
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`BrokerAPI.Connection.new/1`:

```elixir
client = BrokerAPI.Connection.new(base_url: "https://broker-api.sandbox.alpaca.markets")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/alpaca_broker_api
