
# Import Shared Libraries on Linux

cc_import(
  name = "libtensorflow_linux",
  shared_library = "lib/libtensorflow.so",
)

cc_import(
  name = "libtensorflow_framework_linux",
  shared_library = "lib/libtensorflow_framework.so",
)

# Import Shared Libraries on Linux on Windows


# TensorFlow C Library

cc_library(
  name = "tensorflow",
  hdrs = glob(["**/*.h"]),
  deps = [
      ":libtensorflow_linux",
      ":libtensorflow_framework_linux",
  ],
  includes = ["include"],
)


# Main Program

cc_binary(
  name = "bin",
  srcs = ["main.cc"],
  deps = [":tensorflow"],
)

