defmodule TestlabWeb.DocumentationController do
  use TestlabWeb, :controller

  def documentation(conn, _params) do

    conn
    |> json(%{message1: "DOCUMENTAÇÃO TESTE DE APLICAÇÃO",
              message2: "teste",
              message3: "para criação de usuario: /api/user",
              message4: "para criação de paciente: /api/pacient",
              message5: "para criação de medico: /api/solicitante",
              status: :ok})

  end
end
