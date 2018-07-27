#!/bin/sh
# ** AUTO GENERATED **

# 4.1.9 - Ensure session initiation information is collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+session" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/var\/run\/utmp" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+logins" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/var\/log\/wtmp" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+logins" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/var\/log\/btmp" || exit 1
