# Gate Policy

## Gate states
- PASS: all required checks completed and evidence attached.
- FAIL: at least one required check failed.
- BLOCKED: required check not executable or prerequisite missing.

## Required evidence fields
- checkName
- result
- evidencePath
- checkedAt
- ownerSkill

## Transition rules
- FAIL or BLOCKED => no downstream stage execution.
- PASS => next stage unlocked.

## Escalation
- Two consecutive FAIL on same stage => force leader review and updated plan.
