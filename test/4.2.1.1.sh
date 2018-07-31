#!/bin/sh
# ** AUTO GENERATED **

# 4.2.1.1 - Ensure rsyslog Service is enabled (Scored)

systemctl is-enabled rsyslog | grep enabled || exit $?
