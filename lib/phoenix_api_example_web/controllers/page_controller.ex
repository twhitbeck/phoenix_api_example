defmodule PhoenixApiExampleWeb.PageController do
  use PhoenixApiExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
