#pragma once

#include <stddef.h>

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

  typedef char *String;
  typedef String Key  ;
  typedef String Value;

  struct Node {
    Key     key;
    Value value;
  };

  struct NodeTable {
    size_t size;
    size_t capacity;
    Node *table;
  };

  struct HashTable {
    size_t size;
    size_t capacity;
    NodeTable *table;
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

  bool IsValidKey  (const Key   key  );
  bool IsValidValue(const Value value);

  bool CopyKey(Key *target, const Key source);
  bool AreKeysEqual(const Key first, const Key second);

  bool CopyValue(Value *target, const Value source);
  bool AreValuesEqual(const Value first, const Value second);

}
