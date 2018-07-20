#!/bin/sh

# 4.1.2 Ensure auditd service is enabled (Scored)

chkconfig --list auditd | grep -E "2:ons*3:ons*4:ons*5:on" || exit $?
