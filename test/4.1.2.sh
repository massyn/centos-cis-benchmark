#!/bin/sh
# ** AUTO GENERATED **

# 4.1.2 - Ensure auditd service is enabled (Scored)

systemctl is-enabled auditd | grep enabled || exit $?
