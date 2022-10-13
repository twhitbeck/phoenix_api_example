defmodule PhoenixApiExampleWeb.PersonController do
  use PhoenixApiExampleWeb, :controller

  alias PhoenixApiExample.People
  alias PhoenixApiExample.People.Person

  action_fallback PhoenixApiExampleWeb.FallbackController

  def index(conn, _params) do
    person = People.list_person()
    render(conn, "index.json", person: person)
  end

  def create(conn, %{"person" => person_params}) do
    with {:ok, %Person{} = person} <- People.create_person(person_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.person_path(conn, :show, person))
      |> render("show.json", person: person)
    end
  end

  def show(conn, %{"id" => id}) do
    person = People.get_person!(id)
    render(conn, "show.json", person: person)
  end

  def update(conn, %{"id" => id, "person" => person_params}) do
    person = People.get_person!(id)

    with {:ok, %Person{} = person} <- People.update_person(person, person_params) do
      render(conn, "show.json", person: person)
    end
  end

  def delete(conn, %{"id" => id}) do
    person = People.get_person!(id)

    with {:ok, %Person{}} <- People.delete_person(person) do
      send_resp(conn, :no_content, "")
    end
  end
end
