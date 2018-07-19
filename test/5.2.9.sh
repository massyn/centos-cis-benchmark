#!/bin/sh

# 5.2.9 Ensure SSH PermitEmptyPasswords is disabled (Scored)

grep "^PermitEmptyPasswords" /etc/ssh/sshd_config | grep -q "PermitEmptyPasswords no" || exit $?
