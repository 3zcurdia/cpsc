defmodule Cpsc do
  @moduledoc """
  Documentation for `Cpsc`.
  """

  @doc """
  It fetches all recalls for a given year.

  ## Examples

      iex> Cpsc.recalls()
      {:ok, %{...}}

  """
  @spec recalls(any) ::
          {:error, %{:__exception__ => true, :__struct__ => atom, optional(atom) => any}}
          | {:ok, any}
  def recalls(year) do
    Cpsc.Client.yearly_recalls(year)
  end
end
