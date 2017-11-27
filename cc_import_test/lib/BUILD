package(default_visibility = ["//visibility:public"])

cc_binary(
  name = "A.so",
  srcs = ["a.cc"],
  linkshared = 1,
)

cc_import(
  name = "A",
  static_library = "//lib:A_lib",
  shared_library = "//lib:A.so",
  interface_library = "//lib:A_ifso",
  alwayslink = 1,
  hdrs = ["a.h"],
)

filegroup(
  name = "A_ifso",
  srcs = [":A.so"],
  output_group = "interface_library",
)

cc_library(
  name = "A_lib",
  srcs = ["a.cc"],
  hdrs = ["a.h"],
)

