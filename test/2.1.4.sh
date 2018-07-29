#!/bin/sh
# ** AUTO GENERATED **

# 2.1.4 - Ensure echo services are not enabled (Scored)

out=$(chkconfig --list | grep -E "^(echo-dgram|echo-stream)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

