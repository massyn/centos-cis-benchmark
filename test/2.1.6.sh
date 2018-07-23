#!/bin/sh
# ** AUTO GENERATED **

# 2.1.6 - Ensure rsh server is not enabled (Scored)

out=$(chkconfig --list | grep -E "rsh|rlogin|rexec")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "rsh|rlogin|rexec" |grep ":on")
[[ -z "${out}" ]] || exit 1

