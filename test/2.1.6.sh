#!/bin/sh
# ** AUTO GENERATED **

# 2.1.6 - Ensure rsh server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(rsh|rlogin|rexec)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

