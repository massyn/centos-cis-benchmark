#!/bin/sh

# 5.2.10 Ensure SSH PermitUserEnvironment is disabled (Scored)

grep "^PermitUserEnvironment" /etc/ssh/sshd_config | grep -q "PermitUserEnvironment no" || exit $?
