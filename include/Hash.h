#pragma once

#include <stddef.h>

namespace db::hash
{

  typedef size_t Hash;
  extern "C" Hash GetHash(const char *reference);

#if 0
  typedef unsigned Error;

  enum  ErrorCode {
    OK           = 0 << 0,
    INVALIDTYPE  = 1 << 0,
  };

  enum HashType {
    MIN,
    Const,
    Length,
    Summary,
    SummaryLength,
    ROL,
    ROR,
    CRC,
    GNU,
    MAX,
  };

  const char *ToString(HashType type, Error *error = nullptr);

  bool SetHashType(HashType type, Error *error = nullptr);
#endif

}
