# Detalhes técnicos de integração

Este documento reúne os detalhes técnicos do SDK para Elixir que complementam o [README](../README.md): autenticação, URL base, limites de transporte, arquivos, relatórios e o tratamento do resultado fiscal. O texto é o mesmo que estava no README até esta versão.

## Escopo e disponibilidade

Integração de **Emissor Fiscal e Monitor Fiscal** em aplicações de servidor. O Emissor abrange NF-e/NFC-e na API1 e NFS-e, CT-e/CT-e OS, MDF-e, NFCom e DC-e na API2, com arquivos, eventos e as três operações gerenciais B2B públicas da API1. O Monitor mantém apenas as famílias de documentos e capacidades do seu contrato documentado.

Disponível no repositório público [github.com/webmaniabr/webmania-elixir](https://github.com/webmaniabr/webmania-elixir), com instalação a partir do clone (veja a seção Instalação). Ainda não há publicação em registro de pacotes; os nomes e versões abaixo identificam os pacotes gerados a partir desta fonte. Regras do provedor, aceitação fiscal real e plataformas adicionais permanecem com limitações explícitas.

## Visão geral para desenvolvedores

| Item | Detalhe |
|---|---|
| Status | Disponível no GitHub: versão `0.1.0-alpha.6` (aplicação Mix `:webmania_sdk`), instalada a partir do clone do repositório; ainda sem publicação no Hex |
| Runtime | Elixir `~> 1.18` (`mix.exs`), Erlang/OTP 27; perfil medido Linux arm64/glibc 2.36, com o worker nativo incluído |
| Clientes | `Webmania.NfeClient` (NF-e/NFC-e API 1.0), `Webmania.NfeFilesClient`, `Webmania.ResellerClient` (gerencial B2B API 1.0), `Webmania.EmitterClient` (emissor API 2.0), `Webmania.EmitterFilesClient`, `Webmania.MonitorClient` (Monitor Fiscal) |
| Erros | Chamadas retornam `{:ok, valor}` ou `{:error, %Webmania.Error{}}`, com `kind`, `status`, `outcome` e `correlation_id` |
| Contrato | Metadados fixados em [api-metadata.json](../api-metadata.json) (SHA-256 `12c59c586019661a80ef15af99afe152283e8c927cbd47dd1b2a740d313c87ec`), sobre o motor Rust `0.1.0-alpha.7` e o contrato fixado por conteúdo (`contract_digest` `371a499f74012bb6b41f23642869dee4954e8394dcba7642edc701aedb3dd59e`, 14 módulos) |

### Autenticação

- **NF-e/NFC-e (API 1.0)** — `Webmania.Credentials.company(key, secret, token, token_secret)` e `Webmania.Credentials.reseller(...)` são enviadas pelo worker nos cabeçalhos `X-Consumer-Key`, `X-Consumer-Secret`, `X-Access-Token` e `X-Access-Token-Secret`.
- **API 2.0** — `Webmania.Credentials.issuer(token)` (emissor) e `Webmania.Credentials.monitor(token)` (Monitor) são enviadas como `Authorization: Bearer <token>`; são credenciais distintas.

O exemplo abaixo lê as credenciais com `System.fetch_env!` (`WEBMANIA_CONSUMER_KEY`, `WEBMANIA_CONSUMER_SECRET`, `WEBMANIA_ACCESS_TOKEN`, `WEBMANIA_ACCESS_TOKEN_SECRET`).

## Requisitos

Elixir 1.18.4, Erlang/OTP 27.3.4.19 em Linux arm64/glibc 2.36. O aplicativo Mix inclui worker e launcher; o consumidor não precisa de Rust ou C. O pacote ainda não está publicado no Hex; instale a partir do clone do repositório.

O motor incorporado é o crate Rust `webmania-sdk 0.1.0-alpha.7` (SHA-256 `1836197146b2604e83cf57a9ea1ef53712a9e256d7e686e97947c84f08ad0c8b`), cuja fonte nativa reproduzível acompanha o repositório em `native/source/native-runtime-source-0.1.0-alpha.7.tar.gz`. O worker Linux arm64 tem 18.680.256 bytes e SHA-256 `1d81d4dff57a8b233d2ce9316d201fd10b2740203d9890ef87a87144ea0d0f15`; os metadados fixados usam SHA-256 `12c59c586019661a80ef15af99afe152283e8c927cbd47dd1b2a740d313c87ec`. Esses pins identificam a implementação local e não certificam uma operação fiscal real.

## Instalação

Clone o repositório público em vendor/webmania_sdk e adicione ao mix.exs:

```sh
git clone https://github.com/webmaniabr/webmania-elixir.git vendor/webmania_sdk
```

```elixir
defp deps do
  [{:webmania_sdk, path: "vendor/webmania_sdk"}]
end
```

Execute mix deps.get e compile a aplicação normalmente. A compilação usa os binários incorporados e não faz download de worker. A aplicação :webmania_sdk ainda não está publicada no Hex.

## Primeira consulta

Configure somente a credencial do serviço escolhido, por instância, a partir de ambiente privado ou cofre de segredos. O exemplo não emite nem cancela documentos. Execute consultas apenas com conta e ambiente autorizados; uma origem de fixture controlada deve ser configurada explicitamente pela API do cliente.

```elixir
{:ok, credentials} = Webmania.Credentials.company(
  System.fetch_env!("WEBMANIA_CONSUMER_KEY"), System.fetch_env!("WEBMANIA_CONSUMER_SECRET"),
  System.fetch_env!("WEBMANIA_ACCESS_TOKEN"), System.fetch_env!("WEBMANIA_ACCESS_TOKEN_SECRET")
)
{:ok, config} = Webmania.Config.new(base_url: System.get_env("WEBMANIA_BASE_URL"))
{:ok, client} = Webmania.NfeClient.new(credentials, config)
case Webmania.NfeClient.get_sefaz_status(client, timeout_ms: 30_000) do
  {:ok, _status} -> IO.puts("Consulta concluída.") # Escolha os campos do modelo tipado.
  {:error, error} -> IO.puts("Falha: #{error.kind}") # Não exponha os dados privados.
end
```

O exemplo usa `WEBMANIA_BASE_URL` apenas como configuração opcional: deixe-a ausente para a origem padrão do serviço. Configure uma origem alternativa somente quando ela for controlada e autorizada; HTTP sem TLS é admitido apenas para endereços loopback literais de fixtures.

A construção do cliente não comprova habilitação da conta. Respostas de sucesso e conversões explícitas para JSON podem conter dados fiscais, credenciais novas ou URLs privadas. Exponha apenas os campos necessários à aplicação.

## Ambiente e URL base

Sem `base_url`, cada cliente usa a origem pública do seu serviço: `Webmania.NfeClient` em `https://webmania.com.br/api`, `Webmania.ResellerClient` em `https://webmania.com.br`, `Webmania.NfeFilesClient` em `https://nfe.webmania.com.br` e `Webmania.EmitterClient`, `Webmania.EmitterFilesClient` e `Webmania.MonitorClient` em `https://api.webmania.com.br`. Para outro ambiente autorizado, passe a cada cliente um `Webmania.Config.new(base_url: ...)` com a origem HTTPS explícita (e prefixo opcional) do serviço; clientes de arquivo também exigem `trusted_file_origins: [...]` com a mesma origem. Cada cliente envia requisições somente para a origem e o prefixo configurados, e uma origem inválida falha com erro `configuration` antes de DNS ou conexão. O exemplo de homologação lê `WEBMANIA_API1_BASE_URL`, `WEBMANIA_FILES_BASE_URL` e `WEBMANIA_API2_BASE_URL`.

### Relatórios

Relatórios atuais são baixados com `Webmania.EmitterFilesClient.download_report_v2(client, uuid, auth)` (`/relatorios/{uuid}` na API2) a partir da `url` devolvida pela criação/consulta do relatório: aceite somente uma URL da origem e do prefixo configurados seguida de `/relatorios/<uuid>` e use `Webmania.FileAuth.anonymous()` (a URL é a capability) ou `Webmania.FileAuth.issuer()`. Redirecionamentos não são seguidos. Relatórios legados continuam em `Webmania.NfeFilesClient.download_report/3` com `Webmania.FileAuth.public_report()`: CSV e XLSX chegam rotulados `text/xml` e o formato é identificado pelos bytes (assinatura ZIP = XLSX, caso contrário CSV completo preservado byte a byte); XML, HTML e JSON nunca são aceitos como relatório.

## Integração e limites

Clientes usam credenciais nominais e escopos independentes. Cada operação possui worker próprio; credenciais viajam apenas pelo stdin. Não há processo HTTP persistente a fechar no cliente. Cancellation.cancel interrompe a chamada; Cancellation.close libera o token. Morte do chamador encerra seu worker e a limpeza espera reap.

Modelos new/from_value validam pelo backend local sem HTTP. Ausência é :unset; null é nil quando permitido. __extra__ aceita chaves string e recusa colisão com nomes declarados. Chaves desconhecidas nunca se tornam átomos. Inteiros são arbitrários, exceto campos i64 explícitos. Webmania.Number preserva decimal/expoente exatos; Float é recusado. to_value/to_json revela dados deliberadamente; Inspect oculta conteúdo.

O prazo total inclui preparação, encoding, verificação de executável, processo, IPC e projeção; é finito até 300.000 ms. Erros preservam Unknown e recuperação protegida por Error.reveal_recovery. Se a chamada nativa terminou mas a projeção falhou, sdk_call_completed e Error.reveal_result preservam o resultado original protegido, sem sugerir autorização fiscal ou replay.

FileResponse.bytes devolve os bytes, inclusive HTML opaco. FileResult separa arquivo, redirect protegido e NfsePdfPending; a pendência não tem bytes ou Location. FileResult.reveal_location só revela a referência, sem transferir. O perfil estrutural é o do worker fixado; não há descriptografia.

Helpers.paginate aceita callback tipado e limita páginas, itens, agregado e prazo. Helpers.poll aceita callback e predicado com tentativas finitas e intervalo mínimo de cinco segundos. Propague as call_options fornecidas pelo helper ao cliente apropriado. Ciclos, limites incompletos e erros encerram o fluxo; callback não ganha permissão para repetir mutações.

O vínculo fiscal contextual de alguns nomes JSON NFCom ainda depende de confirmação; o mapeamento de wire não encerra essa condição do contrato.

## Credenciais e resultado fiscal

Credenciais da empresa API1, revenda API1, Bearer do emissor API2 e Bearer Monitor pertencem a escopos diferentes. Arquivos exigem a modalidade de acesso documentada. Uma falha não autoriza trocar automaticamente o modo ou a credencial. Mantenha segredos no servidor.

O catálogo contém 103 operações nomeadas, 102 habilitadas. `nfeDownloadIbsCbsEventXml` não está disponível nesta versão do SDK: a função existe, mas retorna `{:error, %Webmania.Error{kind: "capability"}}` antes da validação e não envia requisição. Condições fiscais, municipais, de cadastro, provedor e implantação ainda pendentes continuam sujeitas ao contrato e ao serviço. Validação local, cálculo ou prévia não comprovam autorização fiscal.

Não há retry automático de operação nem seguimento automático de redirects. Depois de possível envio de uma operação com efeito, uma falha pode indicar resultado desconhecido. Preserve o seletor original com segurança, consulte a tentativa anterior e decida explicitamente como prosseguir. Uma referência protegida exige acesso deliberado e pode estar ausente; não é uma chave de idempotência.

## Arquivos e processamento

Verifique tipo de resultado, status e representação antes de consumir bytes. JSON pendente, HTML e redirect não comprovam PDF pronto. Proteção de PDF/ZIP é distinta da autorização de download; não há descriptografia automática nem confirmação de autenticidade fiscal. O reconhecimento de formatos cobre somente o perfil documentado desta implementação. Uma Location revelada continua privada e exige decisão explícita de origem e autenticação para outra transferência.

Paginação e espera são optativas e limitadas quando disponíveis. Um estado futuro ou desconhecido não significa conclusão. Não repita emissão, cancelamento ou importação inicial como se fossem consultas de processamento.

Para migrar uma integração anterior, remapeie métodos, modelos e escopos de credencial pela referência desta versão. Não há promessa de substituição automática de outro SDK; compare também o changelog quando disponível.

## Documentação para assistentes e contratos

Índices em Markdown para assistentes: [documentação Webmania](https://webmania.com.br/docs/llms.txt) e [API 2.0](https://api.webmania.com.br/llms.txt). Contratos OpenAPI: [API 2.0](https://api.webmania.com.br/docs/openapi) e [NF-e](https://webmania.com.br/docs/rest-api-nfe/?format=openapi).

No catálogo de SDKs, `elixir` aparece como disponível no repositório público, com instalação pelo clone; plataformas Elixir ~> 1.18 e Linux arm64. Estar listado nesses índices não amplia a cobertura documentada deste SDK.
