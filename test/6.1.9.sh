#!/bin/sh
# ** AUTO GENERATED **

# 6.1.9 - Ensure permissions on /etc/gshadow- are configured (Scored)

stat -L -c "%a %u %g" /etc/gshadow- | grep -q "^0 0 0$" || exit $?
