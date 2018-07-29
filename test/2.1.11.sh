#!/bin/sh
# ** AUTO GENERATED **

# 2.1.11 - Ensure xinetd is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(xinetd)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

