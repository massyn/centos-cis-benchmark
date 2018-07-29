#!/bin/sh
# ** AUTO GENERATED **

# 4.2.1.4 - Ensure rsyslog is configured to send logs to a remote log host (Scored)

grep -q "^\*.\*[^I][^I]*@" /etc/rsyslog.conf 2>/dev/null || exit 1
