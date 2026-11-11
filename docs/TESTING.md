# Testes e desenvolvimento

Como compilar e testar o SDK para Elixir a partir da fonte. O contrato fixado e a versão estão descritos em [INTEGRATION.md](INTEGRATION.md).

```sh
mix compile --warnings-as-errors
mix test --max-cases 1 --max-requires 1
```

A suíte usa HTTP/TLS loopback com fixtures sintéticas e não faz chamadas fiscais reais; os certificados em `test/fixtures/tls` são exclusivos de teste.
