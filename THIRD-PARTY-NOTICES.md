# Third-party notices

The Elixir facade and minimal process launcher are proprietary Webmania software
under the included LICENSE. Erlang/OTP and Elixir are deployment prerequisites
and are not copied into the distributed SDK archive.

The bundled `webmania-native-worker` is built from the shared Webmania native
runtime and the exact Webmania Rust SDK `0.1.0-alpha.7` crate it contains. That
runtime includes its locked dependencies. Their original license texts, when the
dependency ships them, are included under `THIRD_PARTY_LICENSES/` and in the
self-contained native source archive under `native/source/`, which also keeps each
dependency's Cargo metadata. `THIRD_PARTY_LICENSES/INDEX.json` records the license
each crate declares; `jni-sys-macros-0.4.1` ships no license file and declares
`MIT OR Apache-2.0`. The Webmania portions remain proprietary.

The launcher implements SHA-256 from the public FIPS180-4 algorithm; it contains
no copied HTTP implementation and no third-party SHA library. Python and Hex
are author tooling only and are not runtime dependencies of this Mix package.
