#!/usr/bin/env bash
set -euo pipefail
BASE="/Users/daegukim/.codex/skills"
VALIDATOR="$BASE/.system/skill-creator/scripts/quick_validate.py"
PY="$BASE/.venv-skill-tools/bin/python"

if [[ ! -x "$PY" ]]; then
  echo "ERROR: missing venv python at $PY" >&2
  exit 1
fi

skills=(
  stack-orchestrator-lead
  planner-doc-writer
  backend-executor-nestjs
  admin-executor-react
  mobile-compat-guardian
  test-automation-specialist
  qa-release-manager
  security-compliance-guard
  data-migration-operator
)

fail=0
for s in "${skills[@]}"; do
  echo "[validate] $s"
  if "$PY" "$VALIDATOR" "$BASE/$s"; then
    echo "[ok] $s"
  else
    echo "[fail] $s"
    fail=1
  fi
done

if [[ $fail -ne 0 ]]; then
  echo "Validation result: FAIL"
  exit 1
fi

echo "Validation result: PASS"
