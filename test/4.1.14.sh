#!/bin/sh
# ** AUTO GENERATED **

# 4.1.14 - Ensure file deletion events by users are collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+delete" | egrep "\-S[[:space:]]+unlink" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-S[[:space:]]+unlinkat" | egrep "\-S[[:space:]]+rename" | egrep "\-S[[:space:]]+renameat" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+delete" | egrep "\-S[[:space:]]+unlink" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-S[[:space:]]+unlinkat" | egrep "\-S[[:space:]]+rename" | egrep "\-S[[:space:]]+renameat" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1

