#!/bin/sh
# ** AUTO GENERATED **

# 1.1.4 - Ensure nosuid option set on /tmp partition (Scored)

mount | grep /tmp | grep nosuid || exit $?
