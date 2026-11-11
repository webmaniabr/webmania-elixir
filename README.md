<p align="center"><img src=".github/assets/webmania-logo.png" alt="Webmania" width="320"></p>

# Webmania SDK para Elixir

Através do emissor fiscal da Webmania®, você conta com a emissão e o arquivamento dos seus documentos fiscais, cálculo automático de impostos, geração do DANFE para impressão e envio automático de e-mails para os clientes. Com este SDK, o seu sistema em Elixir se integra à nossa REST API para emitir, consultar e cancelar NF-e, NFC-e, NFS-e, CT-e, MDF-e, NFCom e DC-e, baixar XML e PDF dos documentos e usar o Monitor Fiscal.

- Emissor de Nota Fiscal Webmania®: [Saiba mais](https://webmania.com.br/nota-fiscal-eletronica/)
- Documentação da REST API: [Visualizar](https://webmania.com.br/docs/)
- Índice da documentação para assistentes de IA: [llms.txt](https://webmania.com.br/docs/llms.txt)

## Requisitos

- Contrate um dos planos de Nota Fiscal Eletrônica da Webmania®: [Assine agora mesmo](https://webmania.com.br/nota-fiscal-eletronica/#plans-section).
- Elixir 1.18 ou superior com Erlang/OTP 27.
- Linux arm64 com glibc 2.36 ou superior. A aplicação já traz o worker nativo que faz as requisições HTTPS.
- Credenciais de acesso da sua empresa, disponíveis no [Painel de Controle](https://webmania.com.br/painel/).

## Instalação

O SDK é distribuído pelo repositório [github.com/webmaniabr/webmania-elixir](https://github.com/webmaniabr/webmania-elixir) e ainda não está publicado no Hex. Clone o repositório dentro do seu projeto e declare-o como dependência local:

```sh
git clone https://github.com/webmaniabr/webmania-elixir.git vendor/webmania_sdk
```

```elixir
defp deps do
  [{:webmania_sdk, path: "vendor/webmania_sdk"}]
end
```

Depois execute `mix deps.get` e compile a aplicação normalmente.

## Credenciais

Cada serviço usa a sua própria credencial. Guarde-as em variáveis de ambiente (ou em um cofre de segredos) no servidor e nunca as escreva no código-fonte:

| Variável de ambiente | Uso |
|---|---|
| `WEBMANIA_CONSUMER_KEY`, `WEBMANIA_CONSUMER_SECRET`, `WEBMANIA_ACCESS_TOKEN`, `WEBMANIA_ACCESS_TOKEN_SECRET` | NF-e e NFC-e (`Webmania.NfeClient`) e arquivos da NF-e (`Webmania.NfeFilesClient`) |
| `WEBMANIA_ISSUER_TOKEN` | NFS-e, CT-e, MDF-e, NFCom e DC-e (`Webmania.EmitterClient`) e seus arquivos (`Webmania.EmitterFilesClient`) |
| `WEBMANIA_MONITOR_TOKEN` | Monitor Fiscal (`Webmania.MonitorClient`) |

```elixir
alias Webmania.Models.{Api1Fiscal, Api2NfseIssuance}

{:ok, credenciais} = Webmania.Credentials.company(
  System.fetch_env!("WEBMANIA_CONSUMER_KEY"), System.fetch_env!("WEBMANIA_CONSUMER_SECRET"),
  System.fetch_env!("WEBMANIA_ACCESS_TOKEN"), System.fetch_env!("WEBMANIA_ACCESS_TOKEN_SECRET")
)
{:ok, token_emissor} = Webmania.Credentials.issuer(System.fetch_env!("WEBMANIA_ISSUER_TOKEN"))
{:ok, config} = Webmania.Config.new([])

{:ok, nfe} = Webmania.NfeClient.new(credenciais, config)            # NF-e e NFC-e
{:ok, emissor} = Webmania.EmitterClient.new(token_emissor, config)  # NFS-e, CT-e, MDF-e, NFCom e DC-e
```

Todas as chamadas devolvem `{:ok, valor}` ou `{:error, %Webmania.Error{}}`; os valores são structs tipadas.

## Utilização

Os exemplos abaixo usam o ambiente de **homologação** (`ambiente` 2), em que os documentos não têm validade fiscal. Para emitir em produção, envie `ambiente` 1. Os pedidos são montados a partir de JSON; informe valores decimais como texto (`"44.90"`) para manter a precisão.

### Status do SEFAZ e certificado A1

```elixir
{:ok, sefaz} = Webmania.NfeClient.get_sefaz_status(nfe)
IO.inspect(sefaz.status)              # online ou offline

{:ok, certificado} = Webmania.NfeClient.get_certificate_validity(nfe)
IO.inspect(certificado.expiration)    # dias até o vencimento do certificado A1
```

### Emitir NF-e

Para emitir uma NF-e, monte o pedido a partir do JSON da nota e use `issue_document`. A mesma função emite NFC-e com `"modelo": 2`.

```elixir
{:ok, pedido} = Api1Fiscal.NfeIssueRequest.from_json("""
{
  "operacao": 1,
  "natureza_operacao": "Venda de produção do estabelecimento",
  "modelo": 1,
  "finalidade": 1,
  "ambiente": 2,
  "cliente": {
    "cpf": "000.000.000-00", "nome_completo": "Nome do Cliente",
    "endereco": "Av. Brg. Faria Lima", "numero": "1000", "bairro": "Itaim Bibi",
    "cidade": "São Paulo", "uf": "SP", "cep": "00000-000", "email": "nome@email.com"
  },
  "produtos": [{
    "nome": "Nome do produto", "codigo": "nome-do-produto", "ncm": "6109.10.00",
    "quantidade": "1", "unidade": "UN", "origem": 0,
    "subtotal": "44.90", "total": "44.90", "classe_imposto": "REF1000"
  }],
  "pedido": {"presenca": 2, "modalidade_frete": 9, "pagamento": 0, "forma_pagamento": "01", "total": "44.90"}
}
""")

{:ok, %{variant: :NfeDocument, value: nota}} = Webmania.NfeClient.issue_document(nfe, pedido)
uuid = nota.uuid          # identificador único da nota fiscal
IO.puts(nota.status)      # aprovado, reprovado, processamento...
IO.inspect(nota.chave)    # chave de acesso
IO.inspect(nota.xml)      # URL do XML
IO.inspect(nota.danfe)    # URL do DANFE (PDF)
IO.inspect(nota.motivo)   # retorno do SEFAZ
```

Somente o status `aprovado` indica uma nota autorizada. Quando o retorno for `processamento`, consulte a nota alguns segundos depois.

### Consultar NF-e

```elixir
{:ok, consulta} = Api1Fiscal.NfeGetDocumentQuery.from_value(%{"uuid" => uuid})
{:ok, %{variant: :NfeDocument, value: documento}} = Webmania.NfeClient.get_document(nfe, consulta)
IO.puts(documento.status)
```

A consulta também aceita a chave de acesso (`chave`).

### Cancelar NF-e

```elixir
{:ok, cancelamento} = Api1Fiscal.NfeCancelRequest.from_value(%{
  "uuid" => uuid,
  "motivo" => "Cancelamento por erro no pedido."   # mínimo de 15 caracteres
})
{:ok, cancelada} = Webmania.NfeClient.cancel_document(nfe, cancelamento)
IO.puts(cancelada.status)
```

### Baixar o DANFE e o XML

O cliente de arquivos usa uma configuração que confia na origem pública dos arquivos da NF-e:

```elixir
{:ok, config_arquivos} = Webmania.Config.new(trusted_file_origins: ["https://nfe.webmania.com.br"])
{:ok, arquivos} = Webmania.NfeFilesClient.new(credenciais, config_arquivos)
acesso = Webmania.FileAuth.company()

{:ok, danfe} = Webmania.NfeFilesClient.download_danfe(arquivos, uuid, acesso)
File.write!("danfe.pdf", Webmania.FileResponse.bytes(danfe))

{:ok, xml} = Webmania.NfeFilesClient.download_xml(arquivos, uuid, acesso)
File.write!("nfe.xml", Webmania.FileResponse.bytes(xml))
```

### Emitir, consultar e cancelar NFS-e

A NFS-e é emitida a partir de um ou mais RPS com `Webmania.EmitterClient.issue_nfse`:

```elixir
{:ok, rps} = Api2NfseIssuance.EmitterIssueNfsePayload.from_json("""
{
  "ambiente": 2,
  "rps": [{
    "servico": {
      "valor_servicos": "15.00",
      "discriminacao": "Prestação de serviço referente ao mês 10/2026",
      "classe_imposto": "REF000000"
    },
    "tomador": {"cpf": "000.000.000-00", "nome_completo": "Nome do tomador"}
  }]
}
""")
{:ok, nfse} = Webmania.EmitterClient.issue_nfse(emissor, rps)
IO.puts("#{nfse.uuid} #{nfse.status}")

{:ok, consulta_nfse} = Webmania.EmitterClient.get_nfse(emissor, nfse.uuid)
IO.puts(consulta_nfse.status)

{:ok, cancela} = Api2NfseIssuance.EmitterCancelNfsePayload.from_value(%{
  "uuid" => nfse.uuid,
  "motivo" => "1",                                           # código do motivo (veja a documentação da NFS-e)
  "justificativa" => "Serviço cancelado a pedido do tomador." # mínimo de 15 caracteres
})
{:ok, cancelada_nfse} = Webmania.EmitterClient.cancel_nfse(emissor, cancela)
IO.puts(cancelada_nfse.status)
```

### Tratamento de erros

As falhas chegam como `{:error, %Webmania.Error{}}`:

```elixir
case Webmania.NfeClient.issue_document(nfe, pedido) do
  {:ok, resultado} ->
    resultado

  {:error, %Webmania.Error{} = erro} ->
    IO.puts(erro.kind)            # validation (dados recusados antes do envio), business (recusa da API ou do SEFAZ), http, timeout...
    IO.inspect(erro.status)       # status HTTP, quando houver
    IO.puts(Exception.message(erro)) # mensagem, com dados sensíveis mascarados
    if erro.outcome == "unknown" do
      # A requisição pode ter sido processada: consulte a nota antes de emitir de novo.
      :consultar_antes
    end
end
```

O SDK não repete requisições automaticamente. Se uma emissão ou um cancelamento terminar com resultado desconhecido (`outcome == "unknown"`), consulte o documento antes de tentar novamente, para não emitir em duplicidade.

## Métodos disponíveis

**NF-e e NFC-e** — `Webmania.NfeClient`

- **issue_document**: Emissão de NF-e ou NFC-e junto ao SEFAZ.
- **get_document**: Consulta da nota fiscal pelo UUID, pela chave de acesso ou pelo ID do pedido.
- **cancel_document**: Cancelamento de NF-e ou NFC-e.
- **create_correction**: Carta de correção.
- **void_numbering**: Inutilização de sequência de numeração.
- **issue_return**: Emissão de NF-e de devolução.
- **issue_complement**: Emissão de NF-e complementar.
- **issue_adjustment**: Emissão de NF-e de ajuste.
- **create_manifestation**: Manifestação do destinatário.
- **create_payment_event** / **cancel_payment_event**: Evento de conciliação financeira (ECONF) e o seu cancelamento.
- **create_ibs_cbs_event** / **cancel_ibs_cbs_event**: Eventos de IBS/CBS e o seu cancelamento.
- **list_tax_classes** / **save_tax_classes** / **delete_tax_classes**: Classes de imposto.
- **create_or_poll_report**: Relatórios fiscais.
- **update_company**: Atualização dos dados da empresa emissora.
- **get_sefaz_status**: Verifica se o SEFAZ está online ou offline.
- **get_certificate_validity**: Verifica quantos dias faltam para o certificado A1 expirar.

**NFS-e** — `Webmania.EmitterClient`

- **issue_nfse**: Emissão de NFS-e a partir de RPS.
- **get_nfse**: Consulta da NFS-e.
- **cancel_nfse**: Cancelamento da NFS-e.
- **replace_nfse**: Substituição de NFS-e.
- **manifest_nfse**: Manifestação sobre NFS-e nacional.
- **get_nfse_provider_status**: Recursos do provedor de NFS-e do município da empresa.

**CT-e e CT-e OS** — `Webmania.EmitterClient`

- **issue_cte** / **issue_simplified_cte**: Emissão de CT-e, CT-e OS e CT-e simplificado.
- **get_cte**: Consulta do CT-e.
- **cancel_cte**: Cancelamento do CT-e.
- **correct_cte**: Carta de correção do CT-e.
- **confirm_cte_delivery** / **cancel_cte_delivery**: Comprovante de entrega e o seu cancelamento.
- **link_cte_payment** / **cancel_cte_payment_link** / **get_cte_payment_events**: Eventos de pagamento do CT-e.

**MDF-e** — `Webmania.EmitterClient`

- **issue_mdfe**: Emissão do MDF-e.
- **get_mdfe**: Consulta do MDF-e pela chave de acesso.
- **close_mdfe**: Encerramento do MDF-e.
- **cancel_mdfe**: Cancelamento do MDF-e.
- **add_mdfe_conductor**: Inclusão de condutor.

**NFCom e DC-e** — `Webmania.EmitterClient`

- **issue_nfcom** / **get_nfcom** / **cancel_nfcom**: Emissão, consulta e cancelamento da NFCom.
- **get_nfcom_payment_events**: Eventos de pagamento da NFCom.
- **get_nfcom_service_status**: Disponibilidade do serviço da NFCom no SEFAZ.
- **issue_dce** / **get_dce** / **cancel_dce**: Emissão, consulta e cancelamento da DC-e.

**Arquivos (XML e PDF)** — `Webmania.NfeFilesClient` e `Webmania.EmitterFilesClient`

- **download_danfe** / **download_simple_danfe** / **download_label_danfe**: DANFE completo, simplificado e etiqueta.
- **download_xml** / **download_cancellation_xml**: XML da NF-e e do cancelamento.
- **download_correction_pdf** / **download_correction_xml**: PDF e XML da carta de correção.
- **get_nfse_xml** / **get_nfse_pdf** / **get_nfse_rps_pdf**: XML e PDF da NFS-e e PDF do RPS.
- **get_cte_xml** / **get_cte_pdf** / **get_mdfe_xml** / **get_mdfe_pdf** / **get_nfcom_xml** / **get_nfcom_pdf** / **get_dce_xml** / **get_dce_pdf**: XML e PDF de CT-e, MDF-e, NFCom e DC-e.

**Monitor Fiscal** — `Webmania.MonitorClient`

- **search_documents** / **get_document** / **list_document_events**: Busca e consulta de documentos recebidos e do histórico de eventos.
- **manifest_document**: Manifestação do destinatário.
- **import_document** / **get_import_status**: Importação por chave de acesso, XML ou ZIP.
- **list_companies** / **create_company** / **update_company**: Empresas monitoradas.

**Gerencial B2B** — `Webmania.ResellerClient`

- **create_companies** / **list_companies** / **get_processed_requests**: Cadastro de empresas, listagem e contagem de notas processadas por empresa.

A lista completa, com todas as funções do Monitor Fiscal e dos arquivos, está em [docs/OPERATIONS.md](docs/OPERATIONS.md).

## Exemplo completo em homologação

A pasta [examples/homologacao](examples/homologacao) traz um programa que emite, consulta, baixa os arquivos e cancela uma NF-e e uma NFS-e em homologação, usando as credenciais das variáveis de ambiente. Por segurança, ele só envia requisições quando `WEBMANIA_LIVE=1` está definido e `WEBMANIA_LIVE_ALLOWED_HOSTS` lista os hosts da API. Para rodar só as consultas (status do SEFAZ, certificado e provedor de NFS-e):

```sh
WEBMANIA_LIVE=1 WEBMANIA_LIVE_SCOPE=readonly WEBMANIA_LIVE_ALLOWED_HOSTS=webmania.com.br,nfe.webmania.com.br,api.webmania.com.br sh examples/homologacao/run.sh
```

As variáveis aceitas e o formato da saída estão em [examples/homologacao/README.md](examples/homologacao/README.md).

## Documentação

- Documentação da REST API: [NF-e / NFC-e](https://webmania.com.br/docs/rest-api-nfe/) · [NFS-e](https://webmania.com.br/docs/rest-api-nfse/) · [CT-e](https://webmania.com.br/docs/rest-api-cte/) · [MDF-e](https://webmania.com.br/docs/rest-api-mdfe/) · [NFCom](https://webmania.com.br/docs/rest-api-nfcom/) · [DC-e](https://webmania.com.br/docs/rest-api-dce/) · [Monitor Fiscal](https://webmania.com.br/docs/rest-api-monitor-fiscal/) · [Gerencial B2B](https://webmania.com.br/docs/rest-api-gerencial-b2b/)
- Contratos OpenAPI: [API 2.0](https://api.webmania.com.br/docs/openapi) e [NF-e](https://webmania.com.br/docs/rest-api-nfe/?format=openapi)
- Detalhes técnicos do SDK (URL base, arquivos, relatórios, limites): [docs/INTEGRATION.md](docs/INTEGRATION.md)
- Lista completa de funções: [docs/OPERATIONS.md](docs/OPERATIONS.md)
- Desenvolvimento e testes do SDK: [docs/TESTING.md](docs/TESTING.md)
- Histórico de versões: [CHANGELOG.md](CHANGELOG.md)

## Suporte

Qualquer dúvida entre em contato na nossa [Central de Ajuda](https://ajuda.webmania.com.br) ou acesse o [Painel de Controle](https://webmania.com.br/painel/) para conversar em tempo real no Chat ou Abrir um chamado.

## Licença

Licença proprietária Webmania®: veja [LICENSE](LICENSE) e os [Termos de Uso](https://webmania.com.br/termos-de-uso/). As dependências de terceiros mantêm as suas próprias licenças.
