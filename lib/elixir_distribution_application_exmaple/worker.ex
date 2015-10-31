require Logger

defmodule ElixirDistributionApplicationExmaple.Worker do
	use GenServer

	def start_link do
		GenServer.start_link(__MODULE__, [], [name: {:global, __MODULE__}])
	end

  @doc """
  停止
  """
  def stop do
    Logger.debug "Stop worker"
    GenServer.call({:global, __MODULE__}, :stop)
  end

  @doc """
  Init
  """
  def init([]) do
    {:ok, [], 1000}
  end

  @doc """
  Callback for stop
  """
  def handle_call(:stop, _from, state) do
    Logger.debug "Callback stop"
    {:stop, :normal, :ok, state}
  end
  def handle_call(_call, _from, state) do
    {:noreply, state}
  end
  def handle_cast(_cast, state) do
    {:noreply, state}
  end

  @doc """
  Callback for timeout
  """
  def handle_info(:timeout, state) do
    Logger.debug "timeout #{inspect :os.timestamp}"
    {:noreply, state, 1000}
  end
  def handle_info(_msg, state) do
    {:noreply, state}
  end

  def code_change(_oldvsn, state, _extra) do
    {:ok, state}
  end
  def terminate(_reason, _srate) do
    :ok
  end

end
