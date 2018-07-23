#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.5 - Ensure permissions on /etc/issue are configured (Scored)

stat -L -c "%a %u %g" /etc/issue | grep -q "644 0 0$" || exit $?
