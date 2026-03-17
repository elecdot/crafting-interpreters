# Crafting Interpreters Project

An engineering-oriented `Crafting Interpreters` practice repository.

## References

- [Crafting Interpreters Web Page](https://craftinginterpreters.com)
- [Crafting Interpreters GitHub Repo](https://github.com/munificent/craftinginterpreters)

## Repository Layout

```text
.
├── Makefile
├── docs/                  # Roadmaps, conventions, and design notes
├── examples/              # Shared Lox example programs
├── scripts/               # Environment checks, run scripts, and test scripts
├── jlox/                  # Java tree-walk interpreter
│   └── src/
└── clox/                  # C bytecode VM
    ├── include/
    ├── src/
    └── tests/
```

## Quick Start

If your current environment only has a C toolchain, start with `clox`:

```bash
make env
make run-clox
make test-clox
```

To start `jlox`, install a JDK with `javac` first:

```bash
make jlox
make run-jlox
make test-jlox
```

This repository also carries a project-local SDKMAN configuration in `.sdkmanrc`, so Java-related commands can resolve the expected JDK version consistently.

## Working Agreement

- Put shared Lox example programs in `examples/`
- Let `jlox/` and `clox/` own their own source, tests, and implementation-specific docs
- Use `make` as the repository-level entry point
- Add tests together with each implementation step
- Keep Java commands aligned with the project-local SDKMAN environment

## Next Steps

- [ ] 

See [docs/roadmap.md](/home/elecdot/dev/labs/crafting-interpreters/docs/roadmap.md) and [docs/engineering-practices.md](/home/elecdot/dev/labs/crafting-interpreters/docs/engineering-practices.md) for the detailed conventions.
