#!/bin/sh
# ** AUTO GENERATED **

# 4.1.5 - Ensure events that modify user/group information are collected (Scored)

echo "-w /etc/group -p wa -k identity" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/passwd -p wa -k identity" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/gshadow -p wa -k identity" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/shadow -p wa -k identity" >>/etc/audit/rules.d/audit.rules
echo "-w /etc/security/opasswd -p wa -k identity" >>/etc/audit/rules.d/audit.rules
service auditd restart
