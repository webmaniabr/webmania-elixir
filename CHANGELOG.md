# Changelog

## Não lançado

- README reescrito para a integração: requisitos, instalação, credenciais por variável de ambiente, exemplos de emissão, consulta e cancelamento de NF-e e NFS-e em homologação e a lista de métodos por produto. Os detalhes técnicos que estavam no README foram para `docs/INTEGRATION.md`, `docs/TESTING.md`, `docs/OPERATIONS.md` e `examples/homologacao/README.md`, sem mudança de conteúdo. Somente documentação.
- README: o SDK passa a ser apresentado como disponível no repositório público do GitHub, com instalação a partir do clone (`git clone https://github.com/webmaniabr/webmania-elixir.git`); continua sem publicação em registro de pacotes. Somente documentação: código e contrato não mudam.
- Exemplo de homologação: `WEBMANIA_LIVE_LEDGER` passa a ser obrigatória nos escopos `nfe`, `nfse` e `all` e precisa ser gravável antes de qualquer credencial ou requisição (saída 77 com `WEBMANIA_LIVE_LEDGER not configured` ou `ledger unwritable`), para que um resultado desconhecido nunca fique sem registro; o escopo `readonly` continua sem ledger. `test/homologacao_example_test.exs` cobre o ledger ausente, não gravável e gravável em cada escopo, sem nenhuma conexão.
- Contrato fixado por conteúdo (`contract_digest` `371a499f74012bb6b41f23642869dee4954e8394dcba7642edc701aedb3dd59e`): 14 módulos, 103 operações nomeadas e 102 habilitadas. Os corpos de emissão da API 2.0 passam a usar nomes derivados da operação (por exemplo `Webmania.Models.Api2NfseIssuance.EmitterIssueNfsePayload`); campos e serialização não mudam.
- Nova função `Webmania.EmitterFilesClient.download_report_v2/4` para relatórios atuais em `/relatorios/{uuid}` da API 2.0. `download_report` aceita CSV e XLSX rotulados `text/xml` só nessa rota, identificando o formato pelos bytes.
- Respostas HTTP 200 com erro funcional nas operações B2B e de leitura do emissor continuam falhas tipadas.
- Worker nativo e fonte nativa reproduzíveis: crate Rust `1836197146b2604e83cf57a9ea1ef53712a9e256d7e686e97947c84f08ad0c8b`, worker `1d81d4dff57a8b233d2ce9316d201fd10b2740203d9890ef87a87144ea0d0f15`, fonte nativa `native/source/native-runtime-source-0.1.0-alpha.7.tar.gz` (`8d91f5dbfe48217c417d66fd773cbdf6bde43cd89877d53a4814835f62abf4e4`), metadados `12c59c586019661a80ef15af99afe152283e8c927cbd47dd1b2a740d313c87ec`.
- Quando a janela de encerramento expira depois de um cancelamento ou do prazo, o erro mantém o motivo (`cancelled` ou `timeout`) e o resultado desconhecido, em vez de `protocol`.
- `THIRD_PARTY_LICENSES/INDEX.json` registra a licença declarada de cada dependência; `jni-sys-macros` declara `MIT OR Apache-2.0`.
- Classes de tributação (API 1.0): a listagem de `nfeListTaxClasses` é lida com esquemas próprios de leitura (`TaxClassListItem`, identificado por `type`, com os grupos `TaxClassListIcms`, `TaxClassListIpi`, `TaxClassListPis`, `TaxClassListCofins`, `TaxClassListIssqn` e `TaxClassListIbsCbs`), que aceitam os valores como foram salvos, inclusive texto vazio, alíquota nula e grupos de objeto único; `situacao_tributaria` de IPI, PIS e COFINS tem 2 dígitos e a do ICMS 2 (CST) ou 3 (CSOSN). O envio de `nfeSaveTaxClasses` segue as regras do salvamento: `icms`, `ipi`, `pis` e `cofins` são obrigatórios, as alíquotas por estado usam o campo `aliquota`, as alíquotas usam ponto decimal e o crédito presumido de IBS/CBS é um único objeto.
- NFS-e (API 2.0): `rps[].servico.impostos.reducao` e `cp` aceitam texto ou número JSON, como as demais alíquotas (tipo escalar `:scalar` em `EmitterIssueNfsePayload` e `NfseServiceGroup`).
- `nfeDownloadIbsCbsEventXml` continua indisponível nesta versão, com mensagem neutra e sem requisição.
- Seção "Ambiente e URL base" e exemplo opcional de homologação em `examples/homologacao`.
- Exemplo de homologação: `WEBMANIA_LIVE_ALLOWED_HOSTS` é obrigatória (sem ela nada é enviado) e o ledger guarda em `recovery` o seletor de recuperação protegido de um resultado desconhecido. Um cancelamento com resultado desconhecido fica no ledger com status `unknown` e a operação, e a consulta da NFS-e após o cancelamento só é sucesso com o status `cancelado`.
- Exemplo de homologação: depois do cancelamento, a NF-e e a NFS-e são consultadas de novo (consultas limitadas, com espera de 1 s dobrando até 10 s) enquanto o documento estiver em processamento ou em `processando_cancelamento`. Só o status `cancelado` é sucesso, e o XML de cancelamento da NF-e só é baixado depois dele; um cancelamento ainda pendente quando as consultas acabam fica no ledger com status `unknown` para a operação de cancelamento, com código de saída 1 e sem reenvio. `WEBMANIA_LIVE_POLL_ATTEMPTS` (1 a 24, padrão 24) só reduz o número de consultas. `test/homologacao_example_test.exs` verifica sobre loopback, para os dois modelos, a confirmação depois de uma consulta pendente, o cancelamento pendente até o fim das consultas, um status final diferente de `cancelado` e que o cancelamento é enviado uma única vez.

## 0.1.0-alpha.6

Native worker over Rust alpha.7: the quota-consuming report download is a possible-effect call. Other operation policies, public signatures, models and dependency versions are unchanged.

## 0.1.0-alpha.5

Worker, native source, metadata and backend identity of Rust alpha.6. Public models, 102 operation signatures, codecs, wire aliases, projection order and process lifecycle unchanged. ProtectedPdf, ProtectedZip and Xlsx fidelity retained.

## 0.1.0-alpha.4

Worker, native source, metadata, wire audit and licenses of Rust alpha.5 for bounded structural PDF/XLSX validation. Existing model/operation types, canonical projection, common values, wire aliases and process lifecycle unchanged. Incoherent positive PDF/XLSX stimuli corrected without relaxing structural negatives.

