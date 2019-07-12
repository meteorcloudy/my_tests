.code
PUBLIC increment
increment PROC x:WORD
  xchg rcx,rax
  inc rax
  ret
increment EndP
END