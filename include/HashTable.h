#pragma once

#include <stddef.h>
#include <x86intrin.h>

namespace db::collection::map {

  typedef unsigned Error;

  enum ErrorCode {
    OK           = 0 << 0,
    NULLPTR      = 1 << 0,
    BADALLOC     = 1 << 1,
    INVALIDKEY   = 1 << 2,
    INVALIDVALUE = 1 << 3,
    UNKNOWN      = 1 << 4,
    HASNTKEY     = 1 << 5,
  };

  typedef __m256i *AvxStr;
  typedef AvxStr  Key  ;
  typedef AvxStr  Value;

  typedef char byte;

  struct HeapNode {
    HeapNode *next;
    size_t nodeSize;
  };

  struct Heap {
    size_t nodeSize;
    HeapNode *freeList;
    byte *buffer;
  };

  struct Node {
    Key     key;
    Value value;
    Node *next;
  };

  struct HashTable {
    size_t size;
    size_t capacity;
    Node **table;
    Heap heap;
  };

  bool  CreateHashTable(
                        HashTable *hashTable,
                        size_t capacity,
                        Error *error = nullptr
                       );
  bool DestroyHashTable(
                        HashTable *hashTable,
                        Error *error = nullptr
                       );

  void Put(
                 HashTable *hashTable,
           const Key key,
           const Value value,
           Error *error = nullptr
          );
  void Get(
           const HashTable *hashTable,
           const Key key,
                 Value *value,
           Error *error = nullptr
          );

  bool ContainsKey  (
                     const HashTable *hashTable,
                     const Key key,
                     Error *error = nullptr
                    );
  bool ContainsValue(
                     const HashTable *hashTable,
                     const Value value,
                     Error *error = nullptr
                    );

  size_t Size(const HashTable *hashTable, Error *error = nullptr);

  void Remove(
              HashTable *hashTable,
              const Key key,
              Value *value,
              Error *error = nullptr
             );

  inline bool IsValidKey  (const Key   key  ) { return key  ; }
  inline bool IsValidValue(const Value value) { return value; }

  inline bool CopyKey  (Key   *target, const Key   source)
  { *target = source; return true; }
  inline bool AreKeysEqual  (const Key   first, const Key   second)
  { return _mm256_testc_si256(*first, *second); }

  inline bool CopyValue(Value *target, const Value source)
  { *target = source; return true; }
  inline bool AreValuesEqual(const Value first, const Value second)
  { return _mm256_testc_si256(*first, *second); }

}
