load("@bazel_tools//tools/cpp:toolchain_utils.bzl", "find_cpp_toolchain")


# Bazel rule for collecting the header files that a target depends on.
def _cc_static_library_impl(ctx):
    output_lib = ctx.actions.declare_file("{}.lib".format(ctx.attr.name))
    output_flags = ctx.actions.declare_file("{}.link".format(ctx.attr.name))

    cc_toolchain = find_cpp_toolchain(ctx)

    lib_sets = []
    unique_flags = {}
    for dep in ctx.attr.deps:
        if hasattr(dep[CcInfo].linking_context.libraries_to_link, "to_list"):
            lib_sets.append(dep[CcInfo].linking_context.libraries_to_link)
        else:
            lib_sets.append(depset(direct = dep[CcInfo].linking_context.libraries_to_link))
        unique_flags.update({
            flag: None
            for flag in dep[CcInfo].linking_context.user_link_flags
        })
    libraries_to_link = depset(transitive = lib_sets)
    link_flags = unique_flags.keys()

    libs = []
    libs.extend([lib.pic_static_library for lib in libraries_to_link.to_list() if lib.pic_static_library])
    libs.extend([
        lib.static_library
        for lib in libraries_to_link.to_list()
        if lib.static_library and not lib.pic_static_library
    ])

    script_file = ctx.actions.declare_file("{}.params".format(ctx.attr.name))

    commands = ["/nologo", "/MACHINE:X64", "/OUT:{}".format(output_lib.path)]
    for lib in libs:
        commands.append(lib.path)
    ctx.actions.write(
        output = script_file,
        content = "\n".join(commands) + "\n",
    )

    ctx.actions.run(
        executable = cc_toolchain.ar_executable,
        arguments = ["@{}".format(script_file.path)],
        inputs = [script_file] + libs + cc_toolchain.all_files.to_list(),
        outputs = [output_lib],
        mnemonic = "ArMerge",
        progress_message = "Merging static library {}".format(output_lib.path),
    )
    ctx.actions.write(
        output = output_flags,
        content = "\n".join(link_flags) + "\n",
    )
    return [
        DefaultInfo(files = depset([output_flags, output_lib])),
    ]

cc_static_library = rule(
    implementation = _cc_static_library_impl,
    attrs = {
        "deps": attr.label_list(),
        "_cc_toolchain": attr.label(
            default = @bazel_tools + "@bazel_tools//tools/cpp:current_cc_toolchain",
        ),
    },
    toolchains = [@bazel_tools + "@bazel_tools//tools/cpp:toolchain_type"],
)