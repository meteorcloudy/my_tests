"""Minimal example for tree artifacts in starlark"""

def _tree_impl(ctx):
    tree_artifact = ctx.actions.declare_directory(ctx.attr.name)
    ctx.action(
        inputs = [],
        outputs = [tree_artifact],
        command = "mkdir -p $1 && " + " && ".join([("echo %s > $1/%s.txt" % (i,i)) for i in range(0, 100)]),
        arguments = [tree_artifact.path],
    )
    return DefaultInfo(files = depset(direct = [tree_artifact]))

tree = rule(implementation = _tree_impl)