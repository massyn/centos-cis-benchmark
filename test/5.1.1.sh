#!/bin/sh

# 5.1.1 Ensure cron daemon is enabled (Scored)

if [[ "$(cat /etc/centos-release)" =~ "CentOS release 6." ]]; then
        chkconfig --list crond | grep -E "2:on\s*3:on\s*4:on\s*5:on" || exit $?
else
        systemctl is-enabled crond | grep enabled || exit $?
fi
