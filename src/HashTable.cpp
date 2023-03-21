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

  bool CreateHashTable(HashTable *hashTable, size_t capacity, Error *error)
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR, false);

    if (capacity)
      {
        hashTable->table = (Node **) calloc(capacity, sizeof(Node *));
        if (!hashTable->table) ERROR(ErrorCode::BADALLOC, false);
      }

    hashTable->size     =        0;
    hashTable->capacity = capacity;

    return true;
  }

  bool DestroyHashTable(HashTable *hashTable, Error *error)
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR, false);

    Node *temp = nullptr;
    for (size_t i = 0; i < hashTable->capacity; ++i)
      while (hashTable->table[i])
        {
          temp = hashTable->table[i];
          hashTable->table[i] = temp->next;
          free(temp);
        }

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

    Node *newNode = (Node *) calloc(1, sizeof(Node));
    if (!newNode) ERROR(ErrorCode::BADALLOC);

    if (!CopyKey  (&newNode->key  , key  ))
      { free(newNode); ERROR(ErrorCode::UNKNOWN); }
    if (!CopyValue(&newNode->value, value))
      { free(newNode); ERROR(ErrorCode::UNKNOWN); }
    newNode->next = nullptr;

    hash::Hash hash = hash::GetHash(key, strlen(key));
    hash %= hashTable->capacity;

    ++hashTable->size;

    Node *temp = hashTable->table[hash];
    if (!temp)
      {
        hashTable->table[hash] = newNode;
        return;
      }

    for ( ; temp->next; temp = temp->next) continue;
    temp->next = newNode;
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

    Node *temp = hashTable->table[hash];
    if (!temp) ERROR(ErrorCode::HASNTKEY);

    if (!temp->next)
      {
        CopyValue(value, temp->value);
        return;
      }

    for ( ; temp->next; temp = temp->next)
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

    return hashTable->table[hash];
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
        Node *temp = hashTable->table[i];
        if (!temp) continue;

        for ( ; temp->next; temp = temp->next)
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

    Node *temp = hashTable->table[hash];
    if (!temp) ERROR(ErrorCode::HASNTKEY);

    if (!temp->next)
      {
        hashTable->table[hash] = nullptr;
        CopyValue(value, temp->value);
        free(temp);
        return;
      }

    Node *previous = nullptr;
    for ( ; temp->next; previous = temp, temp = temp->next)
      if (AreKeysEqual(key, temp->key)) break;
    if (!AreKeysEqual(key, temp->key)) ERROR(ErrorCode::HASNTKEY);

    previous->next = temp->next;
    CopyValue(value, temp->value);
    free(temp);
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
