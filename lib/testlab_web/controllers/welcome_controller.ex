defmodule TestlabWeb.WelcomeController do
  use TestlabWeb, :controller

  def index(conn, params) do

    conn
    |> json(%{message: "bem vindo ao Testlab", status: :ok})

  end
end
