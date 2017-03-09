defmodule Hapido.TodoView do
  use Hapido.Web, :view

  def render("index.json", %{todos: todos}) do
    %{
      todos: Enum.map(todos, &todo_json/1)
    }
  end

  def render("show.json", %{todo: todo}) do
    %{todo: todo_json(todo)}
  end

  def todo_json(todo) do
    %{
      title: todo.title,
      description: todo.description,
      inserted_at: todo.inserted_at, #DateTime.from_naive!(todo.inserted_at, "Etc/UTC"),
      updated_at: todo.updated_at #DateTime.from_naive!(todo.updated_at, "Etc/UTC")
    }
  end
end
