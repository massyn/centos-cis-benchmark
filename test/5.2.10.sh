#!/bin/sh
# ** AUTO GENERATED **

# 5.2.10 - Ensure SSH PermitUserEnvironment is disabled (Scored)

grep "^\s*PermitUserEnvironment" /etc/ssh/sshd_config | grep -q "PermitUserEnvironment\s*no" || exit $?
