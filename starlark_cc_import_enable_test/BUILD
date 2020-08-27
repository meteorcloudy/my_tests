load("@bazel_tools//tools/build_defs/cc:cc_import.bzl", "cc_import")

cc_import(
    name = "mylib",
    static_library = "mylib.a"
)

genrule(
    name = "gen",
    outs = ["foo"],
    cmd = "touch $@",
    tools = [":mylib"],
)