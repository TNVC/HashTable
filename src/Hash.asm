section .text
global GetHash

global GetGNUHash
  ;; GetGNUHash
  ;; @param  [rdi] reference - const pointer to object
  ;; @param  [rsi] size      - size of object
  ;; @return [rax] Hash(size_t)
GetGNUHash:

  mov eax, 0x11                 ; RAX = 0x11

  cmp rdi, 0x0                  ;|
  je .end                       ; | if (!reference) return 0x0

  jmp .check
.start:
  mov rsi, rax                  ;|
  shl rsi, 0x5                  ; |
  lea rax, [rax + rsi]          ; | RAX *= 0x21

  movzx rsi, byte [rdi]         ;|
  add rax, rsi                  ; |
  inc rdi                       ; | RAX += *reference++

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
GetHash:
GetCRCHash:

  xor rax, rax                  ; RAX = 0x0

  cmp rdi, 0x0                  ;|
  je .end                       ; | if (!reference) return 0x0

  crc32 rax, qword [rdi + 0x00]
  crc32 rax, qword [rdi + 0x08]
  crc32 rax, qword [rdi + 0x10]
  crc32 rax, qword [rdi + 0x18]

.end:
  ret                           ; return hash
