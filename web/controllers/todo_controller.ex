defmodule Hapido.TodoController do
  use Hapido.Web, :controller

  alias Hapido.Todo

  def index(conn, _params) do
    todos = Repo.all(Todo)
    render conn, "index.json", todos: todos
  end

  def show(conn, %{"id" => id}) do
    todo = Repo.get!(Todo, id)
    render(conn, "show.json", todo: todo)
  end
end
