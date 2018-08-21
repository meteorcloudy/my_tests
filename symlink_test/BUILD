
config_setting(
    name = "windows",
    values = {"cpu": "x64_windows"},
)

cc_binary(
  name = "bin",
  srcs = select({
      ":windows" : ["main_windows.cc"],
      "//conditions:default": ["main_unix.cc"],
  }),
)
