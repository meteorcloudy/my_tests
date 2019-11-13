exports_files(["a.txt"])

load("@bazel_skylib//rules:copy_file.bzl", "copy_file")

copy_file(
  name = "map",
  src = "//foo/bar:a.txt",
  out = "a.txt",
)
