"""An example binary to test the imports attribute of native Python rules."""

def Fib(n):
  print(__file__)
  return Fib_internal(n)
  
def Fib_internal(n):
  if n == 0 or n == 1:
    return 1
  else:
    return Fib_internal(n-1) + Fib_internal(n-2)
