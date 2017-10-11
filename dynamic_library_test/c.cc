#include <stdio.h>
#include "a.h"
#include "b.h"

void hello_C() {
  hello_A();
  hello_B();
  printf("Hello C\n");
}

int main() {
  hello_C();
  return 0;
}
