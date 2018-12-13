defmodule DiscussWeb.Topic do
  use DiscussWeb, :model

  schema "topics" do
    field :title, :string
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title]) #produces a changeset
    |> validate_required([:title]) #add errors to a changeset
  end

end
