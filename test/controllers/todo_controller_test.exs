defmodule Hapido.TodoControllerTest do
  use Hapido.ConnCase

  # test "#index renders a list of todos" do
  #   conn =  build_conn()
  #   todo = insert(:todo)
  #
  #   conn = get conn, todo_path(conn, :index)
  #
  #   assert json_response(conn, 200) == %{
  #     "todos" => [%{
  #       "title" => todo.title,
  #       "description" => todo.description,
  #       "inserted_at" => DateTime.from_naive!(todo.inserted_at, "Etc/UTC") |> DateTime.to_iso8601,
  #       "updated_at" => DateTime.from_naive!(todo.updated_at, "Etc/UTC") |> DateTime.to_iso8601
  #       }]
  #   }
  # end
end
