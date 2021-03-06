use Mix.Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.
#
# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.
config :node_monitor, NodeMonitorWeb.Endpoint,
  http: [
    port: 8888
  ],
  url: [
    host: "54.226.219.40",
    port: 80
  ],
  cache_static_manifest: "priv/static/cache_manifest.json"

# Do not print debug messages in production
config :logger, level: :info, metadata: [:request_id]

# Using releases (distillery)
config :phoenix, :serve_endpoints, true

# Finally import the config/prod.secret.exs which should be versioned
# separately.
import_config "prod.secret.exs"
