#!/bin/sh
# ** AUTO GENERATED **

# 4.1.2 - Ensure auditd service is enabled (Scored)

chkconfig --list auditd | grep -E "2:on\s*3:on\s*4:on\s*5:on" || exit $?
