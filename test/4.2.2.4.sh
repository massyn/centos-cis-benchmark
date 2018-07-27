#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.4 - Ensure syslog-ng is configured to send logs to a remote log host (Not Scored)

egrep -q "destination[[:space:]]+logserver[[:space:]]+\{[[:space:]]*tcp\(\".+\"[[:space:]]+port\([[:digit:]]+\)\)\;[[:space:]]*\}\;" /etc/syslog-ng/syslog-ng.conf 2>/dev/null || exit 1
egrep -q "log[[:space:]]+\{[[:space:]]*source\(src\)\;[[:space:]]*destination\(logserver\)\;[[:space:]]*\}\;" /etc/syslog-ng/syslog-ng.conf 2>/dev/null || exit 1
