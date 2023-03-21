#pragma once

#include <stddef.h>

namespace db::hash
{

  typedef unsigned Error;
  typedef size_t    Hash;

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
    MAX,
  };


  const char *ToString(HashType type, Error *error = nullptr);

  bool SetHashType(HashType type, Error *error = nullptr);
  Hash GetHash(const void *reference, size_t size);

}
