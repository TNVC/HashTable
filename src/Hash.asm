format ELF64

public GetRORHash

  ;; GetRORHash
  ;; @param  [rdi] reference - const pointer to object
  ;; @param  [rsi] size      - size of object
  ;; @return [rax] Hash(size_t)
GetRORHash:

  xor rax, rax                  ; RAX = 0x0

  cmp rdi, 0x0                  ;\
  jne @f                        ; |
  ret                           ; |
@@:                             ; | if (!reference) return 0x0
  push rdi
  push rsi

  jmp .check
.start:
  ror rax, 0x1                  ;\
  movzx rsi, byte [rdi]         ; |
  add rax, rsi                  ; |
  inc rdi                       ; | RAX = ROR(RAX) + *reference++

.check:                         ;\
  cmp byte [rdi], 0x0           ; |
  jne .start                    ; | if (*reference) goto LoopStart

  pop rsi
  pop rdi

  ret                           ; return hash

  ;; public _ZN2db4hashL10GetROLHashEPKvm

  ;; GetROLHash
  ;; @param  [rdi] reference - const pointer to object
  ;; @param  [rsi] size      - size of object
  ;; @return [rax] Hash(size_t)
GetROLHash:

  xor rax, rax                  ; RAX = 0x0

  cmp rdi, 0x0                  ;\
  jne @f                        ; |
  ret                           ; |
@@:                             ; | if (!reference) return 0x0

  jmp .check
.start:
  rol rax, 0x1                  ;\
  movzx rsi, byte [rdi]         ; |
  add rax, rsi                  ; |
  inc rdi                       ; | RAX = ROL(RAX) + *reference++

.check:                         ;\
  cmp byte [rdi], 0x0           ; |
  jne .start                    ; | if (*reference) goto LoopStart

  ret                           ; return hash

  ;; public _ZN2db4hashL10GetCRCHashEPKvm

  ;; GetCRCHash
  ;; @param  [rdi] reference - const pointer to object
  ;; @param  [rsi] size      - size of object
  ;; @return [rax] Hash(size_t)
GetCRCHash:
  ret
