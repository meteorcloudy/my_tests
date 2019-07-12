#include <stdio.h>
extern "C" int increment(int);
extern "C" int decrement(int);

int main(int, char**) {
  int x = 5;
  x = increment(x);
  printf("%d\\n", x);
  x = decrement(x);
  printf("%d\\n", x);
  return 0;
}
