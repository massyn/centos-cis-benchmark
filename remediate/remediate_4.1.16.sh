#!/bin/sh
# ** AUTO GENERATED **

# 4.1.16 - Ensure system administrator actions (sudolog) are collected (Scored)

echo "-w /var/log/sudo.log -p wa -k actions" >> /etc/audit/rules.d/audit.rules
service auditd restart
