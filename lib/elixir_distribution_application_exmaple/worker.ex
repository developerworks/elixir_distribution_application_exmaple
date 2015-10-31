require Logger

defmodule ElixirDistributionApplicationExmaple.Worker do
	use GenServer

	def start_link do
    GenServer.start_link(__MODULE__, [], [{:name, __MODULE__}])
		# GenServer.start_link(__MODULE__, [], [{:name, __MODULE__}, {:debug, [:trace,:statistics,:log]}])
	end

  def init([]) do
    {:ok, [], 1000}
  end

  def stop do
    Logger.debug "Stop worker"
    GenServer.call(__MODULE__, :stop)
  end

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

  def handle_info(:timeout, state) do
    Logger.debug "timeout"
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
