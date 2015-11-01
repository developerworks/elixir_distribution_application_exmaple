defmodule ElixirDistributionApplicationExmaple do
  use Application
  require Logger
  def start(type, _args) do
    import Supervisor.Spec, warn: false
    Logger.info("ElixirDistributionApplicationExmaple application in #{inspect type} mode")
    children = [
      worker(ElixirDistributionApplicationExmaple.Worker, [])
    ]
    opts = [strategy: :one_for_one, name: ElixirDistributionApplicationExmaple.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
