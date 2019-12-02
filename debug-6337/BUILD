cc_library(
    name = "a",
    srcs = ["dir/a.cc"],
    hdrs = ["dir/a.h"],
    strip_include_prefix = "dir",
    deps = [
        ":b",
    ],
)

cc_library(
    name = "b",
    hdrs = ["dir/b.h"],
    strip_include_prefix = "dir",
)
