#ifndef A_H
#define A_H

#if NO_DLLEXPORT
  #define DLLEXPORT
#elif COMPILING_A_DLL
  #define DLLEXPORT __declspec(dllexport)
#else
  #define DLLEXPORT __declspec(dllimport)
#endif

DLLEXPORT void hello_A();

#endif
