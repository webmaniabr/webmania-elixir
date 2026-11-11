defmodule Webmania.Cancellation do
  @moduledoc "An explicit cancellation token. close/1 releases it; creator death also releases it."
  @derive {Inspect, only: []}
  defstruct [:pid]
  @opaque t :: %__MODULE__{pid: pid()}
  @spec new() :: t()
  def new do
    creator = self()

    pid =
      spawn(fn ->
        Process.flag(:sensitive, true)
        owner = Process.monitor(creator)
        loop(owner, false, %{})
      end)

    %__MODULE__{pid: pid}
  end

  @spec cancel(t()) :: :ok
  def cancel(%__MODULE__{pid: pid}) when is_pid(pid) do
    monitor = Process.monitor(pid)
    ref = make_ref()
    send(pid, {:cancel, self(), ref})

    receive do
      {:cancelled, ^ref} -> :ok
      {:DOWN, ^monitor, :process, _, _} -> :ok
    end

    Process.demonitor(monitor, [:flush])
    :ok
  end

  @spec close(t()) :: :ok
  def close(%__MODULE__{pid: pid}) when is_pid(pid) do
    monitor = Process.monitor(pid)
    send(pid, :close)

    receive do
      {:DOWN, ^monitor, :process, _, _} -> :ok
    end
  end

  @doc false
  def await(nil, milliseconds) do
    receive do
    after
      milliseconds -> :ok
    end
  end

  def await(%__MODULE__{pid: pid}, milliseconds) when is_pid(pid) do
    ref = make_ref()
    monitor = Process.monitor(pid)
    send(pid, {:subscribe, self(), ref})

    {result, dead} =
      receive do
        {:cancellation, ^ref, :cancelled} ->
          {:cancelled, false}

        {:cancellation, ^ref, :active} ->
          receive do
            {:cancellation, ^ref, :cancelled} -> {:cancelled, false}
            {:DOWN, ^monitor, :process, _, _} -> {:cancelled, true}
          after
            milliseconds -> {:ok, false}
          end

        {:DOWN, ^monitor, :process, _, _} ->
          {:cancelled, true}
      end

    if not dead do
      send(pid, {:unsubscribe, self(), ref})

      receive do
        {:unsubscribed, ^ref} -> :ok
        {:DOWN, ^monitor, :process, _, _} -> :ok
      end
    end

    Process.demonitor(monitor, [:flush])
    flush(ref)
    result
  end

  defp flush(ref) do
    receive do
      {:cancellation, ^ref, _} -> flush(ref)
    after
      0 -> :ok
    end
  end

  defp loop(owner, cancelled, subscribers) do
    receive do
      {:subscribe, pid, ref} ->
        monitor = Process.monitor(pid)
        send(pid, {:cancellation, ref, if(cancelled, do: :cancelled, else: :active)})
        loop(owner, cancelled, Map.put(subscribers, monitor, {pid, ref}))

      {:cancel, sender, reference} ->
        if not cancelled do
          Enum.each(subscribers, fn {_, {pid, ref}} ->
            send(pid, {:cancellation, ref, :cancelled})
          end)
        end

        send(sender, {:cancelled, reference})
        loop(owner, true, subscribers)

      :close ->
        :ok

      {:unsubscribe, pid, ref} ->
        remaining =
          Enum.reduce(subscribers, subscribers, fn {monitor, subscriber}, map ->
            if subscriber == {pid, ref} do
              Process.demonitor(monitor, [:flush])
              Map.delete(map, monitor)
            else
              map
            end
          end)

        send(pid, {:unsubscribed, ref})
        loop(owner, cancelled, remaining)

      {:DOWN, ^owner, :process, _, _} ->
        :ok

      {:DOWN, monitor, :process, _, _} ->
        loop(owner, cancelled, Map.delete(subscribers, monitor))

      _ ->
        loop(owner, cancelled, subscribers)
    end
  end
end
