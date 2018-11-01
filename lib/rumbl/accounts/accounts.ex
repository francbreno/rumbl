defmodule Rumbl.Accounts do
  @moduledoc """
  The **Accounts** context.
  """

  alias Rumbl.Accounts.User

  @doc """
  Returns a list of all users in the system.
  """
  def list_users do
    [
      %User{id: "1", name: "José", username: "josevalim"},
      %User{id: "2", name: "Bruce", username: "redrapids"},
      %User{id: "3", name: "Chris", username: "chrismccord"}
    ]
  end

  @doc """
  Returns a user with the provided **id**.
  """
  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  @doc """
  Returns a user with the provided filter **params**.
  """
  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
