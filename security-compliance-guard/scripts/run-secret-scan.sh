#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="${REPO_ROOT:-$(pwd)}"
cd "$REPO_ROOT"

tracked=$(git ls-files)
if [[ -z "$tracked" ]]; then
  echo "No tracked files"
  exit 0
fi

printf '%s\n' "$tracked" | xargs -I{} rg -n "(BEGIN [A-Z ]*PRIVATE KEY|AKIA[0-9A-Z]{16}|SECRET_KEY|API_KEY|PASSWORD=|TOKEN=|xox[baprs]-|ghp_[A-Za-z0-9]{20,}|-----BEGIN)" "{}" || true
