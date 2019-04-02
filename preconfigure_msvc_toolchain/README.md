# Custom cc toolchain based on the auto-generated toolchain

## How to generate it

### Build //:bin
```
bazel build //:bin
```

### Copy the auto-generated toolchain
```
cp -r bazel-preconfigure_msvc_toolchain/external/local_config_cc/ my_custom_cc_toolchain
```

### Modify the toolchain
```
vim ./my_custom_cc_toolchain/cc_toolchain_config.bzl
```

### Use the custom toolchain
```
bazel build --crosstool_top=//my_custom_cc_toolchain:toolchain --host_crosstool_top=//my_custom_cc_toolchain:toolchain //:bin
```
