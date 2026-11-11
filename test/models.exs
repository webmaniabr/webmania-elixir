Code.require_file("support.exs", __DIR__)
alias Webmania.TestSupport, as: T
models = Map.new(Webmania.Generated.models(), &{&1.__model__(), &1})
corpus = File.read!(T.fixture("model-corpus.json")) |> T.value!()

Enum.each(corpus["cases"], fn case ->
  module = Map.fetch!(models, case["model"])
  value = module.from_value(case["value"]) |> T.ok!()
  T.assert!(is_struct(value, module))
  T.assert!(module.to_value(value) |> T.ok!() == case["value"])
  T.assert!(not String.contains?(inspect(value), "INERT_TEST_PLACEHOLDER"))
end)

meta = File.read!(Path.join(__DIR__, "../api-metadata.json")) |> T.value!()

pointers =
  Map.new(
    Enum.filter(meta["models"], & &1["pointer"]),
    &{{&1["module"], &1["pointer"]}, Map.fetch!(models, &1["module"] <> "::" <> &1["name"])}
  )

cases = File.read!(T.fixture("semantic_cases.json")) |> T.value!() |> Map.fetch!("cases")

count =
  Enum.reduce(cases, 0, fn case, count ->
    case Map.fetch(pointers, {case["module"], case["pointer"]}) do
      {:ok, module} ->
        result = module.from_value(case["instance"])
        T.assert!(match?({:ok, _}, result) == case["valid"])
        count + 1

      :error ->
        count
    end
  end)

IO.puts(
  "Elixir nominal models: #{length(corpus["cases"])} and pinned semantic projections: #{count} PASS"
)
