#!/bin/sh

# 5.1.7 Ensure permissions on /etc/cron.d are configured (Scored)

stat -L -c "%a %u %g" /etc/cron.d | grep "700 0 0$" || exit $?
