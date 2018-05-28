def my_repo_impl(repository_ctx):
  repository_ctx.file("env.bat", "set FOO\n")
  print(repository_ctx.execute(["./env.bat"], environment={"Foo": "123", "foo" : "a", "FOO": "awef",}).stdout)
  repository_ctx.file("BUILD")

my_repo = repository_rule(
    implementation = my_repo_impl,
)

