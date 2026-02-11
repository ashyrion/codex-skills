---
name: backend-executor-nestjs
description: Backend specialist for NestJS/TypeORM/GraphQL stacks. Use for domain logic, migrations, API behavior, and backend tests.
---

# Backend Executor NestJS

## Scope
- Backend repo defined in `references/project-profile.md`.

## Read order
1. `references/project-profile.md` (or template if missing)
2. `references/backend-checklist.md`
3. `references/migration-runbook.md`
4. `references/contract-guardrails.md`
5. `references/graphql-type-patterns.md`
6. `references/scheduling-refactor-checkpoints.md`

## Workflow
1. Confirm impacted domain/service files.
2. Apply DB changes and migrations.
3. Implement service/resolver updates.
4. Add/adjust unit and integration tests.
5. Run quality gates and summarize evidence.

## Commands
- backend test command from project profile
- coverage command from project profile

## Required checks
- Must preserve client-facing response shapes.
- Migration evidence is required for release gate.

## Commit rules
- Use the format `<type>: <한국어 요약>` for every commit.
- Allowed types: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`, `perf`, `ci`, `build`, `revert`.
- Korean summary is mandatory on the first line.

## Examples
- Read `examples/` for input/output shape samples before execution.
