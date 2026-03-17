# Roadmap

## Phase 1: Repository Foundation

- Establish a consistent repository layout
- Standardize build and test entry points
- Prepare shared example programs

## Phase 2: jlox

- `scanner`
- `parser`
- `ast`
- `interpreter`
- `resolver`
- Functions, closures, classes, and inheritance

Suggested layout:

- Put implementation code under `jlox/src/main/java/...`
- Put input fixtures under `jlox/src/test/resources/`
- If a test framework is introduced later, add assertion code under `src/test/`

## Phase 3: clox

- `chunk`
- `debug`
- `vm`
- `compiler`
- Closures, garbage collection, and the object model

Suggested layout:

- Put shared headers under `clox/include/`
- Put implementation code under `clox/src/`
- Put smoke and regression cases under `clox/tests/`

## Phase 4: Engineering Maturity

- Add complete smoke and regression coverage for both implementations
- Introduce static checks and formatting rules
- Record design tradeoffs and implementation deviations
- Add CI when it becomes worthwhile

