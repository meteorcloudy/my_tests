#!/bin/bash
set -x

gsutil cp gs://bazel-builds/artifacts/ubuntu1404/$1/bazel ~/bin/bazel-$1 && chmod +x ~/bin/bazel-$1

for i in `seq 1 5`; do
  ~/bin/bazel-$1 clean --expunge
  timeout 60 ~/bin/bazel-$1 build --show_progress_rate_limit=5 --curses=yes --color=yes --verbose_failures --keep_going --jobs=32 --announce_rc --experimental_multi_threaded_digest --sandbox_tmpfs_path=/tmp --remote_timeout=1 --disk_cache= --remote_max_connections=2000 --host_platform_remote_properties_override='properties:{name:"platform" value:"ubuntu1604"}' --google_credentials=/usr/local/google/home/pcloudy/bin/bazel-untrusted.json --remote_http_cache=https://storage.googleapis.com/pcloudy-test //...
 ret=$?
 if [ $ret != 0 ] && [ $ret != 124 ]; then
   exit 1;
 fi
done
exit 0;

