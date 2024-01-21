defmodule TestlabWeb.DocumentationController do
  use TestlabWeb, :controller

  def documentation(conn, _params) do

    conn
    |> put_status(201)
    |> json(%{message: "DOCUMENTAÇÃO TESTE DE APLICAÇÃO",
              user: "para criação de usuario: /api/user",
              pacient: "para criação de paciente: /api/pacient",
              medico: "para criação de medico: /api/solicitante",
              status: :ok})

  end
end
