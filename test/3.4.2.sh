#!/bin/sh

# 3.4.2 Ensure /etc/hosts.allow is configured (Scored)

cut -d\# -f1 /etc/hosts.allow | grep -q "ALL[[:space:]]*:[[:space:]]*ALL" || exit $?
