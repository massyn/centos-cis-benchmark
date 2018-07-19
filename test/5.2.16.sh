#!/bin/sh

# 5.2.16 Ensure SSH warning banner is configured (Scored)

grep -qE "^Banner\s+/etc/issue.net" /etc/ssh/sshd_config || exit $?
