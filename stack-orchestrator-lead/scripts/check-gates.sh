#!/usr/bin/env bash
set -euo pipefail

BACKEND_REPO="${BACKEND_REPO:-}"
ADMIN_REPO="${ADMIN_REPO:-}"
MOBILE_CHECK_CMD="${MOBILE_CHECK_CMD:-echo 'Define MOBILE_CHECK_CMD in project profile'}"

if [[ -z "$BACKEND_REPO" || -z "$ADMIN_REPO" ]]; then
  echo "ERROR: set BACKEND_REPO and ADMIN_REPO" >&2
  exit 1
fi

echo "[Gate] API tests"
echo "Run: (cd $BACKEND_REPO && npm run test && npm run test:cov)"

echo "[Gate] Admin tests"
echo "Run: (cd $ADMIN_REPO && npm run test)"

echo "[Gate] Mobile compatibility checks"
echo "Run: $MOBILE_CHECK_CMD"

echo "[Gate] Deploy readiness"
echo "Confirm migration plan + smoke checklist"
