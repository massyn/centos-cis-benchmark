#!/bin/sh
# ** AUTO GENERATED **

# 4.1.15 - Ensure changes to system administration scope (sudoers) is collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+scope" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/sudoers" || exit 1
