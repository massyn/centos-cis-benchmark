#!/bin/sh
# ** AUTO GENERATED **

# 5.4.2 - Ensure system accounts are non-login (Scored)

CNT=$(egrep -v "^\+" /etc/passwd | awk -F: '($1!="root" && $1!="sync" && $1!="shutdown" && $1!="halt" && $3<500 && $7!="/sbin/nologin" && $7!="/bin/false") {print}' |wc -l)

if [[ $CNT -ne 0 ]]; then
        exit 1
fi
