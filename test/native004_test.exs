defmodule Webmania.ManualScalarProbe do
  @moduledoc false
  defstruct [:value, :__extra__]
  def __fields__, do: [{"value", :value, :scalar}]
end

defmodule Webmania.Native004Test do
  use ExUnit.Case, async: false
  alias Webmania.TestSupport, as: T
  alias Webmania.Models.Api1Fiscal, as: Fiscal

  defp hints(hex \\ "") do
    %{
      "format" => "variant-preorder-u8-hex-v1",
      "metadata_sha256" => Webmania.Generated.metadata_sha256(),
      "indices_hex" => hex
    }
  end

  defp corpus(model) do
    File.read!(T.fixture("model-corpus.json"))
    |> T.value!()
    |> Map.fetch!("cases")
    |> Enum.find(&(&1["model"] == model))
    |> Map.fetch!("value")
  end

  defp descriptor("Option<" <> tail, module),
    do: {:optional, descriptor(String.slice(tail, 0..-2//1), module)}

  defp descriptor("Nullable<" <> tail, module),
    do: {:nullable, descriptor(String.slice(tail, 0..-2//1), module)}

  defp descriptor("Vec<" <> tail, module),
    do: {:array, descriptor(String.slice(tail, 0..-2//1), module)}

  defp descriptor(type, module) do
    Map.get(
      %{
        "String" => :string,
        "i64" => :i64,
        "bool" => :boolean,
        "Number" => :number,
        "Scalar" => :scalar,
        "Null" => :null,
        "Value" => :value,
        "Map" => :map
      },
      type,
      Map.get(module, type)
    )
  end

  defp wire_name(model, identifier) do
    if model["module"] == "api2_nfcom_issuance" and model["name"] == "NfcomDocumentedGroup2114" do
      Map.get(
        %{
          "substituicao_chave_nfcom_substituida" => "substituicao.chave_nfcom_substituida",
          "substituicao_motivo" => "substituicao.motivo",
          "substituicao_nf_referenciada" => "substituicao.nf_referenciada.*"
        },
        identifier,
        identifier
      )
    else
      identifier
    end
  end

  test "all metadata fields variants exports and public type fields correspond exactly" do
    metadata = File.read!(Path.join(__DIR__, "../api-metadata.json")) |> T.value!()
    registry = Map.new(Webmania.Generated.models(), &{&1.__model__(), &1})
    assert map_size(registry) == 1258

    grouped =
      Enum.group_by(metadata["models"], & &1["module"])
      |> Map.new(fn {name, models} ->
        {name, Map.new(models, &{&1["name"], Map.fetch!(registry, name <> "::" <> &1["name"])})}
      end)

    {structs, unions, fields, variants} =
      Enum.reduce(metadata["models"], {0, 0, 0, 0}, fn model, {s, u, f, v} ->
        module = Map.fetch!(registry, model["module"] <> "::" <> model["name"])
        ^module = Code.ensure_loaded!(module)
        {:ok, specs} = Code.Typespec.fetch_specs(module)
        {:ok, types} = Code.Typespec.fetch_types(module)
        assert Enum.any?(types, fn {_, {name, _, _}} -> name == :t end)

        for signature <- [from_value: 2, from_json: 2, validate: 2, to_value: 1, to_json: 2] do
          assert List.keymember?(specs, signature, 0)
          assert function_exported?(module, elem(signature, 0), elem(signature, 1))
        end

        scope = Map.fetch!(grouped, model["module"])

        if model["kind"] == "struct" do
          assert List.keymember?(specs, {:new, 2}, 0)

          expected =
            Enum.map(model["fields"], fn field ->
              {wire_name(model, field["name"]), descriptor(field["type"], scope)}
            end)

          assert Enum.map(module.__fields__(), fn {name, _, type} -> {name, type} end) == expected

          assert Enum.map(module.__fields__(), fn {name, key, _} ->
                   {name, Atom.to_string(key)}
                 end) ==
                   Enum.map(model["fields"], &{wire_name(model, &1["name"]), &1["name"]})

          actual = module.__struct__() |> Map.from_struct() |> Map.delete(:__extra__)

          assert Enum.sort(Enum.map(Map.keys(actual), &Atom.to_string/1)) ==
                   Enum.sort(Enum.map(model["fields"], & &1["name"]))

          {:type, {:t, {:type, _, :map, type_fields}, []}} =
            Enum.find(types, fn {_, {name, _, _}} -> name == :t end)

          typed_names =
            for {:type, _, :map_field_exact, [{:atom, _, key}, _]} <- type_fields,
                key not in [:__struct__, :__extra__],
                do: Atom.to_string(key)

          assert Enum.sort(typed_names) == Enum.sort(Enum.map(model["fields"], & &1["name"]))
          {s + 1, u, f + length(expected), v}
        else
          assert List.keymember?(specs, {:new, 3}, 0)

          assert Enum.map(module.__variants__(), fn {name, type} ->
                   {Atom.to_string(name), type}
                 end) ==
                   Enum.map(model["fields"], &{&1["name"], descriptor(&1["type"], scope)})

          {s, u + 1, f, v + length(model["fields"])}
        end
      end)

    assert {structs, unions} == {1111, 147}

    IO.puts(
      "METADATA004 structs=#{structs} unions=#{unions} fields=#{fields} variants=#{variants} specs_types_exports=100%"
    )
  end

  test "TaxClassListItem.type has typed access NUL case distinction and collision refusal" do
    value = %{"type" => "TYPE\0VALUE", "TYPE" => "case-distinct-extension"}
    assert {:ok, model} = Fiscal.TaxClassListItem.from_value(value)
    assert model.type == "TYPE\0VALUE"
    assert model.__extra__ == %{"TYPE" => "case-distinct-extension"}
    assert Fiscal.TaxClassListItem.to_value(model) == {:ok, value}

    assert Fiscal.TaxClassListItem.from_json(Fiscal.TaxClassListItem.to_json(model) |> T.ok!()) ==
             {:ok, model}

    # type is a required member of every listed class.
    assert {:error, %Webmania.Error{}} = Fiscal.TaxClassListItem.from_value(%{})
    absent = %{model | type: :unset, __extra__: %{}}

    assert {:ok, ^model} =
             Fiscal.TaxClassListItem.new(%{
               "TYPE" => "case-distinct-extension",
               type: "TYPE\0VALUE"
             })

    assert {:error, %Webmania.Error{sdk_call_completed: false}} =
             Fiscal.TaxClassListItem.new(%{type: "value", __extra__: %{"type" => "collision"}})

    assert {:error, %Webmania.Error{sdk_call_completed: false}} =
             Fiscal.TaxClassListItem.new(%{__extra__: %{"type" => "absent-field-shadow"}})

    assert {:error, _} =
             Fiscal.TaxClassListItem.to_value(%{absent | __extra__: %{"type" => "shadow"}})

    for wrong <- [nil, true, false, 0, %{}, []] do
      assert {:error, %Webmania.Error{} = error} =
               Fiscal.TaxClassListItem.from_value(%{"type" => wrong})

      refute Webmania.Error.sdk_call_completed?(error)
      assert is_nil(Webmania.Error.reveal_result(error))
    end

    refute String.contains?(inspect(model), "TYPE\0VALUE")
  end

  test "manual Scalar preserves Bool Null Number Text and refuses containers or float" do
    exact = Webmania.Number.new("1.2300e-4096") |> T.ok!()

    for scalar <- [true, false, nil, 123, exact, "Text\0VALUE"] do
      assert {:ok, ^scalar} = Webmania.Model.project(:scalar, scalar, hints())

      assert {:ok, %{"value" => ^scalar}} =
               Webmania.Model.to_value(%Webmania.ManualScalarProbe{value: scalar, __extra__: %{}})
    end

    for wrong <- [[], %{}, 0.5, :unset] do
      assert {:error, %Webmania.Error{kind: "protocol"}} =
               Webmania.Model.project(:scalar, wrong, hints())

      assert {:error, %Webmania.Error{kind: "validation"}} =
               Webmania.Model.to_value(%Webmania.ManualScalarProbe{value: wrong, __extra__: %{}})
    end

    assert {:error, %Webmania.Error{kind: "protocol"}} =
             Webmania.Model.project(:scalar, true, hints("00"))
  end

  test "Option Nullable and Scalar presence agree with native public model conversions" do
    alias Webmania.Models.Api1B2b.ResellerCompany

    base =
      corpus("api1_b2b::ResellerCompany") |> Map.delete("cidade") |> Map.delete("unidade_empresa")

    assert {:ok, absent} = ResellerCompany.from_value(base)
    assert absent.cidade == :unset and absent.unidade_empresa == :unset
    assert ResellerCompany.to_value(absent) == {:ok, base}

    for key <- ["cidade", "unidade_empresa"] do
      assert {:error, _} = ResellerCompany.to_value(%{absent | __extra__: %{key => "shadow"}})
    end

    credentials = %{
      absent.credenciais
      | bearer_access_token_pending: :unset,
        __extra__: %{"bearer_access_token_pending" => false}
    }

    assert {:error, _} = ResellerCompany.to_value(%{absent | credenciais: credentials})

    for token <- ["1.0", "100e-2"] do
      raw = Map.put(base, "id", Webmania.Number.new(token) |> T.ok!())
      assert {:ok, model} = ResellerCompany.from_value(raw)
      assert model.id == 1 and is_integer(model.id)
      assert ResellerCompany.to_value(model) == {:ok, Map.put(base, "id", 1)}
    end

    assert {:error, _} =
             ResellerCompany.from_value(
               Map.put(base, "id", Webmania.Number.new("1.5") |> T.ok!())
             )

    for nullable <- [nil, "Fixture City"] do
      raw = Map.put(base, "cidade", nullable)
      assert {:ok, model} = ResellerCompany.from_value(raw)
      assert model.cidade == nullable
      assert ResellerCompany.to_value(model) == {:ok, raw}
    end

    for scalar <- [true, false, nil, 123, "Text"] do
      raw = Map.put(base, "unidade_empresa", scalar)

      native =
        Webmania.Runtime.exchange(%{
          "protocol" => 1,
          "action" => "validate",
          "projection_hints" => true,
          "model" => "api1_b2b::ResellerCompany",
          "value_json" => T.json!(raw)
        })

      scalar_class =
        cond do
          is_boolean(scalar) -> "Bool"
          is_nil(scalar) -> "Null"
          is_binary(scalar) -> "Text"
          true -> "Number"
        end

      case native do
        {:ok, result} ->
          IO.puts("SCALAR_NATIVE_PARITY class=#{scalar_class} outcome=accepted")
          assert {:ok, model} = ResellerCompany.from_value(raw)
          assert model.unidade_empresa == scalar
          assert ResellerCompany.to_value(model) == {:ok, result["value"]}

        {:error, %Webmania.Error{kind: kind} = native_error} ->
          IO.puts("SCALAR_NATIVE_PARITY class=#{scalar_class} outcome=refused:#{kind}")
          assert {:error, %Webmania.Error{kind: ^kind} = error} = ResellerCompany.from_value(raw)
          refute Webmania.Error.sdk_call_completed?(native_error)
          refute Webmania.Error.sdk_call_completed?(error)
          assert is_nil(Webmania.Error.reveal_result(error))
      end
    end

    assert {:ok, nil} = Webmania.Model.project({:nullable, :string}, nil, hints())
    assert {:error, _} = Webmania.Model.project({:optional, :string}, nil, hints())
    assert {:error, _} = Fiscal.TaxClassListItem.from_value(%{"type" => nil})
  end

  test "typed HTTP TLS responses expose type and preserve extension and one request" do
    for tls <- [false, true] do
      raw = [%{"type" => "TYPE\0VALUE", "TYPE" => "case-distinct-extension"}]
      {base, ref, _} = T.start_server(T.reply(200, "application/json", T.json!(raw)), tls)

      credentials =
        Webmania.Credentials.company(
          "synthetic-key",
          "synthetic-secret",
          "synthetic-token",
          "synthetic-token-secret"
        )
        |> T.ok!()

      client = Webmania.NfeClient.new(credentials, T.config(base)) |> T.ok!()
      assert {:ok, result} = Webmania.NfeClient.list_tax_classes(client)
      # The list variant carries TaxClassListItem values directly.
      assert result.variant == :List
      [%Fiscal.TaxClassListItem{} = item] = result.value
      assert item.type == "TYPE\0VALUE"
      assert item.__extra__ == %{"TYPE" => "case-distinct-extension"}
      assert Fiscal.NfeListTaxClassesResponse.to_value(result) == {:ok, raw}
      assert_receive {^ref, :request, {"GET", "/1/nfe/classe-imposto/", _, _}}, 1000
      assert_receive {^ref, :closed}, 1000
      refute_receive {^ref, :request, _}, 20
    end
  end

  test "forced caller GC during a sent mutation preserves cancel Unknown and reaps ports" do
    for tls <- [false, true] do
      uuid = "a1234567-1234-4234-8234-123456789abc"
      body = Fiscal.NfeLookupRequest.new(%{uuid: uuid}) |> T.ok!()
      ports = Port.list() |> Enum.sort()
      {base, ref, _} = T.start_server([], tls, :stall)

      credentials =
        Webmania.Credentials.company(
          "synthetic-key",
          "synthetic-secret",
          "synthetic-token",
          "synthetic-token-secret"
        )
        |> T.ok!()

      client = Webmania.NfeClient.new(credentials, T.config(base)) |> T.ok!()
      cancel = Webmania.Cancellation.new()
      parent = self()

      {caller, monitor} =
        spawn_monitor(fn ->
          result = Webmania.NfeClient.query_document(client, body, cancel: cancel)
          send(parent, {ref, :result, result})
        end)

      assert_receive {^ref, :request, _}, 3000
      for _ <- 1..5, do: assert(:erlang.garbage_collect(caller))
      assert Process.alive?(caller)
      Webmania.Cancellation.cancel(cancel)

      assert_receive {^ref, :result,
                      {:error, %Webmania.Error{kind: "cancelled", outcome: "unknown"} = error}},
                     5000

      assert is_map(Webmania.Error.reveal_recovery(error))
      refute String.contains?(inspect(error), uuid)
      assert_receive {:DOWN, ^monitor, :process, ^caller, :normal}, 1000
      assert_receive {^ref, :eof}, 1000
      assert_receive {^ref, :closed}, 1000
      refute_receive {^ref, :request, _}, 20
      assert Port.list() |> Enum.sort() == ports
      Webmania.Cancellation.close(cancel)
    end
  end
end
