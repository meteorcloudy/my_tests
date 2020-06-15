load(":win_cc_static_library.bzl", "win_cc_static_library")

cc_binary(
    name = "mylib.dll",
    srcs = ["mylib.cc"],
    deps = ["//lib:foo"],
    linkshared = 1,
    linkstatic = 1,
)

# mylib_static.lib should be an archive of foo.lib and bar.lib
win_cc_static_library(
    name = "mylib_static",
    deps = ["//lib:foo"],
)
