#!/bin/sh
# ** AUTO GENERATED **

# 2.2.1.3 - Ensure chrony is configured (Scored)

rpm -q chrony | grep -E "^chrony-"
if [[ $? -eq 0 ]]; then
        grep -E "^(server|pool)" /etc/chrony.conf || exit $?
        grep -E "^OPTIONS" /etc/sysconfig/chronyd | grep "OPTIONS=\"-u chrony\"" || exit $?
fi
