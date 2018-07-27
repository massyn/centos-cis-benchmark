#!/bin/sh
# ** AUTO GENERATED **

# 4.1.16 - Ensure system administrator actions (sudolog) are collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+actions" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/var\/log\/sudo.log" || exit 1
