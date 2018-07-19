#!/bin/sh

# 5.1.6 Ensure permissions on /etc/cron.monthly are configured (Scored) 

stat -L -c "%a %u %g" /etc/cron.monthly | grep "700 0 0$" || exit $?
