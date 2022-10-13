defmodule PhoenixApiExampleWeb.PersonView do
  use PhoenixApiExampleWeb, :view
  alias PhoenixApiExampleWeb.PersonView

  def render("index.json", %{person: person}) do
    %{data: render_many(person, PersonView, "person.json")}
  end

  def render("show.json", %{person: person}) do
    %{data: render_one(person, PersonView, "person.json")}
  end

  def render("person.json", %{person: person}) do
    %{
      id: person.id,
      first_name: person.first_name,
      last_name: person.last_name,
      email: person.email
    }
  end
end
