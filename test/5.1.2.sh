#!/bin/sh

# 5.1.2 Ensure permissions on /etc/crontab are configured (Scored)

stat -L -c "%a %u %g" /etc/crontab | grep "600 0 0$" || exit $?
