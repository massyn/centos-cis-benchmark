#!/bin/sh
# ** AUTO GENERATED **

# 4.1.8 - Ensure login and logout events are collected (Scored)

echo "-w /var/log/lastlog -p wa -k logins" >> /etc/audit/audit.rules
echo "-w /var/run/faillog -p wa -k logins" >> /etc/audit/audit.rules
