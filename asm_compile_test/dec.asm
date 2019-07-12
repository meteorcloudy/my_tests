.code
PUBLIC decrement
decrement PROC x:WORD
  xchg rcx,rax
  dec rax
  ret
decrement EndP
END