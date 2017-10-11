
package(
  default_visibility = ["//visibility:public"],
  features=["windows_export_all_symbols",]
)

cc_library(
  name = "A",
  srcs = ["a.cc"],
  hdrs = ["a.h"],
  copts = ["/DCOMPILING_A_DLL"],
  features = ["no_windows_export_all_symbols"],
)

cc_binary(
  name = "A.so",
  srcs = ["a.cc", "a.h"],
  copts = ["/DCOMPILING_A_DLL"],
  linkshared = 1,
  features = ["no_windows_export_all_symbols"],
)

filegroup(
  name = "A_interface",
  srcs = ["//:A.so"],
  output_group = 'interface_library',
)

cc_binary(
  name = "B.so",
  linkopts = ["$(location //:A_interface)"],
  data = ["//:A_interface"],
  srcs = ["b.cc", "b.h"],
  linkshared = 1,
)

cc_library(
  name = "B",
  srcs = ["b.cc"],
  hdrs = ["b.h"],
  deps = [":A"],
  copts = ["/DNO_DLLEXPORT", "static_link_msvcrt_debug"],
)

cc_binary(
  name = "C_dl",
  srcs = ["c.cc"],
  deps = [":B", ":A" ],
  linkstatic = 0,
)

cc_library(
  name = "C_lib",
  srcs = ["c.cc"],
  deps = [":B"],
)

cc_library(
  name = "AB",
  srcs = ["a.cc", "b.cc"],
  hdrs = ["a.h", "b.h"],
  copts = ["/DCOMPILING_A_DLL", "/DCOMPILING_B_DLL"],
)

cc_binary(
  name = "C",
  srcs = ["c.cc"],
  deps = [":AB"],
)


cc_binary(
  name = "C.dll",
  srcs = ["c.cc"],
  deps = [":B"],
  linkshared = 1,
)

cc_binary(
  name = "C_dl.so",
  srcs = ["c.cc"],
  deps = [":B"],
  linkstatic = 0,
  linkshared = 1,
)

sh_binary(
  name = "bin.bat",
  srcs = ["test.bat"],
  data = [":C_dl"],
)

genrule(
  name = "test",
  outs = ["out"],
  cmd = "$(location :bin.bat)  > $@",
  tools = [
    ":bin.bat",
  ],
)
