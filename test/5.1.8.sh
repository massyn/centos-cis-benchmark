#!/bin/sh
# ** AUTO GENERATED **

# 5.1.8 - Ensure at/cron is restricted to authorized users (Scored)

stat -L -c "%a %u %g" /etc/cron.allow | grep -q "600 0 0$$" || exit $?
stat -L -c "%a %u %g" /etc/at.allow | grep -q "600 0 0$$" || exit $?
