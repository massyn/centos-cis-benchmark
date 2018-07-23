#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.6 - Ensure mounting of squashfs filesystems is disabled (Scored)

modprobe -n -v squashfs | grep -E "install /bin/true" || exit $?
[[ -z "$(lsmod | grep squashfs)" ]] || exit 1
