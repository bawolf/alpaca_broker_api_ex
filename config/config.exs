# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :alpaca_broker_api,
  base_url: "https://broker-api.sandbox.alpaca.markets",
  api_client_id: System.get_env("ALPACA_CLIENT_ID"),
  api_secret: System.get_env("ALPACA_CLIENT_SECRET")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
#
# import_config "#{config_env()}.exs"
