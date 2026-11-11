Code.require_file("support.exs", __DIR__)
alias Webmania.TestSupport, as: T
count = 1_048_577
raw = List.duplicate(%{}, count)

result =
  Webmania.Models.Api1Fiscal.TaxClassListStateRates.from_value(raw, timeout_ms: 120_000)
  |> T.ok!()

T.assert!(length(result.value) == count)
T.assert!(hd(result.value).variant == :TaxClassListStateRate)
serialized = Webmania.Models.Api1Fiscal.TaxClassListStateRates.to_json(result) |> T.ok!()
T.assert!(byte_size(serialized) == 3 * count + 1)
T.assert!(not String.contains?(inspect(result), "descricao"))

IO.puts(
  "#{count + 1} nominal enum indices, empty-container accounting and ordinary complete model serialization PASS"
)
