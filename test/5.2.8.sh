#!/bin/sh
# ** AUTO GENERATED **

# 5.2.8 - Ensure SSH root login is disabled (Scored)

grep "^\s*PermitRootLogin" /etc/ssh/sshd_config | grep -q "PermitRootLogin\s*no" || exit $?
