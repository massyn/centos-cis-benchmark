#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.7 - Ensure mounting of udf filesystems is disabled (Scored)

modprobe -n -v udf 2>&1 | grep -E "(install /bin/true|FATAL: Module udf not found.)" || exit $?
[[ -z "$(lsmod | grep udf)" ]] || exit 1
