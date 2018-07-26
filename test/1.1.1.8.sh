#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.8 - Ensure mounting of FAT filesystems is disabled (Scored)

modprobe -n -v vfat | grep -E "(install /bin/true|FATAL: Module vfat not found.)" || exit $?
[[ -z "$(lsmod | grep vfat)" ]] || exit 1
