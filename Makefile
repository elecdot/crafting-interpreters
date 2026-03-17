SHELL := /bin/bash

.PHONY: help env clox run-clox test-clox jlox run-jlox test-jlox clean

help:
	@printf "%s\n" \
	  "Targets:" \
	  "  make env         - inspect local toolchain" \
	  "  make clox        - build the C VM stub" \
	  "  make run-clox    - run the C VM stub with examples/hello.lox" \
	  "  make test-clox   - smoke test the C VM stub" \
	  "  make jlox        - compile the Java interpreter skeleton (requires javac)" \
	  "  make run-jlox    - run the Java interpreter skeleton" \
	  "  make test-jlox   - smoke test the Java interpreter skeleton" \
	  "  make clean       - remove build artifacts"

env:
	@./scripts/check-env.sh

clox:
	@mkdir -p build/clox
	@gcc -Wall -Wextra -Werror -std=c11 -Iclox/include clox/src/main.c -o build/clox/clox

run-clox: clox
	@./scripts/run-clox.sh examples/hello.lox

test-clox: clox
	@./scripts/test-clox.sh

jlox:
	@mkdir -p build/jlox
	@./scripts/with-sdkman.sh javac -d build/jlox $$(find jlox/src/main/java -name '*.java' | sort)

run-jlox: jlox
	@./scripts/run-jlox.sh examples/hello.lox

test-jlox: jlox
	@./scripts/test-jlox.sh

clean:
	@rm -rf build
