#include "Test.h"

#include <stdio.h>

int main()
{
  db::test::TestResult result{};
  db::test::CreateTest(&result);

  char testName[db::test::MAX_TEST_NAME_SIZE]{};
  for (int type = db::hash::Const; type <= db::hash::CRC; ++type)
    {
      sprintf(
              testName,
              "DefaultTable#O3#%sHash#%zu",
              db::hash::ToString((db::hash::HashType) type),
              db::test::TABLE_SIZE
             );
      db::test::SetTestName(&result, testName);

      db::test::Test(&result, (db::hash::HashType) type);
      db::test::SavePlot(&result);
    }

  db::test::DestroyTest(&result);
  return 0;
}
