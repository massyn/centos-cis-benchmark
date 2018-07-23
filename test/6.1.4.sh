#!/bin/sh
# ** AUTO GENERATED **

# 6.1.4 - Ensure permissions on /etc/group are configured (Scored)

stat -L -c "%a %u %g" /etc/group | grep -q "644 0 0$" || exit $?
