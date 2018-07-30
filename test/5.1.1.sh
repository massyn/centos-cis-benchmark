#!/bin/sh
# ** AUTO GENERATED **

# 5.1.1 - Ensure cron daemon is enabled (Scored)

systemctl is-enabled crond | grep enabled || exit $?
