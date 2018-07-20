#!/bin/sh

# 1.1.1.5 Ensure mounting of hfsplus filesystems is disabled (Scored)

modprobe -n -v hfsplus | grep -E "install /bin/true" || exit $?

lsmod | grep hfsplus || exit $?
