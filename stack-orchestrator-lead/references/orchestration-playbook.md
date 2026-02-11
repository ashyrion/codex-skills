# Orchestration Playbook

## Objective
Run multi-repo work with role-based ownership, explicit gates, and deterministic handoff.

## Operating model
1. Intake: classify topic and blast radius.
2. Ownership: assign one leader skill and supporting skills.
3. Sequencing: define stage order with entry/exit criteria.
4. Gates: block next stage unless PASS.
5. Handoff: transfer leadership only with evidence.

## Stage pattern
- Stage A: architecture and contract impact
- Stage B: implementation
- Stage C: automated verification
- Stage D: deploy/migration/smoke
- Stage E: closeout and traceability

## Anti-patterns
- Multi-owner ambiguity in one stage.
- Proceeding with FAIL/BLOCKED gate.
- Long free-form prompts without output schema.
