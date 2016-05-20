defmodule Debate.Random do
  use Debate.Web, :model

  schema "users" do
    field :grupo1, :string, virtual: true
    field :grupo2, :string, virtual: true
    field :grupo3, :string, virtual: true
    field :grupo4, :string, virtual: true
  end

  @required_fields ~w(grupo1 grupo2 grupo3 grupo4)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.
  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end