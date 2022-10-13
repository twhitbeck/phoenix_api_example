defmodule PhoenixApiExample.Repo.Migrations.CreatePerson do
  use Ecto.Migration

  def change do
    create table(:person) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string

      timestamps()
    end
  end
end
