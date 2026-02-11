# Secret Scan Policy

## Fail patterns
- private key blocks
- cloud access keys
- tokens/password assignments
- accidental credential dumps in docs/examples

## Rule
- Any critical secret match => FAIL
- Potential false positive => BLOCKED with reviewer decision
