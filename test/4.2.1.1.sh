#!/bin/sh

# 4.2.1.1 Ensure rsyslog Service is enabled (Scored)

chkconfig --list rsyslog | grep -E "2:ons*3:ons*4:ons*5:on" || exit $?
