defmodule Testlab.Repo do
  use Ecto.Repo,
    otp_app: :testlab,
    adapter: Ecto.Adapters.Postgres
end
