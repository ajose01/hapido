# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hapido,
  ecto_repos: [Hapido.Repo]

# Configures the endpoint
config :hapido, Hapido.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PO22GO2Q4Da5zmvc/7iEAKyZIM5QeOT1fRjYdTMu87cccDv+RQdlCUgMZvW4hNDt",
  render_errors: [view: Hapido.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hapido.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
