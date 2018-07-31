#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.1 - Ensure syslog-ng service is enabled (Scored)

systemctl is-enabled rsyslog | grep enabled || exit $?
