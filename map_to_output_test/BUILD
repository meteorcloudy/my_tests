load("//:map_to_output.bzl", "map_to_output")

map_to_output(
  name = "map",
  src = "//foo/bar:a.txt",
)

py_binary(
  name = "bin",
  srcs = ["bin.py"],
  data = [
    "//foo/bar:a.txt",
    ":map",
  ],
)
