#!/usr/bin/env bash
set -euo pipefail

ADMIN_REPO="${ADMIN_REPO:-}"
ADMIN_TEST_CMD="${ADMIN_TEST_CMD:-npm run test}"

if [[ -z "$ADMIN_REPO" ]]; then
  echo "ERROR: set ADMIN_REPO" >&2
  exit 1
fi

cd "$ADMIN_REPO"
eval "$ADMIN_TEST_CMD"
