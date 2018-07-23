#!/bin/sh
# ** AUTO GENERATED **

# 5.2.6 - Ensure SSH IgnoreRhosts is enabled (Scored)

grep "^\s*IgnoreRhosts" /etc/ssh/sshd_config | grep -q "IgnoreRhosts\s*yes" || exit $?
