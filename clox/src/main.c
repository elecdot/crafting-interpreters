#include <stdio.h>
#include <stdlib.h>

#include "common.h"

static int run_file(const char *path) {
  FILE *file = fopen(path, "rb");
  if (file == NULL) {
    fprintf(stderr, "failed to open %s\n", path);
    return 74;
  }

  if (fseek(file, 0L, SEEK_END) != 0) {
    fclose(file);
    fprintf(stderr, "failed to seek %s\n", path);
    return 74;
  }

  long size = ftell(file);
  if (size < 0) {
    fclose(file);
    fprintf(stderr, "failed to read size for %s\n", path);
    return 74;
  }

  rewind(file);
  printf("clox stub: %s (%ld bytes)\n", path, size);
  fclose(file);
  return 0;
}

static void repl(void) {
  puts("clox stub REPL. Pass a file path to start with a script.");
}

int main(int argc, const char *argv[]) {
  if (argc == 1) {
    repl();
    return 0;
  }

  if (argc != 2) {
    fprintf(stderr, "Usage: clox [path]\n");
    return 64;
  }

  return run_file(argv[1]);
}

