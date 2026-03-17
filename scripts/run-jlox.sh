#!/usr/bin/env bash
set -euo pipefail

program="${1:-examples/hello.lox}"

if [[ ! -d build/jlox ]]; then
  echo "jlox classes not found. Run 'make jlox' first."
  exit 1
fi

exec ./scripts/with-sdkman.sh java -cp build/jlox com.craftinginterpreters.jlox.Lox "$program"
