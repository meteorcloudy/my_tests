cc_binary(
  name = "foo.so",
  srcs = ["foo.cc"],
  linkshared = 1,
)

# Imitate tf_binary_pybind_deps, which is essentially a cc_import library
# https://cs.opensource.google/tensorflow/tensorflow/+/master:tensorflow/tensorflow.bzl;l=588
cc_import(
  name = "foo",
  shared_library = ":foo.so",
)

# Imitate the cc_library created before cc_shared_library
# https://cs.opensource.google/tensorflow/tensorflow/+/master:tensorflow/tensorflow.bzl;l=2928
cc_library(
  name = "bar",
  srcs = ["bar.cc"],
  hdrs = ["bar.h"],
  deps = [":foo"],
)

# Build a_so with cc_shared_library
# https://cs.opensource.google/tensorflow/tensorflow/+/master:tensorflow/tensorflow.bzl;l=2951
cc_shared_library(
  name = "a_so_1",
  roots = [
    ":bar",
  ],
)

# Build a_so with cc_binary
# https://cs.opensource.google/tensorflow/tensorflow/+/master:tensorflow/tensorflow.bzl;l=2992
cc_binary(
  name = "a_so_2",
  deps = [
    ":bar",
    ":foo",
  ],
  linkshared = 1,
)

# The final py_binary used to create the pip package
py_binary(
  name = "bin",
  srcs = ["bin.py"],
  data = [
    # Switch between cc_binary and cc_shared_library
    "a_so_1", # With cc_shared_library, foo.so will be in runfiles
    # "a_so_2", # With cc_binary, foo.so will NOT be in runfiles
  ],
)
