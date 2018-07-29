#!/bin/sh
# ** AUTO GENERATED **

# 2.1.3 - Ensure discard services are not enabled (Scored)

out=$(chkconfig --list | grep -E "^(discard-dgram|discard-stream)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

