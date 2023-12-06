
# With 6.x

```
$ bazel build //:bin --keep_going
Extracting Bazel installation...
Starting local Bazel server and connecting to it...
INFO: Invocation ID: aa918856-4688-4820-b7c6-6d35c6adbfb0
INFO: Options provided by the client:
  Inherited 'common' options: --isatty=1 --terminal_columns=331
INFO: Reading rc options for 'build' from /Users/pcloudy/.bazelrc:
  'build' options: --verbose_failures --announce_rc --disk_cache=/tmp/bazel_disk_cache --repository_cache=/tmp/bazel_repository_cache
WARNING: Target //:bin is incompatible and cannot be built, but was explicitly requested.
INFO: Analyzed target //:bin (32 packages loaded, 167 targets configured).
INFO: Found 0 targets...
ERROR: command succeeded, but not all targets were analyzed
INFO: Elapsed time: 3.670s, Critical Path: 0.02s
INFO: 1 process: 1 internal.
FAILED: Build did NOT complete successfully
```

# With 7.0.0rc6 and last\_green

```
$ bazel build //:bin --keep_going
INFO: Invocation ID: 44da267f-837e-485a-ad0a-af3074697d94
INFO: Options provided by the client:
  Inherited 'common' options: --isatty=1 --terminal_columns=331
INFO: Reading rc options for 'build' from /Users/pcloudy/.bazelrc:
  'build' options: --verbose_failures --announce_rc --disk_cache=/tmp/bazel_disk_cache --repository_cache=/tmp/bazel_repository_cache
INFO: Analyzed target //:bin (0 packages loaded, 0 targets configured).
WARNING: errors encountered while analyzing target '//:bin': it will not be built
INFO: Found 1 target...
Target //:bin failed to build
ERROR: command succeeded, but not all targets were analyzed
INFO: Elapsed time: 0.077s, Critical Path: 0.00s
INFO: 1 process: 1 internal.
ERROR: Build did NOT complete successfully
```

With Skymeld disabled

```
$ bazel build //:bin --keep_going --noexperimental_merged_skyframe_analysis_execution
INFO: Invocation ID: b2ee6d43-b7b4-4cc8-8420-968c0199d2b5
INFO: Options provided by the client:
  Inherited 'common' options: --isatty=1 --terminal_columns=331
INFO: Reading rc options for 'build' from /Users/pcloudy/.bazelrc:
  'build' options: --verbose_failures --announce_rc --disk_cache=/tmp/bazel_disk_cache --repository_cache=/tmp/bazel_repository_cache
WARNING: Target //:bin is incompatible and cannot be built, but was explicitly requested.
INFO: Analyzed target //:bin (5 packages loaded, 7 targets configured).
INFO: Found 0 targets...
ERROR: command succeeded, but not all targets were analyzed
INFO: Elapsed time: 0.127s, Critical Path: 0.00s
INFO: 1 process: 1 internal.
ERROR: Build did NOT complete successfully
```
