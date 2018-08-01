#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.3 - Ensure mounting of jffs2 filesystems is disabled (Scored)

modprobe -n -v jffs2 2>&1 | grep -E "(install /bin/true|FATAL: Module jffs2 not found.)" || exit $?
[[ -z "$(lsmod | grep jffs2)" ]] || exit 1
