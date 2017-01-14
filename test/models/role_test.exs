defmodule Werewolf.RoleTest do
  use Werewolf.ModelCase

  alias Werewolf.Role

  @valid_attrs %{role: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Role.changeset(%Role{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Role.changeset(%Role{}, @invalid_attrs)
    refute changeset.valid?
  end
end
