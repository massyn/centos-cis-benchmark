#!/bin/sh
# ** AUTO GENERATED **

# 4.1.8 - Ensure login and logout events are collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+logins" | egrep "\-p[[:space:]]+wa"   | egrep -q "\-w[[:space:]]+\/var\/run\/faillog" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+logins" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/var\/log\/lastlog" || exit 1
