#!/bin/sh
# ** AUTO GENERATED **

# 3.4.5 - Ensure permissions on /etc/hosts.deny are configured (Scored)

stat -L -c "%a %u %g" /etc/hosts.deny | grep -q "644 0 0$" || exit $?
