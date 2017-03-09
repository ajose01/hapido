defmodule Hapido.PageController do
  use Hapido.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
