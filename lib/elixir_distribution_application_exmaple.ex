defmodule ElixirDistributionApplicationExmaple do
  use Application

  def start(:normal, []) do
    ElixirDistributionApplicationExmaple.Supervisor.start_link
  end

  def start({:takeover, _node}, []) do
    ElixirDistributionApplicationExmaple.Supervisor.start_link
  end

  def stop(_state) do
    :ok
  end
end
