#!/bin/sh
# ** AUTO GENERATED **

# 1.1.17 - Ensure noexec option set on /dev/shm partition (Scored)

mount | grep /dev/shm | grep noexec || exit $?
