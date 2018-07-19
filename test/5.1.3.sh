#!/bin/sh

# 5.1.3 Ensure permissions on /etc/cron.hourly are configured (Scored) 

stat -L -c "%a %u %g" /etc/cron.hourly | grep "700 0 0$" || exit $?
