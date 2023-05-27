defmodule Db.Application do
  use Application

  def start(_type, _args) do
    children = [
      Db.Repo
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Db.Supervisor)
  end
end
