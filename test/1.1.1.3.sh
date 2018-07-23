#!/bin/sh

# 1.1.1.3 - Ensure mounting of jffs2 filesystems is disabled (Scored)

modprobe -n -v jffs2 | grep -E "install /bin/true" || exit $?
[[ -z "$(lsmod | grep jffs2)" ]] || exit 1
