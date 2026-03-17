# AGENTS.md (`clox/`)

`clox` is the C bytecode VM track from `Crafting Interpreters`.

# Current Posture

- The repository currently has a minimal runnable CLI stub
- Work should advance incrementally toward chunk, debug, VM, compiler, and runtime subsystems
- Prefer small, inspectable steps that keep the C implementation understandable

# Teaching Focus

- Help the user learn bytecode VM structure, memory layout, execution flow, and low-level tradeoffs
- Emphasize module boundaries such as `chunk`, `debug`, `vm`, and later object/runtime pieces
- Make performance-oriented or low-level decisions explicit when they affect readability or safety

# Local Expectations

- Keep shared headers in `include/` and implementation code in `src/`
- Keep smoke and regression cases in `tests/`
- Use the root `Makefile` and scripts as the main build/run entry points
- Add focused tests and small validation steps with each meaningful change

# What Not To Do Here

- Do not turn the C side into a large refactor before the current concept is understood
- Do not optimize prematurely at the cost of clarity
- Do not introduce unnecessary infrastructure that distracts from VM and runtime fundamentals
