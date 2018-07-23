#!/bin/sh
# ** AUTO GENERATED **

# 5.2.2 - Ensure SSH Protocol is set to 2 (Scored)

grep "^\s*Protocol" /etc/ssh/sshd_config | grep -q "Protocol\s*2" || exit $?
