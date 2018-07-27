#!/bin/sh
# ** AUTO GENERATED **

# 5.2.15 - Ensure SSH warning banner is configured (Scored)

grep -qE "^Banner\s+/etc/issue.net" /etc/ssh/sshd_config || exit $?
