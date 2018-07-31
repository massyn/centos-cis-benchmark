#!/bin/sh
# ** AUTO GENERATED **

# 4.1.1.3 - Ensure audit logs are not automatically deleted (Scored)

cat /etc/audit/auditd.conf | grep -v "max_log_file_action" > /etc/audit/auditd.conf.new

mv /etc/audit/auditd.conf.new /etc/audit/auditd.conf
echo "max_log_file_action = keep_logs" >> /etc/audit/auditd.conf
