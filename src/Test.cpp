#include "Test.h"

#include "PropertiesReader.h"
#include "DataBaseReader.h"
#include "Hash.h"

#include <stdlib.h>
#include <malloc.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <sys/time.h>

namespace db::test {

  const size_t FILE_SIZE = 60;
  const size_t SEARCH_COUNT = 300000;

  void CreateTest(TestHash *result)
  {
    assert(result);
    *result = {};
    result->size = TABLE_SIZE;
    result->allocation = (unsigned short *) calloc(TABLE_SIZE, sizeof(unsigned short));
    assert(result->allocation);
  }

  void DestroyTest(TestHash *result)
  {
    assert(result);
    free(result->allocation);
    *result = {};
  }

  void SetTestName(TestHash *result, const char *name)
  {
    if (!result || !name) return;

    strncpy(result->name, name, MAX_TEST_NAME_SIZE);
  }

  void Test(TestHash *result, db::hash::HashType type)
  {
    db::hash::SetHashType(type);

    db::collection::map::HashTable table{};
    db::collection::map::CreateHashTable(&table, TABLE_SIZE);

    printf("Loading data for %sHash test...\n", ToString(type));
    char *buffer =
      db::loader::LoadDataBase(&table, "./source/dict.db");

    printf("Analysis data for %sHash test...\n", ToString(type));
    double E  = .0;
    double E2 = .0;
    for (size_t i = 0; i < TABLE_SIZE; ++i)
      {
        size_t count = 0;
        db::collection::map::Node *temp = table.table[i];
        for ( ; temp; temp = temp->next) ++count;

        E  += (double) count;
        E2 += (double) count*(double) count;

        result->allocation[i] = (unsigned short) count;
      }

    E  /= TABLE_SIZE;
    E2 /= TABLE_SIZE;

    printf("D = %lg\n", E2 - E*E);
    result->totalCount = table.size;

    free(buffer);
    db::collection::map::DestroyHashTable(&table);
  }

  void SavePlot(const TestHash *result)
  {
    assert(result);

    size_t bufferSize = strlen(result->name);
    bufferSize += FILE_SIZE;

    char *buffer = (char *) calloc(bufferSize, sizeof(char));
    assert(buffer);

    sprintf(buffer, "plots/%s.csv", result->name);
    FILE *file = fopen(buffer, "w");
    assert(file);

    for (size_t i = 0; i < result->size; ++i)
      fprintf(file, "%zu,", result->allocation[i]);
    fprintf(file, "\n");
    fclose(file);

    double average = (double) result->totalCount/TABLE_SIZE;
    sprintf(
            buffer,
            "python3 plotter.py \"%s\" %lf",
            result->name,
            average
           );
    system(buffer);
    free(buffer);
  }

  void CreateTest(TestTable *result)
  {
    assert(result);

    db::hash::SetHashType(db::hash::GNU);

    *result = {};
    db::collection::map::CreateHashTable(&result->table, TABLE_SIZE);

    printf("Loading data for search test...\n");
    result->freeTable =
      db::loader::LoadDataBase(&result->table, "./source/dict.db");
  }

  void DestroyTest(TestTable *result)
  {
    assert(result);

    free(result->freeTable);

    db::collection::map::DestroyHashTable(&result->table);

    *result = {};
  }

  void SetTestName(TestTable *result, const char *name)
  {
    assert(result);
    assert(name);

    strncpy(result->name, name, MAX_TEST_NAME_SIZE);
  }

  void Test(TestTable *result)
  {
    assert(result);

    static const char searchTable[][30] =
      {
        {'z', 'l', 'o', 't', 'y'},
        {'y', 'e', 'l', 'l', 'o', 'w'},
        {'w', 'r', 'i', 't', 'e'},
        {'w', 'o', 'r', 'k', 'f', 'o', 'r', 'c', 'e'},
        {'w', 'o', 'r', 'd', 'y'},
        {'v', 'o', 'c', 'a', 't', 'i', 'o', 'n', 'a', 'l', ' ', 't', 'e', 'a', 'c', 'h', 'e', 'r', 's'},
        {'u', 'n', 'r', 'e', 'h', 'e', 'a', 'r', 's', 'e', 'd'},
        {'t', 'r', 'i', 'g', 'g', 'e', 'r', 'i', 'n', 'g'},
        {'t', 'e', 'n', 'n', 'e', 's', 's', 'e', 'a', 'n'},
        {'s', 'y', 's', 't', 'o', 'l', 'i', 'z', 'a', 't', 'i', 'o', 'n'}
      };

    printf("Start search test.\n");
    timeval stop{}, start{};
    gettimeofday(&start, nullptr);
    for (size_t i = 0; i < SEARCH_COUNT; ++i)
      {
        bool wasFound =
          db::collection::map::ContainsKey(&result->table, (__m256i *) searchTable[i % 10]);
        if (!wasFound)
          printf("Test failed: \"%s\"\n", searchTable[i]);
      }
    gettimeofday(&stop , nullptr);
    printf("End search test. Time: %ld\n",
           (stop.tv_sec  - start.tv_sec )*1000000 +
           (stop.tv_usec - start.tv_usec)*1);
  }

}
