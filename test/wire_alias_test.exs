defmodule Webmania.WireAliasTest do
  use ExUnit.Case, async: false
  alias Webmania.Models.Api2NfcomIssuance.NfcomDocumentedGroup2114, as: Group

  test "Rust identifiers stay stable while all three literal JSON aliases roundtrip" do
    wire = %{
      "substituicao.chave_nfcom_substituida" => "key\0x",
      "substituicao.motivo" => "01",
      "substituicao.nf_referenciada.*" => %{"modelo" => 21},
      "substituicao_motivo" => "distinct extra"
    }

    assert {:ok, value} = Group.from_value(wire)
    assert value.substituicao_chave_nfcom_substituida == "key\0x"
    assert value.substituicao_motivo == "01"
    assert value.substituicao_nf_referenciada == %{"modelo" => 21}
    assert value.__extra__ == %{"substituicao_motivo" => "distinct extra"}
    assert {:ok, ^wire} = Group.to_value(value)
    assert {:ok, constructed} = Group.new(%{substituicao_motivo: "02"})
    assert {:ok, %{"substituicao.motivo" => "02"}} = Group.to_value(constructed)

    for name <- [
          "substituicao.chave_nfcom_substituida",
          "substituicao.motivo",
          "substituicao.nf_referenciada.*"
        ] do
      assert {:error, _} = Group.to_value(%Group{__extra__: %{name => "shadow"}})
    end

    assert {:error, _} = Group.from_value(%{"substituicao.motivo" => false})
  end
end
