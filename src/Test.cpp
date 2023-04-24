#include "Test.h"

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
  const size_t SEARCH_COUNT = 1000000;

#if 0
  void CreateTest(TestHash *result)
  {
    assert(result);
    *result = {};
    result->size = TABLE_SIZE;
    result->allocation = (unsigned short *)
      calloc(TABLE_SIZE, sizeof(unsigned short));
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
#endif

  void CreateTest(TestTable *result)
  {
    assert(result);

    //db::hash::SetHashType(db::hash::CRC);

    *result = {};
    db::collection::map::CreateHashTable(&result->table, TABLE_SIZE);

    printf("Loading data for search test...\n");
    /*
      result->freeTable[0] =
      db::loader::LoadDataBase(&result->table, "./source/first.properties");
      result->freeTable[1] =
      db::loader::LoadDataBase(&result->table, "./source/second.properties");
      result->freeTable[2] =
      db::loader::LoadDataBase(&result->table, "./source/third.properties");
    */
    result->freeTable[0] =
      db::loader::LoadDataBase(&result->table, "./source/dict.db");
  }

  void DestroyTest(TestTable *result)
  {
    assert(result);

    for (size_t i = 0; i < FREE_TABLE_SIZE; ++i)
      free(result->freeTable[i]);

    db::collection::map::DestroyHashTable(&result->table);

    *result = {};
  }

  void Test(TestTable *result)
  {
    assert(result);

    static char searchTable[][32] =
      {
        {'m', 'e', 's', 'h', ',', ' ', 'c', 'e', 'l', 'l'},
        {'b', 'a', 'r', 'l', 'e', 'y', 'c', 'o', 'r', 'n'},
        {'l', 'i', 'z', 'a', 'r', 'd'},
        {'j', 'a', 's', 'p', 'e', 'r'},
        {'m', 'u', 'r', 'r', 'a', 'i', 'n'},
        {'c', 'a', 's', 'e', ' ', 'l', 'o', 'a', 'd', 'e', 'r'},
        {'b', 'a', 'r', 'l', 'e', 'y'},
        {'b', 'o', 'x'},
        {'f', 'i', 'n', 'e', '-', 'g', 'r', 'o', 'u', 'n', 'd',
         ' ', 'b', 'a', 'r', 'l', 'e', 'y'},
        {'s', 'o', 'a', 'p', 'b', 'o', 'x'}
      };
    __m256i
    //char
      *buffer = nullptr;


    printf("Start search test.\n");
    timeval stop{}, start{};
    gettimeofday(&start, nullptr);
    for (size_t i = 0; i < SEARCH_COUNT; ++i)
      db::collection::map::Get(
                               &result->table,
                               (__m256i *)
                               searchTable[i % 10],
                               &buffer
                              );
    gettimeofday(&stop , nullptr);
    printf("End search test. Time: %ld\n",
           (stop.tv_sec  - start.tv_sec )*1000000 +
           (stop.tv_usec - start.tv_usec)*1);
  }

}
