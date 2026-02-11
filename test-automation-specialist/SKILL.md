---
name: test-automation-specialist
description: Test lead skill. Use for unit/integration/E2E automation, coverage gating, snapshot validation, and PASS/FAIL release verdicts.
---

# Test Automation Specialist

## Scope
- All repos with quality gates from `references/project-profile.md`.

## Read order
1. `references/project-profile.md` (or template if missing)
2. `references/test-matrix.md`
3. `references/report-schema.md`
4. `references/flaky-policy.md`
5. `references/multi-client-test-matrix.md`

## Workflow
1. Build test matrix from docs/tasks.
2. Execute repo-specific test suites.
3. Validate coverage and snapshot invariants.
4. Publish machine-readable summary and final verdict.

## Required outputs
- PASS/FAIL/BLOCKED status
- failed cases list
- coverage summary
- snapshot diff summary
- next action

## Commit rules
- Use the format `<type>: <한국어 요약>` for every commit.
- Allowed types: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`, `perf`, `ci`, `build`, `revert`.
- Korean summary is mandatory on the first line.

## Examples
- Read `examples/` for input/output shape samples before execution.
