section .text

%if 0

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

%endif

global GetHash
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
