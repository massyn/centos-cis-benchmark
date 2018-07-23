#!/bin/sh
# ** AUTO GENERATED **

# 5.2.9 - Ensure SSH PermitEmptyPasswords is disabled (Scored)

grep "^\s*PermitEmptyPasswords" /etc/ssh/sshd_config | grep -q "PermitEmptyPasswords\s*no" || exit $?
