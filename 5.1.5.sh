#!/bin/sh
# ** AUTO GENERATED **

# 5.1.5 - Ensure permissions on /etc/cron.weekly are configured (Scored)

stat -L -c "%a %u %g" /etc/cron.weekly | grep -q "700 0 0$" || exit $?
