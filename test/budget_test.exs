defmodule Webmania.BudgetTest do
  use ExUnit.Case, async: false
  alias Webmania.TestSupport, as: T

  defp validate_envelope,
    do: %{
      "protocol" => 1,
      "action" => "validate",
      "model" => "api1_fiscal::NfeSefazStatus",
      "value_json" => "{\"status\":\"online\"}",
      "projection_hints" => true
    }

  defp call_envelope(base),
    do: %{
      "protocol" => 1,
      "action" => "call",
      "operation" => "nfeGetSefazStatus",
      "client_scope" => "Nfe",
      "projection_hints" => true,
      "credentials" => %{
        "kind" => "company",
        "consumer_key" => "synthetic-key",
        "consumer_secret" => "synthetic-secret",
        "access_token" => "synthetic-token",
        "access_token_secret" => "synthetic-second"
      },
      "config" => %{"base_url" => base}
    }

  defp closed(ref) do
    assert_receive {^ref, :request, _}, 1000
    assert_receive {^ref, :closed}, 1000
  end

  test "preparation is bounded and cancellable before any frame or worker launch" do
    assert {:ok, _} = Webmania.Runtime.exchange(validate_envelope())
    ports = Port.list() |> Enum.sort()
    large = String.duplicate("\"\\", 4 * 1024 * 1024)

    source = fn ->
      with {:ok, json} <- Webmania.JSON.encode(%{"x" => large}, limit: 32 * 1024 * 1024),
           do: {:ok, Map.put(validate_envelope(), "value_json", json)}
    end

    send(self(), {:user_message, :preserved})
    started = System.monotonic_time(:millisecond)

    assert {:error, %Webmania.Error{kind: "timeout", sdk_call_completed: false}} =
             Webmania.Runtime.exchange(source, timeout_ms: 10)

    assert System.monotonic_time(:millisecond) - started < 1500
    assert Port.list() |> Enum.sort() == ports
    token = Webmania.Cancellation.new()

    {canceller, monitor} =
      spawn_monitor(fn ->
        receive do
          :go -> Webmania.Cancellation.cancel(token)
        end
      end)

    source = fn ->
      send(canceller, :go)
      source.()
    end

    assert {:error, %Webmania.Error{kind: "cancelled", sdk_call_completed: false}} =
             Webmania.Runtime.exchange(source, cancel: token)

    assert_receive {:DOWN, ^monitor, :process, ^canceller, :normal}
    Webmania.Cancellation.close(token)
    assert Port.list() |> Enum.sort() == ports
    assert_receive {:user_message, :preserved}
    assert is_nil(Process.get({Webmania.Runtime, :checkpoint}))
  end

  test "post-call projection cancellation retains protected completed result and reaps" do
    ports = Port.list() |> Enum.sort()
    original = %{"status" => "online", "future" => "PROTECTED_POSTCALL_SENTINEL"}
    {base, ref, _} = T.start_server(T.reply(200, "application/json", T.json!(original)))
    parent = self()
    token = Webmania.Cancellation.new()

    {caller, monitor} =
      spawn_monitor(fn ->
        result =
          Webmania.Runtime.exchange(call_envelope(base), [cancel: token], fn _ ->
            send(parent, {ref, :projecting})
            data = List.duplicate(%{}, 1_048_577)

            hints = %{
              "format" => "variant-preorder-u8-hex-v1",
              "metadata_sha256" => Webmania.Generated.metadata_sha256(),
              "indices_hex" => String.duplicate("00", 1_048_577)
            }

            Webmania.Model.project(
              {:array, Webmania.Models.Api1Fiscal.TaxClassListStateRatesVariant0Item},
              data,
              hints
            )
          end)

        send(parent, {ref, :result, result})
      end)

    assert_receive {^ref, :projecting}, 3000
    Webmania.Cancellation.cancel(token)

    assert_receive {^ref, :result,
                    {:error, %Webmania.Error{kind: "cancelled", sdk_call_completed: true} = error}},
                   3000

    assert Webmania.Error.reveal_result(error) == %{"kind" => "json", "value" => original}
    refute String.contains?(inspect(error), "PROTECTED_POSTCALL_SENTINEL")
    assert_receive {:DOWN, ^monitor, :process, ^caller, :normal}
    closed(ref)
    Webmania.Cancellation.close(token)
    assert Port.list() |> Enum.sort() == ports
  end

  test "projection exceptions are redacted and distinguish call from validate" do
    for action <- [:validate, :call] do
      {envelope, ref} =
        if action == :call do
          {base, ref, _} =
            T.start_server(T.reply(200, "application/json", "{\"status\":\"online\"}"))

          {call_envelope(base), ref}
        else
          {validate_envelope(), nil}
        end

      assert {:error, %Webmania.Error{} = error} =
               Webmania.Runtime.exchange(envelope, [], fn _ ->
                 raise("PRIVATE_PROJECTION_EXCEPTION")
               end)

      assert Webmania.Error.sdk_call_completed?(error) == (action == :call)

      assert Webmania.Error.reveal_result(error) == %{
               "kind" => "json",
               "value" => %{"status" => "online"}
             }

      refute String.contains?(inspect(error), "PRIVATE_PROJECTION_EXCEPTION")
      refute String.contains?(Exception.message(error), "PRIVATE_PROJECTION_EXCEPTION")
      if ref, do: closed(ref)
    end
  end
end
