#!/bin/sh
# ** AUTO GENERATED **

# 4.3 - Ensure logrotate is configured (Not Scored)

cat /etc/logrotate.conf | tr '\n' '\r' | sed -e 's/{.*}//g' | tr '\r' '\n' | grep -v "^\s*#" | grep "maxage" || exit $?
