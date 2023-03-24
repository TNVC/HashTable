section .text

global GetRORHash
  ;; GetRORHash
  ;; @param  [rdi] reference - const pointer to object
  ;; @param  [rsi] size      - size of object
  ;; @return [rax] Hash(size_t)
GetRORHash:

  xor rax, rax                  ; RAX = 0x0

  cmp rdi, 0x0                  ;|
  je .end                       ; | if (!reference) return 0x0

  jmp .check
.start:
  ror rax, 0x1                  ;|
  movzx rsi, byte [rdi]         ; |
  add rax, rsi                  ; |
  inc rdi                       ; | RAX = ROR(RAX) + *reference++

.check:                         ;|
  cmp byte [rdi], 0x0           ; |
  jne .start                    ; | if (*reference) goto LoopStart

.end:
  ret                           ; return hash

global GetROLHash
  ;; GetROLHash
  ;; @param  [rdi] reference - const pointer to object
  ;; @param  [rsi] size      - size of object
  ;; @return [rax] Hash(size_t)
GetROLHash:

  xor rax, rax                  ; RAX = 0x0

  cmp rdi, 0x0                  ;|
  je .end                       ; | if (!reference) return 0x0

  jmp .check
.start:
  rol rax, 0x1                  ;|
  movzx rsi, byte [rdi]         ; |
  add rax, rsi                  ; |
  inc rdi                       ; | RAX = ROL(RAX) + *reference++

.check:                         ;|
  cmp byte [rdi], 0x0           ; |
  jne .start                    ; | if (*reference) goto LoopStart

.end:
  ret                           ; return hash
global GetCRCHash
  ;; GetCRCHash
  ;; @param  [rdi] reference - const pointer to object
  ;; @param  [rsi] size      - size of object
  ;; @return [rax] Hash(size_t)
GetCRCHash:

  xor rax, rax                  ; RAX = 0x0

  cmp rdi, 0x0                  ;|
  je .end                       ; | if (!reference) return 0x0

  jmp .check
.start:
  movzx rsi, byte [rdi]         ;|
  crc32 eax, esi                ; |
  inc rdi                       ; | RAX = CRC32(RAX, *reference++)

.check:                         ;|
  cmp byte [rdi], 0x0           ; |
  jne .start                    ; | if (*reference) goto LoopStart

.end:
  ret                           ; return hash
