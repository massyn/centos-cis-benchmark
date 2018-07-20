#!/bin/sh

# 4.1.8 Ensure login and logout events are collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+logins" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/var\/log\/faillog" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+logins" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/var\/log\/lastlog" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+logins" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/var\/log\/tallylog" || exit 1
