#!/usr/bin/env bash
set -euo pipefail

output="$(./scripts/with-sdkman.sh java -cp build/jlox com.craftinginterpreters.jlox.Lox jlox/src/test/resources/smoke/hello.lox)"
expected="jlox skeleton: jlox/src/test/resources/smoke/hello.lox"

if [[ "$output" != *"$expected"* ]]; then
  echo "smoke test failed"
  echo "expected to contain: $expected"
  echo "actual output:"
  printf '%s\n' "$output"
  exit 1
fi

echo "jlox smoke test passed"

