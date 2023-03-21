#include "Test.h"

#include "PropertiesReader.h"
#include "Hash.h"

#include <stdlib.h>
#include <malloc.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>

namespace db::test {

  const size_t FILE_SIZE = 60;

  void CreateTest(TestResult *result)
  {
    assert(result);
    *result = {};
    result->size = TABLE_SIZE;
    result->allocation = (unsigned short *) calloc(TABLE_SIZE, sizeof(unsigned short));
    assert(result->allocation);
  }

  void DestroyTest(TestResult *result)
  {
    assert(result);
    free(result->allocation);
    *result = {};
  }

  void SetTestName(TestResult *result, const char *name)
  {
    if (!result || !name) return;

    strncpy(result->name, name, MAX_TEST_NAME_SIZE);
  }

  void Test(TestResult *result, db::hash::HashType type)
  {
    db::hash::SetHashType(type);

    db::collection::map::HashTable table{};
    db::collection::map::CreateHashTable(&table, TABLE_SIZE);

    printf("Loading data for %sHash test...\n", ToString(type));
    char * firstBuffer =
      db::loader::LoadProperties(&table, "./source/first.properties");
    char *secondBuffer =
      db::loader::LoadProperties(&table, "./source/second.properties");
    //char * thirdBuffer =
    //db::loader::LoadProperties(&table, "./source/third.properties");

    printf("Analysis data for %sHash test...\n", ToString(type));
    double E  = .0;
    double E2 = .0;
    for (size_t i = 0; i < TABLE_SIZE; ++i)
      {
        unsigned short count = 0;
        db::collection::map::Node *temp = table.table[i];
        for ( ; temp; temp = temp->next) ++count;

        E  += count;
        E2 += count*count;

        result->allocation[i] = count;
      }

    E  /= TABLE_SIZE;
    E2 /= TABLE_SIZE;

    printf("D = %lg\n", E2 - E*E);
    result->totalCount = table.size;

    free( firstBuffer);
    free(secondBuffer);
    //free( thirdBuffer);
    db::collection::map::DestroyHashTable(&table);
  }

  void SavePlot(const TestResult *result)
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

}
