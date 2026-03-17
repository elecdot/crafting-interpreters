# Engineering Practices

## Directory Discipline

- Keep only cross-implementation assets at the repository root
- Keep implementation details inside each language-specific subtree
- Prefer reusing `examples/` for shared example programs

## Build Entry

- Use `make` for repository-level commands
- Keep implementation-specific automation in `scripts/`
- Fail clearly when dependencies are missing instead of failing silently

## Testing Strategy

- Start with smoke tests so the main entry point always runs
- Add regression coverage for parser, runtime, and error handling over time
- When fixing a bug, add the smallest possible reproduction case

## Documentation Strategy

- `README.md` is for repository navigation
- `docs/` is for roadmaps, conventions, and design notes
- Implementation-level `README` files should describe implementation-local constraints

## Scope Control

- Follow the book's primary implementation path first
- Avoid introducing heavy frameworks too early
- Add more automation only when repeated manual work becomes a real cost

