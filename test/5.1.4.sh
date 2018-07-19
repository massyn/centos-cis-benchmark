#!/bin/sh

# 5.1.4 Ensure permissions on /etc/cron.daily are configured (Scored) 

stat -L -c "%a %u %g" /etc/cron.daily | grep "700 0 0$" || exit $?
