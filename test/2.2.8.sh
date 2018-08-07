#!/bin/sh
# ** AUTO GENERATED **

# 2.2.8 - Ensure DNS Server is not enabled (Scored)

systemctl is-enabled named 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
