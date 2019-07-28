# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :channel,
  ecto_repos: [Channel.Repo]

# Configures the endpoint
config :channel, ChannelWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ufGSAytiEDv0HIyp+HEFcwgUnHNuqSj2Qh0nDi8psqrn7LHjL0+f1rWrBTXsFSow",
  render_errors: [view: ChannelWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Channel.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
