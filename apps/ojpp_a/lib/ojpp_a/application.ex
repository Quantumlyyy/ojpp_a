defmodule OjppA.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the PubSub system
      {Phoenix.PubSub, name: OjppA.PubSub},
      # Start Finch
      {Finch, name: OjppA.Finch}
      # Start a worker by calling: OjppA.Worker.start_link(arg)
      # {OjppA.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: OjppA.Supervisor)
  end
end
