#!/bin/sh
# ** AUTO GENERATED **

# 2.2.21 - Ensure talk server is not enabled (Scored)

systemctl is-enabled ntalk 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
