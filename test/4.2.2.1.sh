#!/bin/sh

# 4.2.2.1 Ensure syslog-ng service is enabled (Scored)

chkconfig --list syslog-ng | grep -E "2:on\s*3:on\s*4:on\s*5:on" || exit $?
