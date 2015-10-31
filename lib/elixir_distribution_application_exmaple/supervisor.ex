defmodule ElixirDistributionApplicationExmaple.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [], [name: {:global, __MODULE__}])
  end

  def init([]) do
    [ worker(ElixirDistributionApplicationExmaple.Worker, [])
    ] |> supervise strategy: :one_for_one
  end
end
