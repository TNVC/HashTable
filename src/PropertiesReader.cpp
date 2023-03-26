#if 0

#include "PropertiesReader.h"

#include <string.h>
#include <malloc.h>
#include <stddef.h>
#include <stdio.h>
#include <assert.h>
#include <sys/stat.h>

namespace db::loader {

  static size_t GetFileSize(const char *fileName);

  char *LoadProperties(
                       db::collection::map::HashTable *map,
                       const char *path
                      )
  {
    assert(map);
    assert(path);

    FILE *file = fopen(path, "r");
    if (!file) return nullptr;

    size_t size = GetFileSize(path);

    char *buffer = (char *) calloc(size + 1, sizeof(char));
    if (!buffer) { fclose(file); return nullptr; }

    fread(buffer, size, sizeof(char), file);
    fclose(file);

    char *key   =  buffer;
    char *value = nullptr;
    do
      {
        value = strchr(key, '=');
        if (!value) {
          free(buffer); return nullptr;
        }

        *value++ = '\0';

        char *temp = strchr(value, '\n');
        if (temp) *temp++ = '\0';

        db::collection::map::Put(map, key, value);

        key = temp;
      } while (key && *key);

    return buffer;
  }

  static size_t GetFileSize(const char *fileName)
  {
    if (!fileName) return 0;

    struct stat temp = {};
    stat(fileName, &temp);
    return (size_t)temp.st_size;
  }

}

#endif
