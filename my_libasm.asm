  global    _main
  extern    _my_strlen

  section   .text
_main:      push      rbx           ; Call stack must be aligned
  lea       rdi, [rel message]      ; First argument is address of message
  call      _my_strlen              ; puts(message)
  pop       rbx                     ; Fix up stack before returning
  ret

  section   .data
message:  db        "Hello, world", 0       ; Strings need a zero byte at the end