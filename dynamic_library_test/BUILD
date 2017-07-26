package(default_visibility = ["//visibility:public"])

cc_library(
  name = "A",
  srcs = ["a.cc"],
  hdrs = ["a.h"],
)

cc_library(
  name = "B",
  srcs = ["b.cc"],
  hdrs = ["b.h"],
  deps = [":A"],
)

cc_binary(
  name = "C",
  srcs = ["c.cc"],
  deps = [":B"],
)

cc_binary(
  name = "C_dl",
  srcs = ["c.cc"],
  deps = [":B"],
  linkstatic = 0,
)

cc_binary(
  name = "C.so",
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

