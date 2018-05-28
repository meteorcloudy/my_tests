package(default_visibility = ["//visibility:public"])
load("//:rules.bzl", "cc_shared_library")

cc_binary(
  name = "libA.so",
  srcs = ["a.cc"],
  linkshared = 1,
)

filegroup(
  name = "libA_ifso",
  srcs = [":libA.so"],
  output_group = "interface_library",
)

cc_library(
  name = "libA",
  srcs = ["a.cc"],
)

filegroup(
  name = "libA_archive",
  srcs = [":libA"],
  output_group = "archive",
)

cc_import(
  name = "A",
  static_library = "//lib:libA_archive",
#  shared_library = "//lib:libA.so",
  interface_library = "//lib:libA_ifso",
#  hdrs = ["a.h"],
  alwayslink = 1,
  system_provided = 1,
)

cc_import(
  name = "lib",
  static_library = "lib.so",
)


cc_shared_library(
  name = "shared_A",
  srcs = ["a.cc"],
  hdrs = ["a.h"],
  includes = ["."],
  features = ["windows_export_all_symbols"],
)


