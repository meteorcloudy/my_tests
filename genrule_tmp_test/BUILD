genrule(
    name = "gen",
    outs = ["hello"],
    cmd = "touch $@",
    tools = [":mytool"],
)

genrule(
    name = "mytool",
    outs = ["tool"],
    cmd = "touch $@",
)

sh_binary(
    name = "print",
    srcs = ["print.sh"],
)

genrule(
    name = "print_env",
    outs = ["env"],
    tools = [":print"],
    cmd = "$(location :print) > $@",
)
