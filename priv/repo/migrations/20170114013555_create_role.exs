defmodule Werewolf.Repo.Migrations.CreateRole do
  use Ecto.Migration

  def change do
    create table(:roles) do
      add :role, :string
      add :user_id, references(:users, on_delete: :nothing)
      add :game_id, references(:games, on_delete: :nothing)

      timestamps()
    end
    create index(:roles, [:user_id])
    create index(:roles, [:game_id])

  end
end
