def _my_rule(ctx):
  args = ctx.actions.args()
  args.add("")
  args.add("hello")
  ctx.actions.run(
      inputs=[],
      executable = ctx.executable._bin,
      outputs = [ctx.outputs.out],
      arguments = [args],
      )

my_rule = rule(_my_rule,
    attrs = {
        "out": attr.output(mandatory=False),
        "_bin": attr.label(default=Label("//:bin"),
            executable=True, cfg="host"),
    },
)
