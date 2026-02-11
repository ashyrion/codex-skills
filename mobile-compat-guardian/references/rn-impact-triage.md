# RN Impact Triage

## Triage order
1. Query/response contract changes
2. Field semantic changes (same shape, different meaning)
3. Latency/error behavior impact

## Verdict
- SAFE: no app update needed.
- WARN: shape stable, semantic risk detected.
- FAIL: contract incompatible.
