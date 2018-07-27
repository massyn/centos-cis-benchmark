#!/bin/sh
# ** AUTO GENERATED **

# 4.1.5 - Ensure events that modify user/group information are collected (Scored)


cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/group" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/passwd" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/gshadow" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/shadow" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/security\/opasswd" || exit 1
