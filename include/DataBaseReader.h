#pragma once

#include "HashTable.h"

namespace db::loader {

  char *LoadDataBase(
                     db::collection::map::HashTable *map,
                     const char *path
                    );

}
