#pragma once

#include "Hash.h"
#include "HashTable.h"

#include <stddef.h>

namespace db::test {

  const size_t MAX_TEST_NAME_SIZE = 1 << 8;
  const size_t TABLE_SIZE = 7879;

  struct TestResult {
    char name[MAX_TEST_NAME_SIZE];
    size_t totalCount;
    size_t size;
    unsigned short *allocation;
  };

  void  CreateTest(TestResult *result);
  void DestroyTest(TestResult *result);

  void SetTestName(TestResult *result, const char *name);
  void Test(TestResult *result, db::hash::HashType type);
  void SavePlot(const TestResult *result);

}
