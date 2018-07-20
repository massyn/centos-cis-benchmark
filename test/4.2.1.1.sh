#!/bin/sh

# 4.2.1.1 Ensure rsyslog Service is enabled (Scored)

chkconfig --list rsyslog | grep -E "2:on\s*3:on\s*4:on\s*5:on" || exit $?
