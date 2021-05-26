resolved = [
     {
          "original_rule_class": "local_repository",
          "original_attributes": {
               "name": "bazel_tools",
               "path": "/var/tmp/_bazel_pcloudy/install/7c18085dc4b312b7cad89ecca0ec2c62/embedded_tools"
          },
          "native": "local_repository(name = \"bazel_tools\", path = __embedded_dir__ + \"/\" + \"embedded_tools\")"
     },
     {
          "original_rule_class": "local_config_platform",
          "original_attributes": {
               "name": "local_config_platform"
          },
          "native": "local_config_platform(name = 'local_config_platform')"
     },
     {
          "original_rule_class": "local_repository",
          "original_attributes": {
               "name": "platforms",
               "path": "/var/tmp/_bazel_pcloudy/install/7c18085dc4b312b7cad89ecca0ec2c62/platforms"
          },
          "native": "local_repository(name = \"platforms\", path = __embedded_dir__ + \"/\" + \"platforms\")"
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk11_linux_s390x_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:90:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk11_linux_s390x_toolchain_config_repo",
               "generator_name": "remotejdk11_linux_s390x_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:s390x\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_linux_s390x//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk11_linux_s390x_toolchain_config_repo",
                         "generator_name": "remotejdk11_linux_s390x_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:s390x\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_linux_s390x//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "334368111d5e0f71171386e8e651bda561bb07e1320c54585feafa33a6e385e8"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk16_macos_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:241:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk16_macos_toolchain_config_repo",
               "generator_name": "remotejdk16_macos_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_16\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"16\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk16_macos//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk16_macos_toolchain_config_repo",
                         "generator_name": "remotejdk16_macos_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_16\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"16\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk16_macos//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "fd5883c3cdaa60899dc19a67dd6e8ddebc26a7cb6e3c01c24851befc112612d7"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk16_win_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:275:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk16_win_toolchain_config_repo",
               "generator_name": "remotejdk16_win_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_16\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"16\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:windows\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk16_win//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk16_win_toolchain_config_repo",
                         "generator_name": "remotejdk16_win_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_16\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"16\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:windows\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk16_win//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "e2f4df4297bf751e1d50b43d694eb80c5c8c747e568b8e85fbddff9e66318d3d"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk15_macos_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:173:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk15_macos_toolchain_config_repo",
               "generator_name": "remotejdk15_macos_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_15\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"15\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk15_macos//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk15_macos_toolchain_config_repo",
                         "generator_name": "remotejdk15_macos_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_15\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"15\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk15_macos//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "ce1cacf313b5baf89321849fb84043f9785e19d31a18e2f8b9df2d7d131b896a"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk15_linux_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:156:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk15_linux_toolchain_config_repo",
               "generator_name": "remotejdk15_linux_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_15\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"15\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk15_linux//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk15_linux_toolchain_config_repo",
                         "generator_name": "remotejdk15_linux_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_15\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"15\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk15_linux//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "2fbf86d271536009e53b1a24b5bef358e54af244f4eb057ea325ae88049f959c"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk15_macos_aarch64_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:190:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk15_macos_aarch64_toolchain_config_repo",
               "generator_name": "remotejdk15_macos_aarch64_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_15\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"15\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:aarch64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk15_macos_aarch64//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk15_macos_aarch64_toolchain_config_repo",
                         "generator_name": "remotejdk15_macos_aarch64_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_15\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"15\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:aarch64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk15_macos_aarch64//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "976cbdbe2280306e163b7f005e0271dd5eb537e3757f6f8aa1800fe0d78c5b44"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk16_macos_aarch64_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:258:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk16_macos_aarch64_toolchain_config_repo",
               "generator_name": "remotejdk16_macos_aarch64_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_16\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"16\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:aarch64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk16_macos_aarch64//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk16_macos_aarch64_toolchain_config_repo",
                         "generator_name": "remotejdk16_macos_aarch64_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_16\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"16\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:aarch64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk16_macos_aarch64//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "fb0698ad442f5193bd3460cf038e56533ceaf655decbafb55c7b2389ed08850b"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk11_win_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:140:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk11_win_toolchain_config_repo",
               "generator_name": "remotejdk11_win_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:windows\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_win//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk11_win_toolchain_config_repo",
                         "generator_name": "remotejdk11_win_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:windows\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_win//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "7c675e21b0bcc857f7205eb90028ceeb8242a32335df8132fdf9bfcc8d4466a9"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk11_linux_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:41:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk11_linux_toolchain_config_repo",
               "generator_name": "remotejdk11_linux_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_linux//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk11_linux_toolchain_config_repo",
                         "generator_name": "remotejdk11_linux_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_linux//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "0e06573f2dfcb55129ddff25782472dd4cf69169aed701ced60de9d835ec71a5"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk11_macos_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:107:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk11_macos_toolchain_config_repo",
               "generator_name": "remotejdk11_macos_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_macos//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk11_macos_toolchain_config_repo",
                         "generator_name": "remotejdk11_macos_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_macos//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "c2e1b46fc39094c04ce9c82d755213ac9d8ee8939c4f869d8fe4a91e12259702"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk16_linux_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:224:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk16_linux_toolchain_config_repo",
               "generator_name": "remotejdk16_linux_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_16\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"16\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk16_linux//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk16_linux_toolchain_config_repo",
                         "generator_name": "remotejdk16_linux_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_16\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"16\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk16_linux//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "22a825b195ff9a98e5a869367615ab1cb9115f7967c87c502d3499a177404bba"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk11_macos_aarch64_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:123:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk11_macos_aarch64_toolchain_config_repo",
               "generator_name": "remotejdk11_macos_aarch64_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:aarch64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_macos_aarch64//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk11_macos_aarch64_toolchain_config_repo",
                         "generator_name": "remotejdk11_macos_aarch64_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:macos\", \"@platforms//cpu:aarch64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_macos_aarch64//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "9335ce52c194d9fc058fe504fb35a45b6c2cf9188518c51cc305e43ee7378b9c"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/sh:sh_configure.bzl%sh_config",
          "definition_information": "Repository local_config_sh instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:425:13: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/sh/sh_configure.bzl:83:14: in sh_configure\nRepository rule sh_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/sh/sh_configure.bzl:72:28: in <toplevel>\n",
          "original_attributes": {
               "name": "local_config_sh",
               "generator_name": "local_config_sh",
               "generator_function": "sh_configure",
               "generator_location": None
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/sh:sh_configure.bzl%sh_config",
                    "attributes": {
                         "name": "local_config_sh",
                         "generator_name": "local_config_sh",
                         "generator_function": "sh_configure",
                         "generator_location": None
                    },
                    "output_tree_hash": "e36855460b514225eac75f4abe2cb992c5455b7077a9028d213d269d11490744"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk11_linux_aarch64_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:57:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk11_linux_aarch64_toolchain_config_repo",
               "generator_name": "remotejdk11_linux_aarch64_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:aarch64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_linux_aarch64//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk11_linux_aarch64_toolchain_config_repo",
                         "generator_name": "remotejdk11_linux_aarch64_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:aarch64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_linux_aarch64//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "20842b19bc9bf1ddddaf48e3a21889ba5cc8b8f3878509fd2fa553e46d04870b"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk11_linux_ppc64le_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:73:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk11_linux_ppc64le_toolchain_config_repo",
               "generator_name": "remotejdk11_linux_ppc64le_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:ppc\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_linux_ppc64le//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk11_linux_ppc64le_toolchain_config_repo",
                         "generator_name": "remotejdk11_linux_ppc64le_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_11\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"11\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:linux\", \"@platforms//cpu:ppc\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk11_linux_ppc64le//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "053245fb5b36eb28476a77eb1a4dafbeac058c08021c8176941b82297cc0b9dc"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
          "definition_information": "Repository remotejdk15_win_toolchain_config_repo instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:207:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:53:22: in remote_java_repository\nRepository rule _toolchain_config defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:26:36: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk15_win_toolchain_config_repo",
               "generator_name": "remotejdk15_win_toolchain_config_repo",
               "generator_function": "maybe",
               "generator_location": None,
               "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_15\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"15\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:windows\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk15_win//:jdk\",\n)\n"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:remote_java_repository.bzl%_toolchain_config",
                    "attributes": {
                         "name": "remotejdk15_win_toolchain_config_repo",
                         "generator_name": "remotejdk15_win_toolchain_config_repo",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "build_file": "\nconfig_setting(\n    name = \"prefix_version_setting\",\n    values = {\"java_runtime_version\": \"remotejdk_15\"},\n    visibility = [\"//visibility:private\"],\n)\nconfig_setting(\n    name = \"version_setting\",\n    values = {\"java_runtime_version\": \"15\"},\n    visibility = [\"//visibility:private\"],\n)\nalias(\n    name = \"version_or_prefix_version_setting\",\n    actual = select({\n        \":version_setting\": \":version_setting\",\n        \"//conditions:default\": \":prefix_version_setting\",\n    }),\n    visibility = [\"//visibility:private\"],\n)\ntoolchain(\n    name = \"toolchain\",\n    exec_compatible_with = [\"@platforms//os:windows\", \"@platforms//cpu:x86_64\"],\n    target_settings = [\":version_or_prefix_version_setting\"],\n    toolchain_type = \"@bazel_tools//tools/jdk:runtime_toolchain_type\",\n    toolchain = \"@remotejdk15_win//:jdk\",\n)\n"
                    },
                    "output_tree_hash": "2e92c21e10de0c9c8730a2c97c706ebb37dc864a54395d4f3c81e5a54efa033b"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/jdk:local_java_repository.bzl%_local_java_repository_rule",
          "definition_information": "Repository local_jdk instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:27:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/local_java_repository.bzl:229:32: in local_java_repository\nRepository rule _local_java_repository_rule defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/local_java_repository.bzl:200:46: in <toplevel>\n",
          "original_attributes": {
               "name": "local_jdk",
               "generator_name": "local_jdk",
               "generator_function": "maybe",
               "generator_location": None,
               "java_home": "/Library/Java/JavaVirtualMachines/jdk-11.0.4.jdk/Contents/Home",
               "version": "",
               "build_file": "@bazel_tools//tools/jdk:jdk.BUILD"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/jdk:local_java_repository.bzl%_local_java_repository_rule",
                    "attributes": {
                         "name": "local_jdk",
                         "generator_name": "local_jdk",
                         "generator_function": "maybe",
                         "generator_location": None,
                         "java_home": "/Library/Java/JavaVirtualMachines/jdk-11.0.4.jdk/Contents/Home",
                         "version": "",
                         "build_file": "@bazel_tools//tools/jdk:jdk.BUILD"
                    },
                    "output_tree_hash": "4cd28597a69a61ba2b31fc53bba0b6c1bec81dc26ef8d4bb3de8bf25ad18f9aa"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
          "definition_information": "Repository rules_java instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:329:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\nRepository rule http_archive defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/http.bzl:359:31: in <toplevel>\n",
          "original_attributes": {
               "name": "rules_java",
               "generator_name": "rules_java",
               "generator_function": "maybe",
               "generator_location": None,
               "urls": [
                    "https://mirror.bazel.build/github.com/bazelbuild/rules_java/archive/7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip",
                    "https://github.com/bazelbuild/rules_java/archive/7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip"
               ],
               "sha256": "bc81f1ba47ef5cc68ad32225c3d0e70b8c6f6077663835438da8d5733f917598",
               "strip_prefix": "rules_java-7cf3cefd652008d0a64a419c34c13bdca6c8f178"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                    "attributes": {
                         "url": "",
                         "urls": [
                              "https://mirror.bazel.build/github.com/bazelbuild/rules_java/archive/7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip",
                              "https://github.com/bazelbuild/rules_java/archive/7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip"
                         ],
                         "sha256": "bc81f1ba47ef5cc68ad32225c3d0e70b8c6f6077663835438da8d5733f917598",
                         "integrity": "",
                         "netrc": "",
                         "auth_patterns": {},
                         "canonical_id": "",
                         "strip_prefix": "rules_java-7cf3cefd652008d0a64a419c34c13bdca6c8f178",
                         "type": "",
                         "patches": [],
                         "remote_patches": {},
                         "remote_patch_strip": 0,
                         "patch_tool": "",
                         "patch_args": [
                              "-p0"
                         ],
                         "patch_cmds": [],
                         "patch_cmds_win": [],
                         "build_file_content": "",
                         "workspace_file_content": "",
                         "name": "rules_java"
                    },
                    "output_tree_hash": "00a0f1231dacff0b0cea3886200e0158c67a3600068275da14120f5434f83b5e"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/cpp:cc_configure.bzl%cc_autoconf_toolchains",
          "definition_information": "Repository local_config_cc_toolchains instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:419:13: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/cpp/cc_configure.bzl:183:27: in cc_configure\nRepository rule cc_autoconf_toolchains defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/cpp/cc_configure.bzl:79:41: in <toplevel>\n",
          "original_attributes": {
               "name": "local_config_cc_toolchains",
               "generator_name": "local_config_cc_toolchains",
               "generator_function": "cc_configure",
               "generator_location": None
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/cpp:cc_configure.bzl%cc_autoconf_toolchains",
                    "attributes": {
                         "name": "local_config_cc_toolchains",
                         "generator_name": "local_config_cc_toolchains",
                         "generator_function": "cc_configure",
                         "generator_location": None
                    },
                    "output_tree_hash": "f5fa90be9474fc9f1bc1657ba3389e2b5d8b00fa7ce13f68ad8fb8eb5a0727d1"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/cpp:cc_configure.bzl%cc_autoconf",
          "definition_information": "Repository local_config_cc instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:419:13: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/cpp/cc_configure.bzl:184:16: in cc_configure\nRepository rule cc_autoconf defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/cpp/cc_configure.bzl:145:30: in <toplevel>\n",
          "original_attributes": {
               "name": "local_config_cc",
               "generator_name": "local_config_cc",
               "generator_function": "cc_configure",
               "generator_location": None
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/cpp:cc_configure.bzl%cc_autoconf",
                    "attributes": {
                         "name": "local_config_cc",
                         "generator_name": "local_config_cc",
                         "generator_function": "cc_configure",
                         "generator_location": None
                    },
                    "output_tree_hash": "3181aaa93b11c24a8280a4d9f2b8070e425a82267c2bb3491ed67e526f2de4e0"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
          "definition_information": "Repository rules_cc instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:340:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\nRepository rule http_archive defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/http.bzl:359:31: in <toplevel>\n",
          "original_attributes": {
               "name": "rules_cc",
               "generator_name": "rules_cc",
               "generator_function": "maybe",
               "generator_location": None,
               "urls": [
                    "https://mirror.bazel.build/github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip",
                    "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip"
               ],
               "sha256": "d0c573b94a6ef20ef6ff20154a23d0efcb409fb0e1ff0979cec318dfe42f0cdd",
               "strip_prefix": "rules_cc-b1c40e1de81913a3c40e5948f78719c28152486d"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                    "attributes": {
                         "url": "",
                         "urls": [
                              "https://mirror.bazel.build/github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip",
                              "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip"
                         ],
                         "sha256": "d0c573b94a6ef20ef6ff20154a23d0efcb409fb0e1ff0979cec318dfe42f0cdd",
                         "integrity": "",
                         "netrc": "",
                         "auth_patterns": {},
                         "canonical_id": "",
                         "strip_prefix": "rules_cc-b1c40e1de81913a3c40e5948f78719c28152486d",
                         "type": "",
                         "patches": [],
                         "remote_patches": {},
                         "remote_patch_strip": 0,
                         "patch_tool": "",
                         "patch_args": [
                              "-p0"
                         ],
                         "patch_cmds": [],
                         "patch_cmds_win": [],
                         "build_file_content": "",
                         "workspace_file_content": "",
                         "name": "rules_cc"
                    },
                    "output_tree_hash": "ebae406cf36356889c349fb6113b9f88d2e8e7a175d9bb0ee7df49b0ae4a68aa"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
          "definition_information": "Repository remote_java_tools instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:292:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\nRepository rule http_archive defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/http.bzl:359:31: in <toplevel>\n",
          "original_attributes": {
               "name": "remote_java_tools",
               "generator_name": "remote_java_tools",
               "generator_function": "maybe",
               "generator_location": None,
               "urls": [
                    "https://mirror.bazel.build/bazel_java_tools/releases/java/v11.3/java_tools-v11.3.zip",
                    "https://github.com/bazelbuild/java_tools/releases/download/java_v11.3/java_tools-v11.3.zip"
               ],
               "sha256": "52b66d8df456f2ce057d8e435904789463df8414af8110aa13af68ce32d8c4cc"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                    "attributes": {
                         "url": "",
                         "urls": [
                              "https://mirror.bazel.build/bazel_java_tools/releases/java/v11.3/java_tools-v11.3.zip",
                              "https://github.com/bazelbuild/java_tools/releases/download/java_v11.3/java_tools-v11.3.zip"
                         ],
                         "sha256": "52b66d8df456f2ce057d8e435904789463df8414af8110aa13af68ce32d8c4cc",
                         "integrity": "",
                         "netrc": "",
                         "auth_patterns": {},
                         "canonical_id": "",
                         "strip_prefix": "",
                         "type": "",
                         "patches": [],
                         "remote_patches": {},
                         "remote_patch_strip": 0,
                         "patch_tool": "",
                         "patch_args": [
                              "-p0"
                         ],
                         "patch_cmds": [],
                         "patch_cmds_win": [],
                         "build_file_content": "",
                         "workspace_file_content": "",
                         "name": "remote_java_tools"
                    },
                    "output_tree_hash": "0d1515694daea80ad1f55c94f279085071da0081fd774f4edf8a2148b9352a33"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
          "definition_information": "Repository rules_proto instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:351:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\nRepository rule http_archive defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/http.bzl:359:31: in <toplevel>\n",
          "original_attributes": {
               "name": "rules_proto",
               "generator_name": "rules_proto",
               "generator_function": "maybe",
               "generator_location": None,
               "urls": [
                    "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/7e4afce6fe62dbff0a4a03450143146f9f2d7488.tar.gz",
                    "https://github.com/bazelbuild/rules_proto/archive/7e4afce6fe62dbff0a4a03450143146f9f2d7488.tar.gz"
               ],
               "sha256": "8e7d59a5b12b233be5652e3d29f42fba01c7cbab09f6b3a8d0a57ed6d1e9a0da",
               "strip_prefix": "rules_proto-7e4afce6fe62dbff0a4a03450143146f9f2d7488"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                    "attributes": {
                         "url": "",
                         "urls": [
                              "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/7e4afce6fe62dbff0a4a03450143146f9f2d7488.tar.gz",
                              "https://github.com/bazelbuild/rules_proto/archive/7e4afce6fe62dbff0a4a03450143146f9f2d7488.tar.gz"
                         ],
                         "sha256": "8e7d59a5b12b233be5652e3d29f42fba01c7cbab09f6b3a8d0a57ed6d1e9a0da",
                         "integrity": "",
                         "netrc": "",
                         "auth_patterns": {},
                         "canonical_id": "",
                         "strip_prefix": "rules_proto-7e4afce6fe62dbff0a4a03450143146f9f2d7488",
                         "type": "",
                         "patches": [],
                         "remote_patches": {},
                         "remote_patch_strip": 0,
                         "patch_tool": "",
                         "patch_args": [
                              "-p0"
                         ],
                         "patch_cmds": [],
                         "patch_cmds_win": [],
                         "build_file_content": "",
                         "workspace_file_content": "",
                         "name": "rules_proto"
                    },
                    "output_tree_hash": "949d4de46aa6da1c096c0c7d833e9495fa4775950870c8d844b7dba6e0e03a97"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
          "definition_information": "Repository remote_java_tools_darwin instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:319:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\nRepository rule http_archive defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/http.bzl:359:31: in <toplevel>\n",
          "original_attributes": {
               "name": "remote_java_tools_darwin",
               "generator_name": "remote_java_tools_darwin",
               "generator_function": "maybe",
               "generator_location": None,
               "urls": [
                    "https://mirror.bazel.build/bazel_java_tools/releases/java/v11.3/java_tools_darwin-v11.3.zip",
                    "https://github.com/bazelbuild/java_tools/releases/download/java_v11.3/java_tools_darwin-v11.3.zip"
               ],
               "sha256": "d09141a35e2c7950f6b7ea344ebd67868146fd2d1ee2b7509cdc36a42786cca4"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                    "attributes": {
                         "url": "",
                         "urls": [
                              "https://mirror.bazel.build/bazel_java_tools/releases/java/v11.3/java_tools_darwin-v11.3.zip",
                              "https://github.com/bazelbuild/java_tools/releases/download/java_v11.3/java_tools_darwin-v11.3.zip"
                         ],
                         "sha256": "d09141a35e2c7950f6b7ea344ebd67868146fd2d1ee2b7509cdc36a42786cca4",
                         "integrity": "",
                         "netrc": "",
                         "auth_patterns": {},
                         "canonical_id": "",
                         "strip_prefix": "",
                         "type": "",
                         "patches": [],
                         "remote_patches": {},
                         "remote_patch_strip": 0,
                         "patch_tool": "",
                         "patch_args": [
                              "-p0"
                         ],
                         "patch_cmds": [],
                         "patch_cmds_win": [],
                         "build_file_content": "",
                         "workspace_file_content": "",
                         "name": "remote_java_tools_darwin"
                    },
                    "output_tree_hash": "4e81ef64f7602c2698a59ff48dd1db1a2a3ed2795a8a9e790303c2b92abdc11e"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/osx:xcode_configure.bzl%xcode_autoconf",
          "definition_information": "Repository local_config_xcode instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:422:16: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/osx/xcode_configure.bzl:293:19: in xcode_configure\nRepository rule xcode_autoconf defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/osx/xcode_configure.bzl:282:33: in <toplevel>\n",
          "original_attributes": {
               "name": "local_config_xcode",
               "generator_name": "local_config_xcode",
               "generator_function": "xcode_configure",
               "generator_location": None,
               "xcode_locator": "@bazel_tools//tools/osx:xcode_locator.m"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/osx:xcode_configure.bzl%xcode_autoconf",
                    "attributes": {
                         "name": "local_config_xcode",
                         "generator_name": "local_config_xcode",
                         "generator_function": "xcode_configure",
                         "generator_location": None,
                         "xcode_locator": "@bazel_tools//tools/osx:xcode_locator.m"
                    },
                    "output_tree_hash": "175f772cb515a641c26dad28550eeb304d82fff09aa6e749f1ded3deb1a04ed6"
               }
          ]
     },
     {
          "original_rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
          "definition_information": "Repository remotejdk11_macos instantiated at:\n  /DEFAULT.WORKSPACE.SUFFIX:107:6: in <toplevel>\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/utils.bzl:228:18: in maybe\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/jdk/remote_java_repository.bzl:48:17: in remote_java_repository\nRepository rule http_archive defined at:\n  /private/var/tmp/_bazel_pcloudy/5c0a8d2e2d79b3435f2dd403c767956d/external/bazel_tools/tools/build_defs/repo/http.bzl:359:31: in <toplevel>\n",
          "original_attributes": {
               "name": "remotejdk11_macos",
               "generator_name": "remotejdk11_macos",
               "generator_function": "maybe",
               "generator_location": None,
               "urls": [
                    "https://mirror.bazel.build/openjdk/azul-zulu11.37.17-ca-jdk11.0.6/zulu11.37.17-ca-jdk11.0.6-macosx_x64.tar.gz"
               ],
               "sha256": "e1fe56769f32e2aaac95e0a8f86b5a323da5af3a3b4bba73f3086391a6cc056f",
               "strip_prefix": "zulu11.37.17-ca-jdk11.0.6-macosx_x64",
               "build_file": "@bazel_tools//tools/jdk:jdk.BUILD"
          },
          "repositories": [
               {
                    "rule_class": "@bazel_tools//tools/build_defs/repo:http.bzl%http_archive",
                    "attributes": {
                         "url": "",
                         "urls": [
                              "https://mirror.bazel.build/openjdk/azul-zulu11.37.17-ca-jdk11.0.6/zulu11.37.17-ca-jdk11.0.6-macosx_x64.tar.gz"
                         ],
                         "sha256": "e1fe56769f32e2aaac95e0a8f86b5a323da5af3a3b4bba73f3086391a6cc056f",
                         "integrity": "",
                         "netrc": "",
                         "auth_patterns": {},
                         "canonical_id": "",
                         "strip_prefix": "zulu11.37.17-ca-jdk11.0.6-macosx_x64",
                         "type": "",
                         "patches": [],
                         "remote_patches": {},
                         "remote_patch_strip": 0,
                         "patch_tool": "",
                         "patch_args": [
                              "-p0"
                         ],
                         "patch_cmds": [],
                         "patch_cmds_win": [],
                         "build_file": "@bazel_tools//tools/jdk:jdk.BUILD",
                         "build_file_content": "",
                         "workspace_file_content": "",
                         "name": "remotejdk11_macos"
                    },
                    "output_tree_hash": "c37f84fee38aa24a262e08751796fd7b7e646aabcdd54db914bf5d90b8aa0c51"
               }
          ]
     }
]