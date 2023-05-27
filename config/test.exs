import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ojpp_a_web, OjppAWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "O9ni58viNb3UKJ1Jt1b5muJbHs2hq3xxVKNy46qUJcv7DF+HBejTeEC8W1H0/oM2",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# In test we don't send emails.
config :ojpp_a, OjppA.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
