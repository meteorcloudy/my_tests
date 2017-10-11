package(
  default_visibility = ["//visibility:public"],
#  features=["windows_export_all_symbols"]
)

# cc_library(
#   name = "A",
#   srcs = ["my_a.cc"],
#   deps = ["//:A"],
#   copts = ["/DCOMPILING_A_DLL"],
#   features = ["no_windows_export_all_symbols"],
# )

# cc_binary(
#   name = "C_dl",
#   srcs = ["c.cc"],
#   linkstatic = 0,
#   deps = ["//:B", "//lib:A"],
# )

cc_binary(
  name = "C",
  srcs = ["c.cc"],
  copts = ["/DNO_DLLEXPORT"],
  deps = ["//:B"],
)

cc_binary(
  name = "C_dl2",
  srcs = ["c.cc"],
  linkstatic = 0,
  deps = ["//:B"],
)

cc_binary(
  name = "C_dl.so",
  srcs = ["c.cc"],
  copts = ["/DNO_DLLEXPORT"],
  linkshared = 1,
  deps = ["//:B"],
)

