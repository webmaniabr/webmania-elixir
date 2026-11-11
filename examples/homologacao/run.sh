#!/bin/sh
# Compiles this Mix application offline (no dependencies) and runs the optional
# homologation example. Configuration comes only from the environment; see
# README, "Teste em homologação". Without WEBMANIA_LIVE=1 it exits 77 before any
# network.
set -eu
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
if [ "${WEBMANIA_LIVE:-}" != "1" ]; then
  printf '%s\n' '{"result":"blocked"}'
  exit 77
fi
# The project is compiled in a private copy, so the source tree may be read-only.
WORK="${WEBMANIA_EXAMPLE_WORK:-$(mktemp -d)}"
cp -R "$ROOT" "$WORK/src"
cd "$WORK/src"
MIX_ENV="${MIX_ENV:-prod}" mix compile >/dev/null
exec env MIX_ENV="${MIX_ENV:-prod}" mix run examples/homologacao/main.exs
