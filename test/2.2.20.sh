#!/bin/sh
# ** AUTO GENERATED **

# 2.2.20 - Ensure rsync service is not enabled (Scored)

systemctl is-enabled rsync 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
