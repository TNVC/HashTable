#include <stdio.h>
#include <string.h>
#include <sys/stat.h>
#include <assert.h>
#include <malloc.h>
#include <stddef.h>

const size_t VECTOR_SIZE = 32;
const size_t MAGIC_SIZE  =  2;

static bool LoadDataBase(FILE *dst, const char *path);

int main(const int argc, const char * const argv[])
{
  if (argc <= 2)
    {
      printf("%s [Data Base file] [Properties file]...\n", argv[0]);

      return 0;
    }

  FILE *base = fopen(argv[1], "wb");
  fwrite("DB", MAGIC_SIZE, sizeof(char), base);

  for (int i = 2; i < argc; ++i)
    LoadDataBase(base, argv[i]);

  fclose(base);

  return 0;
}

static bool LoadDataBase(FILE *target, const char *path)
{
  assert(target);
  assert(path);

  FILE *file = fopen(path, "r");
  if (!file) return false;

  char buffer[VECTOR_SIZE]{};
  size_t index = 0;

  int ch{};
  while (ch != EOF)
    {
      index = 0;
      ch = fgetc(file);
      while (ch != '=' && ch != EOF)
        {
          if (index < VECTOR_SIZE)
            buffer[index++] = ch;
          ch = fgetc(file);
        }

      if (ch == EOF) break;

      while (index < VECTOR_SIZE)
        buffer[index++] = '\0';

      fwrite(buffer, VECTOR_SIZE, sizeof(char), target);

      index = 0;
      int ch = fgetc(file);
      while (ch != '\n' && ch != EOF)
        {
          if (index < VECTOR_SIZE)
            buffer[index++] = ch;
          ch = fgetc(file);
        }

      while (index < VECTOR_SIZE)
        buffer[index++] = '\0';

      fwrite(buffer, VECTOR_SIZE, sizeof(char), target);
    }

  fclose(file);

  return true;
}
