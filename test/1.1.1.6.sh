#!/bin/sh

# 1.1.1.6 Ensure mounting of squashfs filesystems is disabled (Scored)

modprobe -n -v squashfs | grep -E "install /bin/true" || exit $?

lsmod | grep squashfs || exit $?
