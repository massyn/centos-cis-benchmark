#!/bin/sh

# 5.1.1 Ensure cron daemon is enabled (Scored)

# = older version of centos do not have systemctl, so we check for both

if [[ -f /sbin/service ]]; then
        service crond status | grep -E "crond .+ is running..." || exit $?
else
        systemctl is-enabled crond | grep -E "enabled" || exit $?
fi
