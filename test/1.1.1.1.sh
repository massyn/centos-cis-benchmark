#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.1 - Ensure mounting of cramfs filesystems is disabled (Scored)

modprobe -n -v cramfs | grep -E "install /bin/true" || exit $?
[[ -z "$(lsmod | grep cramfs)" ]] || exit 1
