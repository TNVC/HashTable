#pragma once

#include "HashTable.h"

namespace db::loader {

  char *LoadProperties(
                       db::collection::map::HashTable *map,
                       const char *path
                      );

}
