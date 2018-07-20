#!/bin/sh

# 1.1.15 Ensure nodev option set on /dev/shm partition (Scored)

mount | grep /dev/shm | grep nodev || exit $0
