#!/bin/sh
# ** AUTO GENERATED **

# 4.1.4 - Ensure events that modify date and time information are collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-S[[:space:]]+settimeofday" | egrep "\-S[[:space:]]+adjtimex" | egrep "\-F[[:space:]]+arch=b64" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-S[[:space:]]+settimeofday" | egrep "\-S[[:space:]]+adjtimex" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-S[[:space:]]+stime" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-S[[:space:]]+clock_settime" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-S[[:space:]]+clock_settime" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || exit 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/localtime" || exit 1
