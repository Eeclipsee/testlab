defmodule Testlab.Repo.Migrations.AddPacientTable do
  use Ecto.Migration

  def change do
    create table(:paciente, primary_key: false) do
      add :pacient_id, :id, primary_key: true
      add :pacient_uuid, :uuid, primary_key: true, default: fragment("gen_random_uuid()")
      add :nome, :string, size: 100, null: false
      add :rg, :string, size: 12
      add :cpf, :string, size: 11
      add :endereco, :string, size: 150
      add :lugadouro, :string, size: 80
      add :numero, :string, size: 6
      add :nomemae, :string, size: 100
      add :idade, :integer
      add :idadeestimada, :boolean, default: false

      timestamps()
    end
  end
end
