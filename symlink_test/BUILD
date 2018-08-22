
config_setting(
    name = "windows",
    values = {"cpu": "x64_windows"},
)

cc_binary(
  name = "bin",
  srcs = select({
      ":windows" : ["main_windows_threadpool.cc"],
      "//conditions:default": ["main_unix.cc"],
  }),
)
