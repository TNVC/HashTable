#include "Test.h"

#include <stdio.h>

void TestHashes();
void TestTable ();

int main()
{
  printf("Chose tested object(Default: 1):\n1) Hash-functions\n2) Hash-table\n");
  char answer = '\0';
  scanf(" %c", &answer);
  if (answer == '2')
    TestTable();
  else
    TestHashes();

  return 0;
}

void TestHashes()
{
  db::test::TestHash result{};
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
}

void TestTable()
{
  db::test::TestTable result{};
  db::test::CreateTest(&result);

  db::test::SetTestName(&result, "UpdateTable#O3");
  db::test::Test(&result);

  db::test::DestroyTest(&result);
}
