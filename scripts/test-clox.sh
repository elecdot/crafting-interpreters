#!/usr/bin/env bash
set -euo pipefail

output="$(build/clox/clox clox/tests/smoke/hello.lox)"
expected="clox stub: clox/tests/smoke/hello.lox"

if [[ "$output" != *"$expected"* ]]; then
  echo "smoke test failed"
  echo "expected to contain: $expected"
  echo "actual output:"
  printf '%s\n' "$output"
  exit 1
fi

echo "clox smoke test passed"

