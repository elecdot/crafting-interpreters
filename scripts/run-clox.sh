#!/usr/bin/env bash
set -euo pipefail

program="${1:-examples/hello.lox}"

if [[ ! -x build/clox/clox ]]; then
  echo "clox binary not found. Run 'make clox' first."
  exit 1
fi

exec build/clox/clox "$program"

