#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.5 - Ensure mounting of hfsplus filesystems is disabled (Scored)

modprobe -n -v hfsplus 2>&1 | grep -E "(install /bin/true|FATAL: Module hfsplus not found.)" || exit $?
[[ -z "$(lsmod | grep hfsplus)" ]] || exit 1
