#include <stdio.h>
#include "a.h"
#include "b.h"

void hello_B() {
  hello_A();
  printf("Hello B\n");
}
