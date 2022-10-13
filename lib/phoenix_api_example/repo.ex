defmodule PhoenixApiExample.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_api_example,
    adapter: Ecto.Adapters.Postgres
end
