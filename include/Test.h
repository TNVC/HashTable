#pragma once

#include "Hash.h"
#include "HashTable.h"

#include <stddef.h>

namespace db::test {

  const size_t MAX_TEST_NAME_SIZE = 1 << 8;
  const size_t TABLE_SIZE = 112111;//13441;//7879;//4789;//607;//10691;//
  const size_t FREE_TABLE_SIZE = 3;
#if 0
  struct TestHash {
    char name[MAX_TEST_NAME_SIZE];
    size_t totalCount;
    size_t size;
    unsigned short *allocation;
  };
#endif

  struct TestTable {
    db::collection::map::HashTable table;
    char *freeTable[FREE_TABLE_SIZE];
  };

#if 0
  void  CreateTest(TestHash *result);
  void DestroyTest(TestHash *result);

  void SetTestName(TestHash *result, const char *name);
  void Test(TestHash *result, db::hash::HashType type);
  void SavePlot(const TestHash *result);
#endif

  void  CreateTest(TestTable *result);
  void DestroyTest(TestTable *result);

  void Test(TestTable *result);

}
