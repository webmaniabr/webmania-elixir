defmodule Webmania.Helpers do
  @moduledoc "Finite typed-callback pagination and polling, preserving opaque cursors exactly. No retries are automatic."
  alias Webmania.{Cancellation, Error}

  @spec paginate(
          (term(), keyword() -> {:ok, {[struct()], term() | nil}} | {:error, Error.t()}),
          term(),
          keyword()
        ) :: {:ok, [struct()]} | {:error, Error.t()}
  def paginate(fetch, cursor \\ nil, opts \\ []) do
    safely(fn ->
      max_pages = Keyword.get(opts, :max_pages, 100)
      max_items = Keyword.get(opts, :max_items, 10_000)
      max_bytes = Keyword.get(opts, :max_result_bytes, 16_777_216)
      timeout = Keyword.get(opts, :timeout_ms, 30_000)
      token = Keyword.get(opts, :cancel)

      if not is_function(fetch, 2) or max_pages not in 1..1000 or max_items not in 1..100_000 or
           timeout not in 1..300_000 or max_bytes not in 2..16_777_216 or not cursor?(cursor),
         do: throw(:configuration)

      pages(
        fetch,
        cursor,
        [],
        0,
        0,
        max_pages,
        max_items,
        System.monotonic_time(:millisecond) + timeout,
        token,
        MapSet.new(),
        max_bytes - 2
      )
    end)
  end

  defp pages(
         fetch,
         cursor,
         acc,
         pages,
         items,
         max_pages,
         max_items,
         deadline,
         token,
         seen,
         bytes_left
       ) do
    with :ok <- check(deadline, token) do
      if pages >= max_pages or MapSet.member?(seen, cursor), do: throw(:pagination_limit)

      case fetch.(cursor, call_opts(deadline, token)) do
        {:ok, {values, next}} when is_list(values) ->
          if length(values) > max_items - items or not Enum.all?(values, &is_struct/1) or
               not cursor?(next),
             do: throw(:pagination_limit)

          {bytes_left, _} =
            Enum.reduce(values, {bytes_left, 0}, fn value, {remaining, count} ->
              if rem(count, 32) == 0, do: guard!(deadline, token)

              case Webmania.Model.to_json(value, limit: max(remaining, 1)) do
                {:ok, encoded} when byte_size(encoded) <= remaining ->
                  {remaining - byte_size(encoded) - 1, count + 1}

                _ ->
                  throw(:pagination_limit)
              end
            end)

          if bytes_left < -1, do: throw(:pagination_limit)
          guard!(deadline, token)

          acc = [values | acc]

          if is_nil(next),
            do: {:ok, acc |> Enum.reverse() |> List.flatten()},
            else:
              pages(
                fetch,
                next,
                acc,
                pages + 1,
                items + length(values),
                max_pages,
                max_items,
                deadline,
                token,
                MapSet.put(seen, cursor),
                bytes_left
              )

        {:error, %Error{}} = error ->
          error

        _ ->
          throw(:validation)
      end
    end
  end

  defp cursor?(nil), do: true

  defp cursor?(value) when is_binary(value),
    do: byte_size(value) in 1..8192 and String.valid?(value)

  defp cursor?(value) when is_integer(value),
    do: value in -9_223_372_036_854_775_808..9_223_372_036_854_775_807

  defp cursor?(_), do: false

  @spec poll(
          (keyword() -> {:ok, struct()} | {:error, Error.t()}),
          (struct() -> boolean()),
          keyword()
        ) :: {:ok, struct()} | {:error, Error.t()}
  def poll(fetch, complete?, opts \\ []) do
    safely(fn ->
      interval = Keyword.get(opts, :interval_ms, 5000)
      attempts = Keyword.get(opts, :max_attempts, 10)
      timeout = Keyword.get(opts, :timeout_ms, 60_000)
      token = Keyword.get(opts, :cancel)

      if not is_function(fetch, 1) or not is_function(complete?, 1) or
           interval not in 5000..60_000 or attempts not in 1..100 or timeout not in 1..300_000,
         do: throw(:configuration)

      polling(
        fetch,
        complete?,
        interval,
        attempts,
        System.monotonic_time(:millisecond) + timeout,
        token
      )
    end)
  end

  defp polling(fetch, complete?, interval, attempts, deadline, token) do
    with :ok <- check(deadline, token) do
      case fetch.(call_opts(deadline, token)) do
        {:ok, value} when is_struct(value) ->
          guard!(deadline, token)
          complete = complete?.(value)
          guard!(deadline, token)

          cond do
            complete == true ->
              {:ok, value}

            attempts == 1 ->
              throw(:poll_limit)

            true ->
              remaining = deadline - System.monotonic_time(:millisecond)

              case Cancellation.await(token, max(min(interval, remaining), 0)) do
                :ok -> polling(fetch, complete?, interval, attempts - 1, deadline, token)
                _ -> {:error, Error.new("cancelled", "Helper cancelled.")}
              end
          end

        {:error, %Error{}} = error ->
          error

        _ ->
          throw(:validation)
      end
    end
  end

  defp call_opts(deadline, nil),
    do: [timeout_ms: max(deadline - System.monotonic_time(:millisecond), 1)]

  defp call_opts(deadline, token),
    do: [timeout_ms: max(deadline - System.monotonic_time(:millisecond), 1), cancel: token]

  defp check(deadline, token) do
    cond do
      deadline <= System.monotonic_time(:millisecond) ->
        {:error, Error.new("timeout", "Helper deadline exceeded.")}

      Cancellation.await(token, 0) == :cancelled ->
        {:error, Error.new("cancelled", "Helper cancelled.")}

      true ->
        :ok
    end
  end

  defp safely(fun) do
    try do
      fun.()
    rescue
      _ -> {:error, Error.new("validation", "Invalid typed helper callback or options.")}
    catch
      :throw, {:helper_error, error} ->
        {:error, error}

      kind when kind in [:configuration, :validation, :pagination_limit, :poll_limit] ->
        {:error, Error.new(Atom.to_string(kind), "Finite helper stopped.")}

      _, _ ->
        {:error, Error.new("validation", "Typed helper callback failed.")}
    end
  end

  defp guard!(deadline, token) do
    case check(deadline, token) do
      :ok -> :ok
      {:error, error} -> throw({:helper_error, error})
    end
  end
end
