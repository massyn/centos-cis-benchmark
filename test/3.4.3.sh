#!/bin/sh

# 3.4.3 Ensure /etc/hosts.deny is configured (Scored)

cut -d\# -f1 /etc/hosts.deny | grep -q "ALL[[:space:]]*:[[:space:]]*ALL" || exit $?
