defmodule Webmania.HintsParserTest do
  use ExUnit.Case, async: false
  alias Webmania.Models.Api1Fiscal, as: Fiscal

  defp hints(hex) do
    %{
      "format" => "variant-preorder-u8-hex-v1",
      "metadata_sha256" => Webmania.Generated.metadata_sha256(),
      "indices_hex" => hex
    }
  end

  test "nominal union indices are authoritative, exact, and never structural guesses" do
    value = %{"descricao" => "synthetic", "tipo" => "nfse", "local_prestacao" => "1"}
    assert {:ok, model} = Webmania.Model.project(Fiscal.NfseServiceTaxClass, value, hints("01"))
    assert model.variant == :NfseTaxClassProvider56
    assert Fiscal.NfseServiceTaxClass.to_value(model) == {:ok, value}

    for bad <- [
          nil,
          hints(""),
          hints("ff"),
          hints("0100"),
          hints("0"),
          hints("GG"),
          Map.put(hints("01"), "metadata_sha256", String.duplicate("0", 64)),
          Map.put(hints("01"), "format", "unknown")
        ] do
      assert {:error, %Webmania.Error{kind: "protocol"} = error} =
               Webmania.Model.project(Fiscal.NfseServiceTaxClass, value, bad)

      refute String.contains?(Exception.message(error), "synthetic")
    end

    assert {:ok, [a, b]} =
             Webmania.Model.project(
               {:array, Fiscal.NfseServiceTaxClass},
               [value, value],
               hints("0101")
             )

    assert a.variant == :NfseTaxClassProvider56 and b.variant == :NfseTaxClassProvider56

    assert {:error, %Webmania.Error{kind: "protocol"}} =
             Webmania.Model.project(
               {:array, Fiscal.NfseServiceTaxClass},
               [value, value],
               hints("01")
             )
  end

  test "preorder includes enum Null and skips nullable null, absence and raw extensions" do
    assert {:ok, model} = Webmania.Model.project(Fiscal.NfeDocumentLog, nil, hints("03"))
    assert model.variant == :Null and is_nil(model.value)

    assert {:error, %Webmania.Error{kind: "protocol"}} =
             Webmania.Model.project(Fiscal.NfeDocumentLog, nil, hints(""))

    assert {:ok, nil} = Webmania.Model.project({:nullable, Fiscal.NfeDocumentLog}, nil, hints(""))

    assert {:error, %Webmania.Error{kind: "protocol"}} =
             Webmania.Model.project({:nullable, Fiscal.NfeDocumentLog}, nil, hints("03"))

    assert {:ok, []} = Webmania.Model.project({:array, Fiscal.NfeDocumentLog}, [], hints(""))

    value = %{
      "status" => "online",
      "future" => %{"kind" => "union", "variant" => "PRIVATE_SENTINEL"}
    }

    assert {:ok, model} = Webmania.Model.project(Fiscal.NfeSefazStatus, value, hints(""))
    assert Fiscal.NfeSefazStatus.to_value(model) == {:ok, value}

    assert {:error, %Webmania.Error{kind: "protocol"}} =
             Webmania.Model.project(Fiscal.NfeSefazStatus, value, hints("00"))
  end
end
