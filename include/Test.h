#pragma once

#include "Hash.h"
#include "HashTable.h"

#include <stddef.h>

namespace db::test {

  const size_t MAX_TEST_NAME_SIZE = 1 << 8;
  const size_t TABLE_SIZE = 112111;//13441;//7879;//4789;//607;//10691;//

  struct TestHash {
    char name[MAX_TEST_NAME_SIZE];
    size_t totalCount;
    size_t size;
    unsigned short *allocation;
  };

  struct TestTable {
    char name[MAX_TEST_NAME_SIZE];
    db::collection::map::HashTable table;
    char *freeTable[3];
  };

  void  CreateTest(TestHash *result);
  void DestroyTest(TestHash *result);

  void SetTestName(TestHash *result, const char *name);
  void Test(TestHash *result, db::hash::HashType type);
  void SavePlot(const TestHash *result);

  void  CreateTest(TestTable *result);
  void DestroyTest(TestTable *result);

  void SetTestName(TestTable *result, const char *name);
  void Test(TestTable *result);
  void SavePlot(const TestTable *result);

}
