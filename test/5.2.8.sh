#!/bin/sh

# 5.2.8 Ensure SSH root login is disabled (Scored)

grep "^PermitRootLogin" /etc/ssh/sshd_config | grep -q "PermitRootLogin no" || exit $?
