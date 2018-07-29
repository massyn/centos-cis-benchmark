#!/bin/sh
# ** AUTO GENERATED **

# 2.2.8 - Ensure DNS Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(named)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

