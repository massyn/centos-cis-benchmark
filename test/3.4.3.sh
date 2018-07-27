#!/bin/sh
# ** AUTO GENERATED **

# 3.4.3 - Ensure /etc/hosts.deny is configured (Scored)

# This is a fairly restrictive check - with this in place, you could lock yourself out if you don't have a proper /etc/hosts.allow setup.  Treat this carefully!

cut -d\# -f1 /etc/hosts.deny | grep -q "ALL[[:space:]]*:[[:space:]]*ALL" || exit $?
