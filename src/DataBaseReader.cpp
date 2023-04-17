#include "DataBaseReader.h"

#include <string.h>
#include <assert.h>
#include <stdio.h>
#include <sys/stat.h>

#pragma GCC diagnostic ignored "-Wunused-result"

namespace db::loader {

  const size_t VECTOR_SIZE = 32;

  static size_t GetFileSize(const char *fileName);

  char *LoadDataBase(
                     db::collection::map::HashTable *map,
                     const char *path
                    )
  {
    /*
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
        if (!value) { free(buffer); return nullptr; }

        *value++ = '\0';

        char *temp = strchr(value, '\n');
        if (temp) *temp++ = '\0';

        db::collection::map::Put(map, key, value);

        key = temp;
      } while (key && *key);

    return buffer;
    */
    ///*
    namespace table = db::collection::map;

    assert(map);
    assert(path);

    FILE *file = fopen(path, "rb");
    if (!file) return nullptr;

    size_t size = GetFileSize(path);

    char *buffer = (char *)
      calloc(size + 1, sizeof(char));
    if (!buffer) return nullptr;

    fread(buffer, size, sizeof(char), file);
    fclose(file);

    if (buffer[0] != 'D' && buffer[1] != 'B')
      {
        free(buffer);
        return nullptr;
      }

    size_t index = 2;
    do
      {
        table::Key   key   = (table::Key  ) (buffer + index);
        index += VECTOR_SIZE;
        table::Value value = (table::Value) (buffer + index);
        index += VECTOR_SIZE;
        table::Put(map, key, value);
      } while (index < size);

    return buffer;
    //*/
  }

  static size_t GetFileSize(const char *fileName)
  {
    if (!fileName) return 0;

    struct stat temp = {};
    stat(fileName, &temp);
    return (size_t)temp.st_size;
  }

}
