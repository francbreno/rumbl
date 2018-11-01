defmodule Rumbl.Accounts do
  @moduledoc """
  The **Accounts** context.
  """

  alias Rumbl.Accounts.User
  alias Rumbl.Repo

  @doc """
  Returns a list of all users in the system.
  """
  def list_users do
    Repo.all(User)
  end

  @doc """
  Returns a user with the provided **id**.
  """
  def get_user(id) do
    Repo.get(User, id)
  end

  @doc """
  Returns a user with the provided **id**.

  Raises an Ecto.NotFoundError if user does not exist.
  """
  def get_user!(id) do
    Repo.get!(User, id)
  end

  @doc """
  Returns a user with the provided filter **params**.
  """
  def get_user_by(params) do
    Repo.get_by(User, params)
  end

  @doc """
  Creates a new user.
  """
  def change_user(%User{} = user) do
    User.changetset(user, %{})
  end
end