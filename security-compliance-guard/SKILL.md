---
name: security-compliance-guard
description: Security and compliance specialist. Use for secret scanning, public-repo safety checks, and release-time compliance gates.
---

# Security Compliance Guard

## When to use
- Before push/release to prevent secret or sensitive metadata leaks.
- When onboarding a repo to public Git hosting.

## Read order
1. `references/project-profile.md` (or template if missing)
2. `references/secret-scan-policy.md`
3. `references/public-repo-safety-checklist.md`
4. `references/planning-framework-links.md`

## Workflow
1. Run secret/sensitive pattern scan on tracked files.
2. Verify local-only config files are ignored.
3. Verify public-safe artifacts only are tracked.
4. Emit PASS/FAIL/BLOCKED with evidence paths.

## Required output
- `status` (PASS|FAIL|BLOCKED)
- `findings`
- `evidencePaths`
- `nextAction`

## Commit rules
- Use the format `<type>: <한국어 요약>` for every commit.
- Allowed types: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`, `perf`, `ci`, `build`, `revert`.
- Korean summary is mandatory on the first line.

## Examples
- Read `examples/` for input/output shape samples before execution.
