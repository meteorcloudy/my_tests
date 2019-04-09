genrule(
  name = "run",
  outs = ["out.txt"],
  cmd = "$(location @org_brotli//:brotli) > $@",
  tools = ["@org_brotli//:brotli"],
)
