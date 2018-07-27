#!/bin/sh
# ** AUTO GENERATED **

# 4.1.6 - Ensure events that modify the system's network environment are collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-S[[:space:]]+sethostname" \
  | egrep "\-S[[:space:]]+setdomainname" | egrep "\-F[[:space:]]+arch=b64" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-S[[:space:]]+sethostname" \
  | egrep "\-S[[:space:]]+setdomainname" | egrep "\-F[[:space:]]+arch=b32" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/issue" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/issue.net" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/hosts" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/sysconfig\/network" || exit 1

