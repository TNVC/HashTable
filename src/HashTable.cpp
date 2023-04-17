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
  const size_t      SIZE_FACTOR = 30;
  const size_t      VECTOR_SIZE = 32;

  ///*
  static bool CreateHeap(
                         Heap *heap,
                         size_t size,
                         Error *error
                        );
  static void *Malloc(
                      Heap *heap,
                      size_t size,
                      Error *error
                     );
  static void Free(
                   Heap *heap,
                   void *address,
                   size_t size,
                   Error *error
                  );

  static bool CreateHeap(
                         Heap *heap,
                         size_t size,
                         Error *error
                        )
  {
    if (!heap || !size) ERROR(ErrorCode::NULLPTR, false);

    size_t heapSize = size*SIZE_FACTOR;
    byte *temp = (byte *) calloc(heapSize, sizeof(Node));
    if (!temp) ERROR(ErrorCode::BADALLOC, false);
    *((HeapNode *) temp) = { nullptr, heapSize };

    heap->nodeSize = heapSize;
    heap->freeList = (HeapNode *) temp;
    heap->buffer   = temp;

    return true;
  }

  static void *Malloc(
                      Heap *heap,
                      size_t size,
                      Error *error
                     )
  {
    if (!heap) ERROR(ErrorCode::NULLPTR, nullptr);

    if (!size) return nullptr;

    if (!heap->freeList)
      ERROR(ErrorCode::NULLPTR, nullptr);

    if (heap->freeList->nodeSize < size)
      ERROR(ErrorCode::NULLPTR, nullptr);

    byte *pointer = (byte *) heap->freeList;

    if (heap->freeList->nodeSize == size)
      {
        heap->freeList = heap->freeList->next;
        return pointer;
      }

    size_t newSize =
      heap->freeList->nodeSize - size;
    HeapNode *temp =
      heap->freeList->next;

    heap->freeList = (HeapNode *)
      (pointer + size*sizeof(Node));

    heap->freeList->nodeSize =
      newSize;
    heap->freeList->next = temp;

    return pointer;
  }

  static void Free(
                   Heap *heap,
                   void *address,
                   size_t size,
                   Error *error
                  )
  {
    if (!heap)
      ERROR(ErrorCode::NULLPTR);

    if (!address || !size) return;

    HeapNode *freeNode = (HeapNode *) address;
    freeNode->nodeSize = size;
    freeNode->next = heap->freeList;

    heap->freeList = freeNode;
  }
  //*/
  bool CreateHashTable(HashTable *hashTable, size_t capacity, Error *error)
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR, false);

    capacity = capacity ? capacity : DEFAULT_CAPACITY;
    hashTable->table = (Node **) calloc(capacity, sizeof(Node *));
    if (!hashTable->table) ERROR(ErrorCode::BADALLOC, false);

    if (!CreateHeap(&hashTable->heap, capacity, error))
      return false;

    hashTable->size     =        0;
    hashTable->capacity = capacity;

    return true;
  }

  bool DestroyHashTable(HashTable *hashTable, Error *error)
  {
    if (!hashTable) ERROR(ErrorCode::NULLPTR, false);

    /*
    Node *temp = nullptr;
    for (size_t i = 0; i < hashTable->capacity; ++i)
      while (hashTable->table[i])
        {
          temp = hashTable->table[i];
          hashTable->table[i] = temp->next;
          free(temp);
        }
    */

    free(hashTable->table);
    free(hashTable->heap.buffer);

    *hashTable = {};

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

    Node *newNode = (Node *)
      //calloc(1, sizeof(Node));
      Malloc(&hashTable->heap, 1, error);
    if (!newNode) ERROR(ErrorCode::BADALLOC);
    if (!CopyKey  (&newNode->key  , key  ))
      { free(newNode); ERROR(ErrorCode::UNKNOWN); }
    if (!CopyValue(&newNode->value, value))
      { free(newNode); ERROR(ErrorCode::UNKNOWN); }

    ++hashTable->size;

    hash::Hash hash = GetHash(key);
    hash %= hashTable->capacity;

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

    hash::Hash hash = GetHash(key);
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
    if (!hashTable || !key) ERROR(ErrorCode::NULLPTR, false);

    return hashTable->table[GetHash(key) % hashTable->capacity];
  }

  bool ContainsValue(
                     const HashTable *hashTable,
                     const Value value,
                     Error *error
                    )
  {
    if (!hashTable || !value) ERROR(ErrorCode::NULLPTR, false);

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

    hash::Hash hash = GetHash(key);
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

    --hashTable->table;

    previous->next = temp->next;
    CopyValue(value, temp->value);

    //free(temp);
    Free(&hashTable->heap, temp, 1, error);
  }

}
