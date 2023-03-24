#include "HashTable.h"

#include "Hash.h"

#include <malloc.h>
#include <string.h>

#define ERROR(CODE, ...)                        \
  do                                            \
    {                                           \
      if (error) *error = CODE;                 \
      return __VA_ARGS__;                       \
    } while (0)

namespace db::collection::map {

  const size_t DEFAULT_CAPACITY = 17;

  bool CreateHashTable(HashTable *hashTable, size_t capacity, Error *error)
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR, false);

    capacity = capacity ? capacity : DEFAULT_CAPACITY;
    hashTable->table = (NodeTable *) calloc(capacity, sizeof(NodeTable));
    if (!hashTable->table) ERROR(ErrorCode::BADALLOC, false);

    hashTable->size     =        0;
    hashTable->capacity = capacity;

    return true;
  }

  bool DestroyHashTable(HashTable *hashTable, Error *error)
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR, false);

    for (size_t i = 0; i < hashTable->capacity; ++i)
      free(hashTable->table[i].table);
    free(hashTable->table);

    hashTable->size     =       0;
    hashTable->capacity =       0;
    hashTable->table    = nullptr;

    return true;
  }

  void Put(
           HashTable *hashTable,
           const Key key,
           const Value value,
           Error *error
          )
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR);

    if (!IsValidKey  (key  )) ERROR(ErrorCode::INVALIDKEY  );
    if (!IsValidValue(value)) ERROR(ErrorCode::INVALIDVALUE);

    ++hashTable->size;

    hash::Hash hash = hash::GetHash(key, strlen(key));
    hash %= hashTable->capacity;

    size_t capacity = hashTable->table[hash].capacity;
    size_t index    = hashTable->table[hash].size++;

    if (index == capacity)
      {
        size_t newCapacity = 2*capacity + 1;
        hashTable->table[hash].table = (Node *)
          realloc(hashTable->table[hash].table, newCapacity*sizeof(Node));
        if (!hashTable->table[hash].table)
          ERROR(ErrorCode::BADALLOC);
        hashTable->table[hash].capacity = newCapacity;
      }

    Node *newNode = hashTable->table[hash].table + index;
    if (!CopyKey  (&newNode->key  , key  ))
      { free(newNode); ERROR(ErrorCode::UNKNOWN); }
    if (!CopyValue(&newNode->value, value))
      { free(newNode); ERROR(ErrorCode::UNKNOWN); }
  }

  void Get(
           const HashTable *hashTable,
           const Key key,
           Value *value,
           Error *error
          )
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR);
    if (!value    ) ERROR(ErrorCode::NULLPTR);

    if (!IsValidKey(key)) ERROR(ErrorCode::INVALIDKEY);

    hash::Hash hash = hash::GetHash(key, strlen(key));
    hash %= hashTable->capacity;

    Node *temp = hashTable->table[hash].table;
    if (!temp) ERROR(ErrorCode::HASNTKEY);

    if (!hashTable->table[hash].size)
      {
        CopyValue(value, temp->value);
        return;
      }

    size_t size = hashTable->table[hash].size;
    for (size_t i = 0; i < size; ++i, ++temp)
      if (AreKeysEqual(key, temp->key)) break;
    if (!AreKeysEqual(key, temp->key)) ERROR(ErrorCode::HASNTKEY);

    CopyValue(value, temp->value);
  }

  bool ContainsKey(
                   const HashTable *hashTable,
                   const Key key,
                   Error *error
                  )
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR, false);

    if (!IsValidKey(key)) ERROR(ErrorCode::INVALIDKEY, false);

    hash::Hash hash = hash::GetHash(key, strlen(key));
    hash %= hashTable->capacity;

    return hashTable->table[hash].size;
  }

  bool ContainsValue(
                     const HashTable *hashTable,
                     const Value value,
                     Error *error
                    )
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR, false);

    if (!IsValidValue(value)) ERROR(ErrorCode::INVALIDVALUE, false);

    for (size_t i = 0; i < hashTable->capacity; ++i)
      {
        Node *temp = hashTable->table[i].table;
        if (!temp) continue;

        size_t size = hashTable->table[i].size;
        for (size_t j = 0; j < size; ++j, ++temp)
          if (AreValuesEqual(value, temp->value))
            return true;
      }

    return false;
  }

  size_t Size(const HashTable *hashTable, Error *error)
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR, 0);

    return hashTable->size;
  }

  void Remove(
              HashTable *hashTable,
              const Key key,
              Value *value,
              Error *error
             )
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR);
    if (!value    ) ERROR(ErrorCode::NULLPTR);

    if (!IsValidKey(key)) ERROR(ErrorCode::INVALIDKEY);

    hash::Hash hash = hash::GetHash(key, strlen(key));
    hash %= hashTable->capacity;

    if (!hashTable->table[hash].size)
      ERROR(ErrorCode::HASNTKEY);

    Node *temp = hashTable->table[hash].table;
    size_t size = hashTable->table[hash].size;
    for (size_t i = 0; i < size; ++i, ++temp)
      if (AreKeysEqual(key, temp->key)) break;
    if (!AreKeysEqual(key, temp->key))
      ERROR(ErrorCode::HASNTKEY);

    --hashTable->table[hash].size;
    CopyValue(value, temp->value);

    size_t capacity = hashTable->table[hash].capacity;
    memmove(temp, temp + 1, (capacity - size)*sizeof(Node));
  }

  bool IsValidKey  (const Key   key  ) { return key  ; }
  bool IsValidValue(const Value value) { return value; }

  bool CopyKey  (Key   *target, const Key   source)
  { *target = source; return true; }
  bool AreKeysEqual  (const Key   first, const Key   second)
  { return !strcmp(first, second); }

  bool CopyValue(Value *target, const Value source)
  { *target = source; return true; }
  bool AreValuesEqual(const Value first, const Value second)
  { return !strcmp(first, second); }

}
