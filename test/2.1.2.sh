#!/bin/sh
# ** AUTO GENERATED **

# 2.1.2 - Ensure daytime services are not enabled (Scored)

out=$(chkconfig --list | grep -E "^(daytime-dgram|daytime-stream)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

