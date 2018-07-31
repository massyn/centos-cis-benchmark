#!/bin/sh
# ** AUTO GENERATED **

# 4.1.7 - Ensure events that modify the system's Mandatory Access Controls are collected (Scored)

echo "-w /etc/selinux/ -p wa -k MAC-policy" >> /etc/audit/rules.d/audit.rules
echo "-w /usr/share/selinux/ -p wa -k MAC-policy" >> /etc/audit/rules.d/audit.rules
service auditd restart
