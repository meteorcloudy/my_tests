load("@io_bazel_rules_go//go:def.bzl", "go_binary")

go_binary(
    name = "hello",
    srcs = ["hello.go"],
)

go_library(
    name = "racy",
    srcs = [
        "race_off.go",
        "race_on.go",
        "racy.go",
        "empty.s", # verify #2143
    ],
    importpath = "example.com/racy",
)

go_binary(
    name = "racy_cmd",
    srcs = ["main.go"],
    embed = [":racy"],
)
