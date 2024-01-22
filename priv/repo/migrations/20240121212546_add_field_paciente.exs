defmodule Testlab.Repo.Migrations.AddFieldPaciente do
  use Ecto.Migration

  def change do
    alter table(:paciente) do
      add :telefone, :string, size: 12
      add :celular, :string, size: 20
    end
  end
end
