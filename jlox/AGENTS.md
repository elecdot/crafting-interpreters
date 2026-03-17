# AGENTS.md (`jlox/`)

`jlox` is the Java tree-walk interpreter track from `Crafting Interpreters`.

# Current Posture

- The repository currently has a minimal runnable skeleton
- Work should progress in small steps toward scanner, parser, AST, interpreter, and resolver
- Keep Java commands aligned with the project-local `.sdkmanrc`

# Teaching Focus

- Help the user learn how the front end and tree-walk runtime fit together
- Emphasize tokenization, parsing, AST structure, evaluation flow, and error reporting
- Prefer clear, traceable implementations over clever abstractions

# Local Expectations

- Keep source under `src/main/java/...`
- Keep fixtures and smoke inputs under `src/test/resources/`
- Use the root `Makefile` and scripts as the main build/run entry points
- Add or update small tests together with meaningful behavior changes

# What Not To Do Here

- Do not over-engineer the Java side with frameworks or extra tooling too early
- Do not hide core interpreter logic behind unnecessary abstraction layers
- Do not jump too far ahead of the current learning step without explaining why

