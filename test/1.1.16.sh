#!/bin/sh
# ** AUTO GENERATED **

# 1.1.16 - Ensure nosuid option set on /dev/shm partition (Scored)

mount | grep /dev/shm | grep nosuid || exit $?
