#!/bin/sh
# ** AUTO GENERATED **

# 4.1.1.2 - Ensure system is disabled when audit logs are full (Scored)

cat /etc/audit/auditd.conf | grep -v "space_left_action" | grep -v "action_mail_acct" | grep -v "admin_space_left_action" > /etc/audit/auditd.conf.new

mv /etc/audit/auditd.conf.new /etc/audit/auditd.conf
echo "space_left_action = email" >> /etc/audit/auditd.conf
echo "action_mail_acct = root" >> /etc/audit/auditd.conf
echo "admin_space_left_action = halt" >> /etc/audit/auditd.conf
