defmodule PhoenixApiExample.PeopleFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixApiExample.People` context.
  """

  @doc """
  Generate a person.
  """
  def person_fixture(attrs \\ %{}) do
    {:ok, person} =
      attrs
      |> Enum.into(%{
        email: "some email",
        first_name: "some first_name",
        last_name: "some last_name"
      })
      |> PhoenixApiExample.People.create_person()

    person
  end
end
