#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.6 - Ensure no unconfined daemons exist (Scored)

out=$(ps -eZ | egrep "initrc" | egrep -vw "tr|ps|egrep|bash|awk" | tr ':' ' ' | awk '{ print $NF }')
[[ -z "${out}" ]] || exit 1
