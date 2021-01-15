package(default_visibility = ["//visibility:public"])

load("@C-dev//:def.bzl", "my_cc_test")

cc_library(
    name = "lib",
    srcs = ["lib.cc"],
)

my_cc_test(
    name = "lib_test",
    srcs = ["lib_test.cc"],
    deps = [
        ":lib",
        "@C-dev//:test",
    ],
)

cc_library(
    name = "lib2",
    srcs = ["lib.cc"],
    deps = ["@C-dev//:no-existing"],
)