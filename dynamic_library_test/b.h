#ifndef B_H
#define B_H

#if NO_DLLEXPORT
  #define DLLEXPORT
#elif COMPILING_B_DLL
  #define DLLEXPORT __declspec(dllexport)
#else
  #define DLLEXPORT __declspec(dllimport)
#endif

DLLEXPORT void hello_B();

#endif
