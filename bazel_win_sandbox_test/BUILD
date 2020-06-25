

genrule(
  name = "gen",
  outs = ["output"],
  cmd = "$(location :print) > $@",
  tools = [":print"],
#  srcs = ["data"],
)

sh_binary(
  name = "print",
  srcs = ["print.sh"],
)

