#!/bin/sh
# ** AUTO GENERATED **

# 4.1.15 - Ensure changes to system administration scope (sudoers) is collected (Scored)

echo "-w /etc/sudoers -p wa -k scope" >> /etc/audit/rules.d/audit.rules
echo "-w /etc/sudoers.d/ -p wa -k scope" >> /etc/audit/rules.d/audit.rules
service auditd restart
