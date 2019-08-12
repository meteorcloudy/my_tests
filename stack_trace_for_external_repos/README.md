# Get stack trace for external repository definition in Bazel

## How to use

### Generate resolved external repository definitions
```
$ cd <your project source root>
$ bazel sync --experimental_repository_resolved_file=external_repos.py
```

### Download this script to your project source root
```
$ wget https://github.com/meteorcloudy/my_tests/raw/master/stack_trace_for_external_repos/get_repo_def.py
```

### Run the script
```
$ python get_repo_def.py <repo name>
```

