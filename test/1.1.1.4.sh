#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.4 - Ensure mounting of hfs filesystems is disabled (Scored)

modprobe -n -v hfs 2>&1 | grep -E "(install /bin/true|FATAL: Module hfs not found.)" || exit $?
[[ -z "$(lsmod | grep hfs)" ]] || exit 1
