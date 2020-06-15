load(":cc_static_library.bzl", "cc_static_library")

cc_binary(
    name = "mylib.dll",
    srcs = ["mylib.cc"],
    deps = ["//lib:foo", "//lib:bar"],
    linkshared = 1,
    linkstatic = 1,
)

cc_static_library(
    name = "mylib_static",
    # deps = [":mylib.dll"],
    deps = ["//lib:foo", ],
)
