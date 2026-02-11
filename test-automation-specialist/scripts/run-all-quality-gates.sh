#!/usr/bin/env bash
set -euo pipefail

BACKEND_REPO="${BACKEND_REPO:-}"
ADMIN_REPO="${ADMIN_REPO:-}"
BACKEND_TEST_CMD="${BACKEND_TEST_CMD:-npm run test}"
BACKEND_COVERAGE_CMD="${BACKEND_COVERAGE_CMD:-npm run test:cov}"
ADMIN_TEST_CMD="${ADMIN_TEST_CMD:-npm run test}"
CONTRACT_CHECK_CMD="${CONTRACT_CHECK_CMD:-echo 'Define CONTRACT_CHECK_CMD'}"

if [[ -z "$BACKEND_REPO" || -z "$ADMIN_REPO" ]]; then
  echo "ERROR: set BACKEND_REPO and ADMIN_REPO" >&2
  exit 1
fi

echo "[1/3] API tests"
(cd "$BACKEND_REPO" && eval "$BACKEND_TEST_CMD" && eval "$BACKEND_COVERAGE_CMD")

echo "[2/3] Admin tests"
(cd "$ADMIN_REPO" && eval "$ADMIN_TEST_CMD")

echo "[3/3] Contract checks"
eval "$CONTRACT_CHECK_CMD"

echo "All quality gates executed"
