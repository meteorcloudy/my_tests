#include <stdio.h>

#ifdef COMPILER_MSVC
  #define DLLEXPORT __declspec(dllexport)
#else
  #define DLLEXPORT
#endif  // COMPILER_MSVC

// DLLEXPORT 
void HelloWorld() {
  printf("HelloWorld\n");
}
