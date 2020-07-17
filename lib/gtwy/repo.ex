defmodule Gtwy.Repo do
  use Ecto.Repo,
    otp_app: :gtwy,
    adapter: Ecto.Adapters.Postgres
end
