use Mix.Config

config :opencov, Opencov.Endpoint,
  http: [port: 4000],
  url: [scheme: "http", host: "localhost", port: 4000],
  secret_key_base: "my-super-secret-key-base-with-64-characters-so-that-i-dont-get-an-error"

config :opencov, Opencov.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: "postgres://opencov:opencov@postgres/opencov_local",
  pool_size: 20

config :opencov, :email,
  sender: "OpenCov <info@example.com>",
  smtp: [
    relay: "smtp.example.com",
    username: "info@example.com",
    password: "my-ultra-secret-password",
    port: 587,
    ssl: false,
    tls: :always,
    auth: :always
  ]
