#!/bin/sh
# ** AUTO GENERATED **

# 1.1.22 - Disable Automounting (Scored)

systemctl is-enabled autofs 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
