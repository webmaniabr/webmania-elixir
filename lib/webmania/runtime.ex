defmodule Webmania.Runtime do
  @moduledoc false
  alias Webmania.{Error, JSON}
  @input_limit 32 * 1024 * 1024
  @output_limit 40 * 1024 * 1024
  @runtime_dir "priv/linux-arm64"
  @worker_hash "1d81d4dff57a8b233d2ce9316d201fd10b2740203d9890ef87a87144ea0d0f15"
  # Replaced by the pinned local native build script, never inferred from mtime.
  @launcher_hash "04581eadc8ad83250af5e34a383be53bd7c6987a3b567fc6cce4b3eb31aea49d"

  @checkpoint_key {__MODULE__, :checkpoint}

  def exchange(envelope_or_fun, opts \\ [], projector \\ nil) do
    started = System.monotonic_time(:millisecond)

    with :ok <- options(opts) do
      caller = self()
      ref = make_ref()
      deadline = started + Keyword.get(opts, :timeout_ms, 30_000)
      gate = :atomics.new(1, [])

      {pid, monitor} =
        spawn_monitor(fn ->
          Process.flag(:sensitive, true)
          Process.flag(:trap_exit, true)

          result =
            try do
              control_owner(caller, ref, opts, deadline, gate)
            rescue
              _ -> protocol()
            catch
              _, _ -> protocol()
            end

          send(caller, {ref, :done, result})
        end)

      receive do
        {^ref, :ready, :ok} ->
          prepared =
            with_control(fn -> gate_check(gate, deadline) end, fn ->
              with :ok <- gate_check(gate, deadline),
                   {:ok, envelope} <- prepare(envelope_or_fun),
                   {:ok, json} <- JSON.encode(envelope, limit: @input_limit, depth: 68),
                   :ok <- gate_check(gate, deadline) do
                context = %{
                  action: envelope["action"],
                  operation: envelope["operation"],
                  mutation_possible:
                    envelope["action"] == "call" and
                      Webmania.Generated.may_mutate?(envelope["operation"])
                }

                {:ok, {json, context}}
              end
            end)

          case prepared do
            {:ok, {json, context}} ->
              send(pid, {ref, :frame, json, context, projector})
              await_result(pid, monitor, ref)

            {:error, _} = error ->
              send(pid, {ref, :abort})
              settle(pid, monitor, ref, error)
          end

        {^ref, :ready, {:error, _} = error} ->
          settle(pid, monitor, ref, error)

        {^ref, :done, result} ->
          settle(pid, monitor, ref, result)

        {:DOWN, ^monitor, :process, ^pid, _} ->
          protocol()
      end
    end
  end

  defp await_result(pid, monitor, ref) do
    receive do
      {^ref, :done, result} ->
        settle(pid, monitor, ref, result)

      {:DOWN, ^monitor, :process, ^pid, _} ->
        flush_owned(ref)
        protocol()
    end
  end

  defp settle(pid, monitor, ref, result) do
    receive do
      {:DOWN, ^monitor, :process, ^pid, _} -> :ok
    end

    flush_owned(ref)
    result
  end

  defp flush_owned(ref) do
    receive do
      {^ref, _, _} -> flush_owned(ref)
    after
      0 -> :ok
    end
  end

  defp gate_check(gate, deadline) do
    if System.monotonic_time(:millisecond) >= deadline,
      do: :atomics.compare_exchange(gate, 1, 0, 2)

    case :atomics.get(gate, 1) do
      0 -> :ok
      1 -> cancelled()
      _ -> timeout()
    end
  end

  @doc false
  def checkpoint(force \\ false) do
    case Process.get(@checkpoint_key) do
      nil ->
        :ok

      {count, check} when count < 255 and not force ->
        Process.put(@checkpoint_key, {count + 1, check})
        :ok

      {_, check} ->
        Process.put(@checkpoint_key, {0, check})

        case check.() do
          :ok -> :ok
          {:error, error} -> throw({:webmania_control, error})
        end
    end
  end

  defp with_control(check, work) do
    previous = Process.put(@checkpoint_key, {0, check})

    try do
      work.()
    rescue
      _ -> protocol()
    catch
      :throw, {:webmania_control, error} -> {:error, error}
      _, _ -> protocol()
    after
      if previous,
        do: Process.put(@checkpoint_key, previous),
        else: Process.delete(@checkpoint_key)
    end
  end

  defp options(opts) when is_list(opts) do
    if not match?([_, _, _ | _], opts) and Keyword.keyword?(opts) and length(opts) <= 2 and
         length(Keyword.keys(opts)) == length(Enum.uniq(Keyword.keys(opts))) and
         Enum.all?(Keyword.keys(opts), &(&1 in [:cancel, :timeout_ms])) and
         is_integer(Keyword.get(opts, :timeout_ms, 30_000)) and
         Keyword.get(opts, :timeout_ms, 30_000) in 1..300_000 and
         valid_token?(opts[:cancel]),
       do: :ok,
       else: {:error, Error.new("configuration", "Expected bounded call options.")}
  end

  defp options(_), do: {:error, Error.new("configuration", "Expected bounded call options.")}
  defp valid_token?(nil), do: true
  defp valid_token?(%Webmania.Cancellation{pid: pid}) when is_pid(pid), do: pid != self()
  defp valid_token?(_), do: false

  defp control_owner(caller, ref, opts, deadline, gate) do
    caller_monitor = Process.monitor(caller)
    {cancel_ref, token_monitor, initial} = subscribe(opts[:cancel], caller_monitor, deadline)
    send(caller, {ref, :ready, initial})

    with :ok <- initial do
      wait_frame(ref, deadline, gate, caller_monitor, cancel_ref, token_monitor)
    end
  end

  defp owner_check(deadline, gate, caller, cancel_ref, token) do
    case check(deadline, caller, cancel_ref, token) do
      {:error, %Error{kind: "cancelled"}} -> :atomics.compare_exchange(gate, 1, 0, 1)
      {:error, _} -> :atomics.compare_exchange(gate, 1, 0, 2)
      :ok -> :ok
    end

    gate_check(gate, deadline)
  end

  defp wait_frame(ref, deadline, gate, caller, cancel_ref, token) do
    with :ok <- owner_check(deadline, gate, caller, cancel_ref, token) do
      receive do
        {^ref, :frame, json, context, projector} ->
          with_control(
            fn -> owner_check(deadline, gate, caller, cancel_ref, token) end,
            fn -> execute(json, context, projector, deadline, gate, caller, cancel_ref, token) end
          )

        {^ref, :abort} ->
          :ok
      after
        5 -> wait_frame(ref, deadline, gate, caller, cancel_ref, token)
      end
    end
  end

  defp execute(
         json,
         context,
         projector,
         deadline,
         gate,
         caller_monitor,
         cancel_ref,
         token_monitor
       ) do
    with :ok <- owner_check(deadline, gate, caller_monitor, cancel_ref, token_monitor),
         {:ok, paths} <- paths(),
         :ok <-
           verify(
             paths.launcher,
             @launcher_hash,
             deadline,
             caller_monitor,
             cancel_ref,
             token_monitor
           ),
         :ok <- check(deadline, caller_monitor, cancel_ref, token_monitor) do
      environment = System.get_env() |> Map.keys() |> Enum.map(&{String.to_charlist(&1), false})
      # All argv members are public asset identities or finite time budgets.
      port =
        Port.open(
          {:spawn_executable, String.to_charlist(paths.launcher)},
          [
            :binary,
            :exit_status,
            :use_stdio,
            :eof,
            :hide,
            {:args,
             [
               paths.worker,
               @worker_hash,
               Integer.to_string(max(deadline - System.monotonic_time(:millisecond), 1))
             ]},
            {:env, environment},
            {:busy_limits_port, {65_536, 131_072}},
            {:busy_limits_msgq, {65_536, 131_072}}
          ]
        )

      try do
        frame = <<byte_size(json)::unsigned-big-32, json::binary>>

        state = %{
          port: port,
          frame: frame,
          offset: 0,
          chunks: [],
          size: 0,
          expected: nil,
          prefix: <<>>,
          exited: nil,
          eof: false,
          cancelled: nil,
          grace: nil,
          deadline: deadline,
          caller_monitor: caller_monitor,
          cancel_ref: cancel_ref,
          token_monitor: token_monitor,
          cancel_sent: false,
          mutation_possible: context.mutation_possible,
          operation: context.operation,
          gate: gate
        }

        case loop(state) do
          {:ok, result} ->
            postprocess(
              result,
              context,
              projector,
              deadline,
              gate,
              caller_monitor,
              cancel_ref,
              token_monitor
            )

          error ->
            error
        end
      after
        # The launcher emits stdout only after waitpid, so ordinary completion
        # proves worker reap. Closing a live port triggers its EOF/signal cleanup.
        if Port.info(port), do: Port.close(port)
      end
    end
  end

  defp postprocess(result, context, projector, deadline, gate, caller, cancel_ref, token) do
    processed =
      with_control(fn -> owner_check(deadline, gate, caller, cancel_ref, token) end, fn ->
        with :ok <- owner_check(deadline, gate, caller, cancel_ref, token),
             {:ok, value} <-
               if(is_function(projector, 1), do: projector.(result), else: {:ok, result}),
             :ok <- owner_check(deadline, gate, caller, cancel_ref, token),
             do: {:ok, value}
      end)

    case processed do
      {:error, %Error{} = error} ->
        {:error,
         %{
           error
           | sdk_call_completed: context.action == "call",
             protected_result: Map.delete(result, "projection_hints"),
             operation: context.operation
         }}

      result ->
        result
    end
  end

  defp without_control(work) do
    previous = Process.delete(@checkpoint_key)

    try do
      work.()
    after
      if previous, do: Process.put(@checkpoint_key, previous)
    end
  end

  defp prepare(source) when is_function(source, 0), do: source.()
  defp prepare(source) when is_map(source), do: {:ok, source}
  defp prepare(_), do: protocol()

  defp paths do
    if :os.type() == {:unix, :linux} and
         String.starts_with?(List.to_string(:erlang.system_info(:system_architecture)), "aarch64") do
      dir = Application.app_dir(:webmania_sdk, @runtime_dir)

      {:ok,
       %{
         launcher: Path.join(dir, "webmania-launcher"),
         worker: Path.join(dir, "webmania-native-worker")
       }}
    else
      {:error,
       Error.new("configuration", "This alpha supports Linux arm64 with glibc 2.36 or newer.")}
    end
  end

  defp subscribe(nil, _, _), do: {nil, nil, :ok}

  defp subscribe(%Webmania.Cancellation{pid: pid}, caller_monitor, deadline) when is_pid(pid) do
    ref = make_ref()
    monitor = Process.monitor(pid)
    send(pid, {:subscribe, self(), ref})

    result =
      receive do
        {:cancellation, ^ref, :active} -> :ok
        {:cancellation, ^ref, :cancelled} -> cancelled()
        {:DOWN, ^monitor, :process, _, _} -> cancelled()
        {:DOWN, ^caller_monitor, :process, _, _} -> cancelled()
      after
        max(deadline - System.monotonic_time(:millisecond), 0) -> timeout()
      end

    {ref, monitor, result}
  end

  defp subscribe(_, _, _),
    do: {nil, nil, {:error, Error.new("configuration", "Invalid cancellation token.")}}

  defp check(deadline, caller_monitor, cancel_ref, token_monitor) do
    receive do
      {:cancellation, ^cancel_ref, :cancelled} -> cancelled()
      {:DOWN, ^token_monitor, :process, _, _} when not is_nil(token_monitor) -> cancelled()
      {:DOWN, ^caller_monitor, :process, _, _} -> cancelled()
    after
      0 -> if System.monotonic_time(:millisecond) >= deadline, do: timeout(), else: :ok
    end
  end

  defp verify(path, expected, deadline, caller, cancel_ref, token) do
    case File.open(path, [:read, :binary, :raw]) do
      {:ok, file} ->
        try do
          with {:ok, hash} <-
                 hash(file, :crypto.hash_init(:sha256), deadline, caller, cancel_ref, token),
               true <- Base.encode16(hash, case: :lower) == expected do
            :ok
          else
            {:error, _} = error -> error
            _ -> {:error, Error.new("configuration", "Native asset checksum mismatch.")}
          end
        after
          File.close(file)
        end

      _ ->
        {:error, Error.new("configuration", "Native asset is unavailable.")}
    end
  end

  defp hash(file, state, deadline, caller, cancel_ref, token) do
    with :ok <- check(deadline, caller, cancel_ref, token) do
      case :file.read(file, 65_536) do
        {:ok, bytes} ->
          hash(file, :crypto.hash_update(state, bytes), deadline, caller, cancel_ref, token)

        :eof ->
          {:ok, :crypto.hash_final(state)}

        _ ->
          {:error, Error.new("configuration", "Native asset is unavailable.")}
      end
    end
  end

  defp loop(state) do
    state = control(state)
    state = maybe_send(state)

    cond do
      state.exited != nil and state.eof ->
        finish(state)

      state.grace && System.monotonic_time(:millisecond) >= state.grace ->
        # Only stop/2 arms the grace window, after cancellation or the deadline;
        # keep that reason (with its unknown outcome) instead of a worker failure.
        local_failure(state, if(state.cancelled == :timeout, do: "timeout", else: "cancelled"))

      true ->
        port = state.port

        receive do
          {^port, {:data, bytes}} -> loop(append(state, bytes))
          {^port, {:exit_status, status}} -> loop(%{state | exited: status})
          {^port, :eof} -> loop(%{state | eof: true})
          {:EXIT, ^port, :normal} -> loop(state)
          {:EXIT, ^port, _} -> local_failure(state, "protocol")
          message -> loop(control_message(state, message))
        after
          5 -> loop(state)
        end
    end
  end

  defp control(state) do
    caller = state.caller_monitor
    token = state.token_monitor
    ref = state.cancel_ref

    state =
      receive do
        {:cancellation, ^ref, :cancelled} -> stop(state, :cancelled)
        {:DOWN, ^caller, :process, _, _} -> stop(state, :cancelled)
        {:DOWN, ^token, :process, _, _} when not is_nil(token) -> stop(state, :cancelled)
      after
        0 -> state
      end

    if is_nil(state.cancelled) and System.monotonic_time(:millisecond) >= state.deadline,
      do: stop(state, :timeout),
      else: state
  end

  defp control_message(%{cancel_ref: ref} = state, {:cancellation, ref, :cancelled}),
    do: stop(state, :cancelled)

  defp control_message(%{caller_monitor: ref} = state, {:DOWN, ref, :process, _, _}),
    do: stop(state, :cancelled)

  defp control_message(%{token_monitor: ref} = state, {:DOWN, ref, :process, _, _}),
    do: stop(state, :cancelled)

  defp control_message(state, _), do: state

  defp stop(%{cancelled: nil} = state, reason) do
    # Launcher control is separate from worker JSON, so a partial JSON frame is
    # cancelled by EOF, never corrupted by injecting a C into its payload.
    :atomics.compare_exchange(state.gate, 1, 0, if(reason == :timeout, do: 2, else: 1))
    %{state | cancelled: reason, grace: System.monotonic_time(:millisecond) + 4500}
  end

  defp stop(state, _), do: state

  defp maybe_send(%{cancelled: nil, frame: frame, offset: offset} = state)
       when offset < byte_size(frame) do
    size = min(byte_size(frame) - offset, 65_536)
    bytes = binary_part(frame, offset, size)

    if command(state.port, ["D", <<size::unsigned-big-32>>, bytes]),
      do: %{state | offset: offset + size},
      else: state
  end

  defp maybe_send(%{cancelled: reason, cancel_sent: false} = state) when not is_nil(reason) do
    if command(state.port, "C"), do: %{state | cancel_sent: true}, else: state
  end

  defp maybe_send(state), do: state

  defp command(port, bytes) do
    try do
      Port.command(port, bytes, [:nosuspend])
    rescue
      _ -> false
    end
  end

  defp append(state, bytes) do
    size = state.size + byte_size(bytes)
    if size > @output_limit + 4, do: throw(:protocol)

    prefix =
      if byte_size(state.prefix) < 4,
        do:
          state.prefix <>
            binary_part(bytes, 0, min(4 - byte_size(state.prefix), byte_size(bytes))),
        else: state.prefix

    expected = if byte_size(prefix) == 4, do: :binary.decode_unsigned(prefix) + 4, else: nil

    if expected && (expected < 5 or expected > @output_limit + 4 or size > expected),
      do: throw(:protocol)

    %{state | chunks: [bytes | state.chunks], size: size, prefix: prefix, expected: expected}
  end

  defp finish(%{exited: 0, expected: expected, size: expected} = state)
       when not is_nil(expected) do
    frame = state.chunks |> Enum.reverse() |> IO.iodata_to_binary()
    <<_::32, json::binary>> = frame

    # The complete bounded frame is drained after waitpid even on cancellation.
    # Decode it before honoring postprocessing cancellation so native Unknown,
    # recovery and projection-completion context cannot be discarded.
    with {:ok, value} <-
           without_control(fn -> JSON.decode(json, limit: @output_limit, depth: 68) end) do
      case value do
        %{"protocol" => 1, "ok" => true, "result" => result} when is_map(result) ->
          {:ok, result}

        %{"protocol" => 1, "ok" => false, "error" => error} when is_map(error) ->
          error = Error.from_value(error)

          error =
            if state.cancelled && error.kind == "protocol" && is_nil(error.operation) &&
                 is_nil(error.status) && is_nil(error.outcome),
               do: %{
                 error
                 | kind: if(state.cancelled == :timeout, do: "timeout", else: "cancelled"),
                   message: "Call interrupted before a complete native request."
               },
               else: error

          error =
            if state.cancelled != :cancelled and
                 System.monotonic_time(:millisecond) >= state.deadline and
                 error.kind == "cancelled",
               do: %{error | kind: "timeout", message: "Call deadline exceeded."},
               else: error

          {:error, error}

        _ ->
          protocol()
      end
    else
      _ -> local_failure(state, "protocol")
    end
  end

  defp finish(%{cancelled: :cancelled} = state), do: local_failure(state, "cancelled")
  defp finish(%{cancelled: :timeout} = state), do: local_failure(state, "timeout")
  defp finish(state), do: local_failure(state, "protocol")

  defp local_failure(state, kind) do
    error = Error.new(kind, "Native call did not return a complete result.")
    # A fatal worker failure cannot prove whether a handed-off mutation reached
    # HTTP. Preserve conservative uncertainty; never invent a recovery selector
    # or copy a selector that the native redactor has not approved.
    if state.mutation_possible and state.offset == byte_size(state.frame),
      do: {:error, %{error | outcome: "unknown", operation: state.operation}},
      else: {:error, error}
  end

  defp protocol, do: {:error, Error.new("protocol", "Native process or frame failure.")}
  defp cancelled, do: {:error, Error.new("cancelled", "Call cancelled.")}
  defp timeout, do: {:error, Error.new("timeout", "Call deadline exceeded.")}
end
