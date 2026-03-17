#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

if [[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]]; then
  export SDKMAN_OFFLINE_MODE=true
  set +u
  # shellcheck disable=SC1091
  source "${HOME}/.sdkman/bin/sdkman-init.sh"
  if [[ -f "${ROOT_DIR}/.sdkmanrc" ]]; then
    sdk env >/dev/null
  fi
  set -u
fi

exec "$@"
