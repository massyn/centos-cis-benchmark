#!/bin/sh
# ** AUTO GENERATED **

# 4.1.13 - Ensure successful file system mounts are collected (Scored)

echo "-a always,exit -F arch=b64 -S mount -F auid>=500 -F auid!=4294967295 -k mounts" >> /etc/audit/rules.d/audit.rules
echo "-a always,exit -F arch=b32 -S mount -F auid>=500 -F auid!=4294967295 -k mounts" >> /etc/audit/rules.d/audit.rules
service auditd restart
