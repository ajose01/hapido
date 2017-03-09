defmodule Hapido.Todo do
  use Hapido.Web, :model

  schema "todos" do
    field :title
    field :description

    timestamps()
  end
end
