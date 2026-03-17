package com.craftinginterpreters.jlox;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

public final class Lox {
    private Lox() {
    }

    public static void main(String[] args) throws IOException {
        if (args.length > 1) {
            System.err.println("Usage: jlox [script]");
            System.exit(64);
        }

        if (args.length == 1) {
            runFile(Path.of(args[0]));
            return;
        }

        runPrompt();
    }

    private static void runFile(Path path) throws IOException {
        String source = Files.readString(path, StandardCharsets.UTF_8);
        run(source, path.toString());
    }

    private static void runPrompt() throws IOException {
        System.out.println("jlox skeleton REPL. Type a line and press enter. Ctrl-D to exit.");
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in, StandardCharsets.UTF_8));
        while (true) {
            System.out.print("> ");
            String line = reader.readLine();
            if (line == null) {
                break;
            }
            run(line, "<stdin>");
        }
    }

    private static void run(String source, String origin) {
        System.out.printf("jlox skeleton: %s (%d chars)%n", origin, source.length());
    }
}
