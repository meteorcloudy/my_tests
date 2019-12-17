package(default_visibility = ["//visibility:public"])

load("@bazel_tools//tools/python:toolchain.bzl", "py_runtime_pair")

cc_binary(
  name = "bin",
  srcs = ["main.cc"],
)

py_binary(
  name = "foo",
  srcs = ["foo.py"],
  python_version = "PY2",
  data = ["//:bin"],
)

genrule(
  name = "gen",
  tools = ["//:bin",],
  outs = ["output"],
  cmd = "$(location //:bin) > $@",
)

platform(
    name = "x64_windows-clang-cl",
    constraint_values = [
        "@platforms//cpu:x86_64",
        "@platforms//os:windows",
        "@bazel_tools//tools/cpp:clang-cl",
    ],
)

py_runtime(
    name = "py2_runtime",
    interpreter_path = "C:/Python36/python.exe",
    python_version = "PY2",
)

py_runtime(
    name = "py3_runtime",
    interpreter_path = "C:/Python36/python.exe",
    python_version = "PY3",
)

py_runtime_pair(
    name = "py_runtime_pair",
    py2_runtime = ":py2_runtime",
    py3_runtime = ":py3_runtime",
)

toolchain(
    name = "py_toolchain",
    toolchain = ":py_runtime_pair",
    toolchain_type = "@bazel_tools//tools/python:toolchain_type",
)
