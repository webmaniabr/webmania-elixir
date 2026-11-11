# Elixir process boundary

This facade owns one short-lived launcher and one native fiscal worker per call.
The HTTP implementation is exclusively the pinned shared Rust companion.

The worker protocol is version1: one BE32 length and exact UTF-8 JSON request,
one BE32 length and exact UTF-8 JSON response. The model-bearing members are
`body_json`, `query_json`, `path_json` and `value_json` strings so full data
depth64 does not consume the envelope's depth budget. Control and output are
bounded to32MiB and40MiB. The worker receives no arguments, no environment and no
unrelated descriptors. Credentials and tokens appear only in stdin.

The minimal launcher has a separate local pipe protocol so cancellation can
interrupt a partially written worker frame without injecting a byte into JSON:

- `D`, then BE32 length1..65536, then that many original worker-frame bytes.
- `C` cancels at any point. Parent stdin EOF cancels as well.

The launcher streams the original frame bytes through nonblocking pipes. On
cancellation it closes worker stdin, which is the worker protocol's EOF
cancellation signal. Buffered partial JSON is discarded. It drains worker stdout
with a40MiB cap, rejects zero/oversized/trailing frames, waits for worker exit and
only then publishes the single response to Elixir. The child has its own process
group, an empty execve environment, stderr at `/dev/null`, and Linux parent-death
kill protection. A2s cleanup grace precedes kill/waitpid of a hanging worker.
Output flushing is bounded to2s after reap. The caller's overall1..300000ms budget
starts before payload construction, serialization, full asset hashing or launch.

The full launcher digest is verified by Elixir on every call. The launcher opens
and hashes the complete worker on every launch and executes that same descriptor
with fexecve. No size/mtime identity cache exists.

Protocol1 additive alpha4 results include:

```json
{"kind":"pending","status":200,"media_type":"application/json","value":{"msg":"..."}}
```

This value projects to the exact nominal `NfsePdfPending` model, with preserved
extension fields. It has neither `bytes_hex` nor Location. HTML is an opaque file
result with `file_kind: "Html"` and unchanged bytes in `bytes_hex`. Documented
redirects carry a protected Location; revealing it never follows it.

Opt-in nominal projection metadata is `projection_hints:true` in the request and
`projection_hints:{format:"variant-preorder-u8-hex-v1",metadata_sha256:"...",indices_hex:"..."}`
in JSON/Pending results. Each nominal enum records one zero-based u8 index before
its content. Structs follow metadata declaration order, arrays use index order,
and typed maps use sorted keys. Absent Option and Nullable null do not visit
content; enum Null still records its index. Raw JSON/extensions do not contain
nominal models. Metadata bytes are authenticated exactly; missing, invalid and
trailing indices are rejected. No structural choice of variant is made.

Projection-budget failure is a redacted `projection` error with
`sdk_call_completed:true` only after a successful SDK call and `protected_result`
containing the original result without hints. Validation actions use false.
Revealing this original result is explicit and implies no fiscal authorization.

The native worker's sanitized error, Unknown outcome, protected recovery,
protected Location and nominal response projection are preserved. Ordinary
Inspect/exception paths never format these protected members. No retry occurs.
