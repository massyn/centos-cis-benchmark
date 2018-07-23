#!/bin/sh
# ** AUTO GENERATED **

# 3.4.4 - Ensure permissions on /etc/hosts.allow are configured (Scored)

stat -L -c "%a %u %g" /etc/hosts.allow | grep -q "644 0 0$" || exit $?
