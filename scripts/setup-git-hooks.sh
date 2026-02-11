#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"
git config core.hooksPath .githooks
echo "Configured git hooks path: $(git config --get core.hooksPath)"
