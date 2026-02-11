---
name: stack-orchestrator-lead
description: Lead skill for multi-repo delivery. Use to classify topics, assign owner skills, enforce gates, and hand off leadership by impact layer.
---

# Stack Orchestrator Lead

## When to use
- Multi-repo work across backend/admin/mobile/test/release.
- You need task decomposition, owner assignment, gate decisions, or topic-based leader switching.

## Read order
1. `references/project-profile.md` (or `references/project-profile.template.md` if missing)
2. `references/stack-facts.md`
3. `references/topic-routing.md`
4. `references/orchestration-playbook.md`
5. `references/gate-policy.md`
6. `references/external-benchmarks.md`
7. `references/commit-convention.md`

## Inputs
- `topic`, `goal`, `scope`, `constraints`, `targetRepos`.

## Required output contract
- `planSummary`
- `taskList`
- `ownerSkill`
- `acceptanceCriteria`
- `risks`

## Workflow
1. Classify topic and assign leader/support skills.
2. Emit stage order with gates and owner mapping.
3. Enforce PASS-only progression.
4. Hand off leadership only via strict template.

## Topic Intake Template (Strict)
- `topicId`
- `topic`
- `goal`
- `scope`
- `constraints`
- `targetRepos`
- `primaryImpactLayer` (backend|admin|mobile|test|release|docs)
- `ownerSkill`
- `supportSkills`
- `plannedOrder`
- `acceptanceCriteria`
- `blockedBy`
- `riskLevel` (low|medium|high)

## Leader Handoff Template (Strict)
- `handoffFrom`
- `handoffTo`
- `reason`
- `triggerCondition`
- `openItems`
- `dueChecks`
- `requiredEvidence`
- `targetDecisionDate`

## Gate Result Template (Strict)
- `topicId`
- `stage`
- `status` (PASS|FAIL|BLOCKED)
- `failedChecks`
- `evidencePaths`
- `nextAction`
- `ownerSkill`
- `updatedAt`

## Non-negotiable rules
- Preserve client-facing contract shape defined by the project profile.
- Prefer existing docs as source of truth; do not duplicate long policy text.
- On failures, block next stage until gate is green.

## Commit rules
- Use the format `<type>: <한국어 요약>` for every commit.
- Allowed types: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`, `perf`, `ci`, `build`, `revert`.
- Korean summary is mandatory on the first line.

## Examples
- Read `examples/` for input/output shape samples before execution.
