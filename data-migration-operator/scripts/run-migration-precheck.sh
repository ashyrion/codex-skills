#!/usr/bin/env bash
set -euo pipefail

BACKEND_REPO="${BACKEND_REPO:-}"
MIGRATION_CMD="${MIGRATION_CMD:-}"
POST_CHECK_CMD="${POST_CHECK_CMD:-}"

if [[ -z "$BACKEND_REPO" ]]; then
  echo "ERROR: set BACKEND_REPO" >&2
  exit 1
fi

cd "$BACKEND_REPO"
[[ -n "$MIGRATION_CMD" ]] && echo "migration cmd: $MIGRATION_CMD"
[[ -n "$POST_CHECK_CMD" ]] && echo "post-check cmd: $POST_CHECK_CMD"
echo "precheck complete"
