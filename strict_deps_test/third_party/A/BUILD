package(default_visibility = ["//visibility:public"])

cc_library(
    name = "hello-lib",
    srcs = ["hello-lib.cc"],
)

cc_binary(
    name = "hello-world",
    srcs = ["hello-world.cc"],
    deps = ["@B//:hello-lib"],
)

