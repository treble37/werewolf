defmodule Werewolf.User do
  use Werewolf.Web, :model

  schema "users" do
    field :name, :string
    has_many :roles, Role

    has_many :roles_games, through: [:roles, :game]

    timestamps
  end

  @required_fields ~w(name)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
