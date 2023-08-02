load("@pip//:requirements.bzl", "requirement")
load("@rules_python//python:defs.bzl", "py_binary")

py_binary(
    name = "bin",
    srcs = ["bin.py"],
    deps = [requirement("pywin32")],
)
