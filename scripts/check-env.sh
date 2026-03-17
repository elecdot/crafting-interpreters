#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

if [[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]]; then
  # Load SDKMAN and apply the project-local Java version when .sdkmanrc is present.
  # Suppress SDKMAN's offline warning noise in the standard environment report.
  export SDKMAN_OFFLINE_MODE=true
  set +u
  # shellcheck disable=SC1091
  source "${HOME}/.sdkman/bin/sdkman-init.sh"
  if [[ -f "${ROOT_DIR}/.sdkmanrc" ]]; then
    sdk env >/dev/null
  fi
  set -u
fi

print_tool() {
  local tool="$1"
  if command -v "$tool" >/dev/null 2>&1; then
    printf "%-8s %s\n" "$tool" "OK ($(command -v "$tool"))"
  else
    printf "%-8s %s\n" "$tool" "MISSING"
  fi
}

echo "Toolchain status:"
print_tool gcc
print_tool make
print_tool java
print_tool javac

if [[ -f "${ROOT_DIR}/.sdkmanrc" ]]; then
  echo "sdkmanrc OK (${ROOT_DIR}/.sdkmanrc)"
fi
