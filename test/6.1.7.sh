#!/bin/sh
# ** AUTO GENERATED **

# 6.1.7 - Ensure permissions on /etc/shadow- are configured (Scored)

stat -L -c "%a %u %g" /etc/shadow- | grep -q "^0 0 0$" || exit $?
