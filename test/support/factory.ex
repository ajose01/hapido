defmodule Hapido.Factory do
  use ExMachina.Ecto, repo: Hapido.Repo

  def todo_factory do
    %Hapido.Todo{
      title: "Something I need to do",
      description: "List of steps I need to complete"
    }
  end
end
