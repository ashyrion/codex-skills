#!/usr/bin/env bash
set -euo pipefail

BACKEND_REPO="${BACKEND_REPO:-}"
BACKEND_TEST_CMD="${BACKEND_TEST_CMD:-npm run test}"
BACKEND_COVERAGE_CMD="${BACKEND_COVERAGE_CMD:-npm run test:cov}"

if [[ -z "$BACKEND_REPO" ]]; then
  echo "ERROR: set BACKEND_REPO" >&2
  exit 1
fi

cd "$BACKEND_REPO"
eval "$BACKEND_TEST_CMD"
eval "$BACKEND_COVERAGE_CMD"
