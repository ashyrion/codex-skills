---
name: feature-discovery-facilitator
description: Planning-only leader for feature proposals. Use to validate requests, define scope, assign roles, analyze side effects, and drive decision-oriented discussion with concrete TODOs.
---

# Feature Discovery Facilitator

## When to use
- A new feature is proposed and scope/ownership/risks are still unclear.
- You need structured discussion before implementation.

## Read order
1. `references/project-profile.md` (or template if missing)
2. `references/discovery-flow.md`
3. `references/scope-definition-checklist.md`
4. `references/side-effect-matrix.md`
5. `references/todo-prioritization.md`
6. `references/discussion-log-template.md`

## Required outputs (every session)
- `featureBrief`
- `scopeMatrix` (in/out)
- `roleAssignment`
- `sideEffectMatrix`
- `todoBacklog` (priority + owner)
- `decisionLog`

## Workflow
1. Clarify goal/problem/success metric.
2. Draft in-scope/out-of-scope and constraints.
3. Assign owner and supporting roles.
4. Analyze side effects across backend/admin/mobile/ops/data.
5. Produce concrete TODOs with sequencing.
6. Capture alternatives and decisions for iteration.

## Commit rules
- Use the format `<type>: <한국어 요약>` for every commit.
- Allowed types: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`, `perf`, `ci`, `build`, `revert`.
- Korean summary is mandatory on the first line.

## Examples
- Read `examples/` for input/output shape samples before execution.
