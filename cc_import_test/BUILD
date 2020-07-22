cc_import(
  name = "a_import",
  shared_library = "A.dll",
)

cc_binary(
  name = "bin",
  srcs = ["bin.cc"],
  deps = ["//:a_import"],
)

