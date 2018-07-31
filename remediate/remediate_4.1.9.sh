#!/bin/sh
# ** AUTO GENERATED **

# 4.1.9 - Ensure session initiation information is collected (Scored)

echo "-w /var/run/utmp -p wa -k session" >> /etc/audit/rules.d/audit.rules
echo "-w /var/log/wtmp -p wa -k logins" >> /etc/audit/rules.d/audit.rules
echo "-w /var/log/btmp -p wa -k logins" >> /etc/audit/rules.d/audit.rules
service auditd restart
