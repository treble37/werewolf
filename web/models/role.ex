defmodule Werewolf.Role do
  use Werewolf.Web, :model

  schema "roles" do
    field :role, :string
    belongs_to :user, Werewolf.User
    belongs_to :game, Werewolf.Game

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:role])
    |> validate_required([:role])
  end
end
