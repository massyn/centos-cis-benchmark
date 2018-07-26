#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.2 - Ensure mounting of freevxfs filesystems is disabled (Scored)

modprobe -n -v freevxfs | grep -E "(install /bin/true|FATAL: Module freevxfs not found.)" || exit $?
[[ -z "$(lsmod | grep freevxfs)" ]] || exit 1
