#!/bin/sh

# 1.1.1.7 Ensure mounting of udf filesystems is disabled (Scored)

modprobe -n -v udf | grep -E "install /bin/true" || exit $?

lsmod | grep udf || exit $?
