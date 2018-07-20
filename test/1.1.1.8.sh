#!/bin/sh

# 1.1.1.8 Ensure mounting of FAT filesystems is disabled (Scored)

modprobe -n -v vfat | grep -E "install /bin/true" || exit $?

lsmod | grep vfat || exit $?
