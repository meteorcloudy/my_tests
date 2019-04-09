```
pcloudy@pcloudy0-w MSYS ~/workspace/my_tests/host_compiler_test
$ bazel build :run
INFO: Reading 'startup' options from c:\users\pcloudy\.bazelrc: --output_user_root=C:/src/tmp
INFO: Options provided by the client:
  Inherited 'common' options: --isatty=1 --terminal_columns=320
INFO: Options provided by the client:
  'build' options: --python_path=C:/Python36/python.exe
INFO: Reading rc options for 'build' from c:\users\pcloudy\.bazelrc:
  'build' options: --curses=yes --color=yes --verbose_failures --announce_rc
INFO: Analysed target //:run (11 packages loaded, 167 targets configured).
INFO: Found 1 target...
ERROR: C:/src/tmp/rvssir5o/external/org_brotli/BUILD:115:1: C++ compilation of rule '@org_brotli//:brotlidec' failed (Exit 2): cl.exe failed: error executing command
  cd C:/src/tmp/rvssir5o/execroot/__main__
  SET INCLUDE=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\INCLUDE;C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt;C:\Program Files (x86)\Windows Kits\NETFXSDK\4.6.1\include\um;C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\shared;C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\um;C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\winrt;
    SET PATH=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\BIN\amd64;C:\WINDOWS\Microsoft.NET\Framework64\v4.0.30319;C:\WINDOWS\Microsoft.NET\Framework64\;C:\Program Files (x86)\Windows Kits\10\bin\x64;C:\Program Files (x86)\Windows Kits\10\bin\x86;C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools\x64\;;C:\WINDOWS\system32
    SET PWD=/proc/self/cwd
    SET TEMP=C:\Users\pcloudy\AppData\Local\Temp
    SET TMP=C:\Users\pcloudy\AppData\Local\Temp
  C:/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin/amd64/cl.exe /nologo /DCOMPILER_MSVC /DNOMINMAX /D_WIN32_WINNT=0x0601 /D_CRT_SECURE_NO_DEPRECATE /D_CRT_SECURE_NO_WARNINGS /bigobj /Zm500 /EHsc /wd4351 /wd4291 /wd4250 /wd4996 /Iexternal/org_brotli /Ibazel-out/host/genfiles/external/org_brotli /Ibazel-out/host/bin/external/org_brotli /Iexternal/org_brotli/c/include /Ibazel-out/host/genfiles/external/org_brotli/c/include /Ibazel-out/host/bin/external/org_brotli/c/include /showIncludes /MD /O2 /Oy- /DNDEBUG /wd4117 -D__DATE__="redacted" -D__TIMESTAMP__="redacted" -D__TIME__="redacted" /Gy /Gw --pedantic-errors -Wall -Wconversion -Werror -Wextra -Wlong-long -Wmissing-declarations -Wmissing-prototypes -Wno-strict-aliasing -Wshadow -Wsign-compare /Fobazel-out/host/bin/external/org_brotli/_objs/brotlidec/state.obj /c external/org_brotli/c/dec/state.c
Execution platform: @bazel_tools//platforms:host_platform
cl : Command line error D8021 : invalid numeric argument '/Wconversion'
Target //:run failed to build
INFO: Elapsed time: 0.645s, Critical Path: 0.15s
INFO: 0 processes.
FAILED: Build did NOT complete successfully
```
