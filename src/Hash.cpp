#if 0

#pragma GCC diagnostic ignored "-Wswitch-enum"
#pragma GCC diagnostic ignored "-Wunused-parameter"

#include "Hash.h"

#include <stdint.h>
#include <x86intrin.h>

#define ERROR(CODE, ...)                        \
  do                                            \
    {                                           \
      if (error) *error = CODE;                 \
      return __VA_ARGS__;                       \
    } while (0)

namespace db::hash
{
  const Hash START_HASH = 17;

  static Hash GetConstHash        (const void *reference, size_t size);
  static Hash GetLengthHash       (const void *reference, size_t size);
  static Hash GetSummaryHash      (const void *reference, size_t size);
  static Hash GetSummaryLengthHash(const void *reference, size_t size);
  extern "C"
  //static
         Hash GetROLHash          (const void *reference, size_t size);
  extern "C"
  //static
         Hash GetRORHash          (const void *reference, size_t size);
  extern "C"
  //static
         Hash GetCRCHash          (const void *reference, size_t size);
  extern "C"
  //static
         Hash GetGNUHash          (const void *reference, size_t size);

  static HashType Type = HashType::Const;

  const char *ToString(HashType type, Error *error)
  {
    if (type <= HashType::MIN || type >= HashType::MAX)
      ERROR(ErrorCode::INVALIDTYPE, nullptr);

    switch (type)
      {
      case Const        : return         "Const";
      case Length       : return        "Length";
      case Summary      : return       "Summary";
      case SummaryLength: return "SummaryLength";
      case ROL          : return           "ROL";
      case ROR          : return           "ROR";
      case CRC          : return           "CRC";
      case GNU          : return           "GNU";
      default           : return       "Unknown";
      }
  }

  bool SetHashType(HashType type, Error *error)
  {
    if (type <= HashType::MIN || type >= HashType::MAX)
      ERROR(ErrorCode::INVALIDTYPE, false);

    Type = type;

    return true;
  }

  Hash GetHash(const void *reference, size_t size)
  {

    #define CASE(TYPE)                                  \
      case HashType::TYPE:                              \
        return Get ## TYPE ## Hash(reference, size)
    switch (Type)
      {
        CASE(Const);
        CASE(Length);
        CASE(Summary);
        CASE(SummaryLength);
        CASE(ROL);
        CASE(ROR);
        CASE(CRC);
        CASE(GNU);
      default:
        return GetConstHash(reference, size);
      }
    #undef CASE

  }

  static Hash GetConstHash(const void *reference, size_t size)
  {
    return 0;
  }

  static Hash GetLengthHash(const void *reference, size_t size)
  {
    return size;
  }

  static Hash GetSummaryHash(const void *reference, size_t size)
  {
    if (!reference) return 0;

    Hash hash = 0;

    for (size_t i = 0; i < size; ++i)
      hash += (Hash) ((const char *)reference)[i];

    return hash;
  }

  static Hash GetSummaryLengthHash(const void *reference, size_t size)
  {
    if (!reference) return 0;

    Hash hash = 0;

    for (size_t i = 0; i < size; ++i)
      hash += (Hash) ((const char *)reference)[i];

    return hash / size;
  }

#if 0
  static Hash GetROLHash(const void *reference, size_t size)
  {
    if (!reference) return 0;

    const char *charReference = (const char *) reference;

    Hash hash = 0;
    size_t hashBitSize = 8*sizeof(Hash) - 1;
    Hash shiftedBit = 1 << hashBitSize;

    while (*charReference)
      hash = (hash << 1) + ((hash & shiftedBit) >> hashBitSize) + (Hash) *charReference++;

    return hash;
  }

  static Hash GetRORHash(const void *reference, size_t size)
  {
    if (!reference) return 0;

    const char *charReference = (const char *) reference;

    Hash hash = 0;
    size_t hashBitSize = 8*sizeof(Hash) - 1;
    Hash shiftedBit = 1;

    while (*charReference)
      hash = (hash >> 1) + ((hash & shiftedBit) << hashBitSize) + (Hash) *charReference++;

    return hash;
  }

  static Hash GetCRCHash(const void *reference, size_t size)
  {
    if (!reference) return 0;

    const Hash polynomial = 0x04C11DB7;
    const Hash polOldBit  = 1 << 26;

    Hash hash = 0;

    const char *charReference = (const char *) reference;
    while (*charReference)
      {
        for (int i = 7; i >= 0; i--)
          {
            hash = (hash << 1) + ((*charReference >> i) & 1);
            if (hash & polOldBit)
              hash ^= polynomial;
          }
        ++charReference;
      }

    return hash;
  }

  static Hash GetGNUHash(const void *reference, size_t size)
  {
    if (!reference) return 0;

    const uint8_t *uint8Ref = (const uint8_t *) reference;
    Hash hash = START_HASH;
    for (size_t i = 0; i < size; ++i)
      hash = (hash << 5) + hash + uint8Ref[i];

    return hash;
  }
#endif

}

#endif
