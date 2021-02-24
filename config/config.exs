# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :gig_action_demo, GigActionDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "a064hV3jReyx8Si8p8aeUa9e6cP0E7FoUX3PZQsSK5mhywuqPIpoTBCEfUCwgBWv",
  render_errors: [view: GigActionDemoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GigActionDemo.PubSub,
  live_view: [signing_salt: "NWceAzIT"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
