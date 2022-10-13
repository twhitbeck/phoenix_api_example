defmodule PhoenixApiExample.People.Person do
  use Ecto.Schema
  import Ecto.Changeset

  schema "person" do
    field :email, :string
    field :first_name, :string
    field :last_name, :string

    timestamps()
  end

  @doc false
  def changeset(person, attrs) do
    person
    |> cast(attrs, [:first_name, :last_name, :email])
    |> validate_required([:first_name, :last_name, :email])
  end
end
