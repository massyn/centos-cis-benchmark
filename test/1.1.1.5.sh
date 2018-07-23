#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.5 - Ensure mounting of hfsplus filesystems is disabled (Scored)

modprobe -n -v hfsplus | grep -E "install /bin/true" || exit $?
[[ -z "$(lsmod | grep hfsplus)" ]] || exit 1
