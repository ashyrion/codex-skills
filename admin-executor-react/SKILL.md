---
name: admin-executor-react
description: Admin frontend specialist for React/TypeScript stacks. Use for page layout, interaction rules, permissions UI, and frontend tests.
---

# Admin Executor React

## Scope
- Admin repo defined in `references/project-profile.md`.

## Read order
1. `references/project-profile.md` (or template if missing)
2. `references/layout-rules.md`
3. `references/ui-verification-checklist.md`
4. `references/permission-ui-pattern.md`

## Workflow
1. Implement layout and interaction from task docs.
2. Apply form constraints and guardrails in UI.
3. Connect remote hooks and permission gates.
4. Add/update component and page tests.

## Critical rules
- Respect fixed/sticky columns and horizontal scroll behavior.
- Enforce disabled actions for business constraints.

## Commit rules
- Use the format `<type>: <한국어 요약>` for every commit.
- Allowed types: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`, `perf`, `ci`, `build`, `revert`.
- Korean summary is mandatory on the first line.

## Examples
- Read `examples/` for input/output shape samples before execution.
