---
name: planner-doc-writer
description: Plan and documentation specialist. Use when creating or updating master plans, task docs, sequencing, and cross-links for large projects.
---

# Planner Doc Writer

## When to use
- Create/update plan docs, task-by-task specs, acceptance criteria.

## Read order
1. `references/project-profile.md` (or template if missing)
2. `references/doc-sources.md`
3. `references/task-template.md`
4. `references/doc-governance.md`
5. `references/traceability-matrix.md`

## Workflow
1. Use current docs as source of truth first.
2. Keep one master overview plus linked task docs.
3. Apply the task template fields exactly.
4. Maintain sequencing/dependencies and traceability map.

## Outputs
- Updated docs with explicit links, DoD, and testable acceptance criteria.

## Commit rules
- Use the format `<type>: <한국어 요약>` for every commit.
- Allowed types: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`, `perf`, `ci`, `build`, `revert`.
- Korean summary is mandatory on the first line.

## Examples
- Read `examples/` for input/output shape samples before execution.
