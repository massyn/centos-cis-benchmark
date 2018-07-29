#!/bin/sh
# ** AUTO GENERATED **

# 4.1.13 - Ensure successful file system mounts are collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+mounts" | egrep "\-S[[:space:]]+mount" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+mounts" | egrep "\-S[[:space:]]+mount" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1

