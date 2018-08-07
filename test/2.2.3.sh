#!/bin/sh
# ** AUTO GENERATED **

# 2.2.3 - Ensure Avahi Server is not enabled (Scored)

systemctl is-enabled avahi-daemon 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
