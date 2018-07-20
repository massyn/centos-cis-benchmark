#!/bin/sh

# 4.1.18 Ensure the audit configuration is immutable (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep -q "^-e[[:space:]]+2" || exit 1
