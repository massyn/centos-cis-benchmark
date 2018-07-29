#!/bin/sh
# ** AUTO GENERATED **

# 2.1.10 - Ensure rsync service is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(rsync)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

