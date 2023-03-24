defmodule Cpsc.Client do
  @moduledoc """
  API client for cpsc restful service.
  """
  alias Finch.Response

  @default_headers [{"content-type", "application/json"}, {"accept", "application/json"}]

  @spec pool_size :: 5
  def pool_size, do: 5

  def child_spec do
    {Finch,
     name: __MODULE__,
     pools: %{
       "https://www.saferproducts.gov/" => [size: pool_size()]
     }}
  end

  def yearly_recalls!(year) do
    yearly_recalls(year)
    |> case do
      {:ok, result} -> result
      {:error, reason} -> raise reason
    end
  end

  def yearly_recalls(year) do
    :get
    |> Finch.build(
      "https://www.saferproducts.gov/RestWebServices/Recall?format=json&RecallDateStart=01-01-#{year}&RecallDateEnd=12-31-#{year}",
      @default_headers
    )
    |> Finch.request(__MODULE__)
    |> handle_json_response()
  end

  defp handle_json_response({:ok, %Response{body: body}}) do
    decoded = body |> Jason.decode!()

    {:ok, decoded}
  end

  defp handle_json_response(any), do: any
end
