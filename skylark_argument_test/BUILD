load("@build_bazel_rules_nodejs//:defs.bzl", "nodejs_binary")

nodejs_binary(
    name = "bin",
    entry_point = "__main__/repro.js",
    data = ["repro.js"],
)

load(":index.bzl", "my_rule")
my_rule(name = "my_rule", out="params.txt")
filegroup(name = "node_modules")
