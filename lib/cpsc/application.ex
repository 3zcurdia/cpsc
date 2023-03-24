defmodule Cpsc.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Cpsc.Client.child_spec()
      # Starts a worker by calling: Cpsc.Worker.start_link(arg)
      # {Cpsc.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Cpsc.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
