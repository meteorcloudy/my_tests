export MY_ENV="hello"

RUNFILES_MANIFEST_FILE="${TEST_SRCDIR}/MANIFEST"

function rlocation() {
  if is_absolute "$1" ; then
    # If the file path is already fully specified, simply return it.
    echo "$1"
  elif [[ -e "$TEST_SRCDIR/$1" ]]; then
    # If the file exists in the $TEST_SRCDIR then just use it.
    echo "$TEST_SRCDIR/$1"
  elif [[ -e "$RUNFILES_MANIFEST_FILE" ]]; then
    # If a runfiles manifest file exists then use it.
    echo "$(grep "^$1 " "$RUNFILES_MANIFEST_FILE" | sed 's/[^ ]* //')"
  fi
}
EXE="${1#./}"
TEST_BINARY="$(rlocation $TEST_WORKSPACE/$EXE)"
shift
echo test=$TEST_BINARY
$TEST_BINARY $@
