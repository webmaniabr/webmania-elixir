# One-time regression against the retained pre-hints f38 companion. This is not
# part of the final installed gate, whose worker must support nominal hints.
Code.require_file("support.exs", __DIR__)
alias Webmania.TestSupport, as: T
asset = File.read!(Application.app_dir(:webmania_sdk, "priv/linux-arm64/webmania-native-worker"))

T.assert!(
  Base.encode16(:crypto.hash(:sha256, asset), case: :lower) ==
    "f38deaae531af6061ea4d1f875b6b88ad68695398c73fb7defc55821f636f2fa"
)

raw = %{"status" => "online", "future" => "PROTECTED_RESULT_SENTINEL"}
{base, ref, _} = T.start_server(T.reply(200, "application/json", T.json!(raw)))

credentials =
  Webmania.Credentials.company(
    "synthetic-key",
    "synthetic-secret",
    "synthetic-token",
    "synthetic-second"
  )
  |> T.ok!()

client = Webmania.NfeClient.new(credentials, T.config(base)) |> T.ok!()
{:error, %Webmania.Error{kind: "protocol"} = error} = Webmania.NfeClient.get_sefaz_status(client)
T.assert!(Webmania.Error.sdk_call_completed?(error))
T.assert!(Webmania.Error.reveal_result(error) == %{"kind" => "json", "value" => raw})

T.assert!(
  not String.contains?(inspect(error), "PROTECTED_RESULT_SENTINEL") and
    not String.contains?(Exception.message(error), "PROTECTED_RESULT_SENTINEL")
)

receive do
  {^ref, :request, _} -> :ok
after
  1000 -> raise("missing synthetic request")
end

receive do
  {^ref, :closed} -> :ok
after
  1000 -> raise("missing synthetic close")
end

{:error, error} = Webmania.Models.Api1Fiscal.NfeSefazStatus.from_value(raw)

T.assert!(
  not Webmania.Error.sdk_call_completed?(error) and is_nil(Webmania.Error.reveal_result(error))
)

for completed <- [true, false] do
  error =
    Webmania.Error.from_value(%{
      "kind" => "projection",
      "message" => "Projection hints exceed the output frame budget.",
      "sdk_call_completed" => completed,
      "protected_result" => %{"kind" => "json", "value" => raw}
    })

  T.assert!(error.kind == "projection" and Webmania.Error.sdk_call_completed?(error) == completed)
  T.assert!(Webmania.Error.reveal_result(error) == %{"kind" => "json", "value" => raw})
  T.assert!(not String.contains?(inspect(error), "PROTECTED_RESULT_SENTINEL"))
end

IO.puts(
  "Legacy companion fail-closed; SDK-completed context and deliberate protected-result reveal PASS"
)
