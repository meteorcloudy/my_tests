cc_binary(
  name = "foo.so",
  srcs = ["foo.cc"],
  linkshared = 1,
)

cc_import(
  name = "foo",
  shared_library = ":foo.so",
)

cc_library(
  name = "bar",
  srcs = ["bar.cc"],
  hdrs = ["bar.h"],
  deps = [":foo"],
)

# Build a_so with cc_shared_library
cc_shared_library(
  name = "a_so_1",
  roots = [
    ":bar",
  ],
)

# Build a_so with cc_binary
cc_binary(
  name = "a_so_2",
  deps = [
    ":bar",
    ":foo",
  ],
  linkshared = 1,
)

py_binary(
  name = "bin",
  srcs = ["bin.py"],
  data = [
    "a_so_1", # foo.so will be in runfiles
    # "a_so_2", # foo.so will NOT be in runfiles
  ],
)
