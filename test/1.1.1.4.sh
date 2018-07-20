#!/bin/sh

# 1.1.1.4 Ensure mounting of hfs filesystems is disabled (Scored)

modprobe -n -v hfs | grep -E "install /bin/true" || exit $?

lsmod | grep hfs || exit $?
