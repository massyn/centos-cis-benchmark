#!/bin/sh
# ** AUTO GENERATED **

# 4.1.10 - Ensure discretionary access control permission modification events are collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+perm_mod" | egrep "\-S[[:space:]]+chmod" | egrep "\-S[[:space:]]+fchmod" | egrep "\-S[[:space:]]+fchmodat" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+perm_mod" | egrep "\-S[[:space:]]+chmod" | egrep "\-S[[:space:]]+fchmod" | egrep "\-S[[:space:]]+fchmodat" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+perm_mod" | egrep "\-S[[:space:]]+chown" | egrep "\-S[[:space:]]+fchown" | egrep "\-S[[:space:]]+fchownat" | egrep "\-S[[:space:]]+fchown" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+perm_mod" | egrep "\-S[[:space:]]+chown" | egrep "\-S[[:space:]]+fchown" | egrep "\-S[[:space:]]+fchownat" | egrep "\-S[[:space:]]+fchown" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+perm_mod" | egrep "\-S[[:space:]]+setxattr" | egrep "\-S[[:space:]]+lsetxattr" | egrep "\-S[[:space:]]+fsetxattr" | egrep "\-S[[:space:]]+removexattr" | egrep "\-S[[:space:]]+lremovexattr" | egrep "\-S[[:space:]]+fremovexattr" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+perm_mod" | egrep "\-S[[:space:]]+setxattr" | egrep "\-S[[:space:]]+lsetxattr" | egrep "\-S[[:space:]]+fsetxattr" | egrep "\-S[[:space:]]+removexattr" | egrep "\-S[[:space:]]+lremovexattr" | egrep "\-S[[:space:]]+fremovexattr" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1

