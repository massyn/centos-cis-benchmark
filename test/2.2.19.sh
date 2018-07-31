#!/bin/sh
# ** AUTO GENERATED **

# 2.2.19 - Ensure tftp server is not enabled (Scored)

systemctl is-enabled tftp.socket 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
