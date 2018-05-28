cc_binary(
  name = "bin",
  srcs = ["main.cc"],
)


cc_library(
    name = "a",
    hdrs = ["a.h"],
    defines = ["HELLO"],
)
cc_library(
    name = "b",
    srcs = ["b.cc"],
    deps = [":a"],
    alwayslink = 1,
)
