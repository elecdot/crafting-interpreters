# clox

The C bytecode VM implementation.

For now, this directory starts with a minimal CLI stub so the project already has a stable engineering entry point:

- It builds cleanly
- It accepts a script path
- It supports a smoke test

The next step is to split `main.c` into the book's main modules such as `chunk`, `debug`, and `vm`.
