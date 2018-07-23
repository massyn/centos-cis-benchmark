#!/bin/sh
# ** AUTO GENERATED **

# 1.1.3 - Ensure nodev option set on /tmp partition (Scored)

mount | grep /tmp | grep nodev || exit $?
