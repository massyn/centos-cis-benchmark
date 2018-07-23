#!/bin/sh
# ** AUTO GENERATED **

# 2.2.8 - Ensure DNS Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "named")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "named" |grep ":on")
[[ -z "${out}" ]] || exit 1

