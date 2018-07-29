#!/bin/sh
# ** AUTO GENERATED **

# 2.1.5 - Ensure time services are not enabled (Scored)

out=$(chkconfig --list | grep -E "^(time-dgram|time-stream)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

