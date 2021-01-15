load("@C-dev//:def.bzl", _my_cc_test = "my_cc_test")

def my_cc_test(**kargs):
    _my_cc_test(**kargs)