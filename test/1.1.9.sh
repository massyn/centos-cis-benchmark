#!/bin/sh
# ** AUTO GENERATED **

# 1.1.9 - Ensure nosuid option set on /var/tmp partition (Scored)

mount | grep /var/tmp | grep nosuid || exit $?
