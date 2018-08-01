#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.1 - Ensure mounting of cramfs filesystems is disabled (Scored)

modprobe -n -v cramfs 2>&1 | grep -E "(install /bin/true|FATAL: Module cramfs not found.)" || exit $?
[[ -z "$(lsmod | grep cramfs)" ]] || exit 1
