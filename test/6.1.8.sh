#!/bin/sh
# ** AUTO GENERATED **

# 6.1.8 - Ensure permissions on /etc/group- are configured (Scored)

stat -L -c "%a %u %g" /etc/group- | grep -q "644 0 0$" || exit $?
