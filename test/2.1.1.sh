#!/bin/sh
# ** AUTO GENERATED **

# 2.1.1 - Ensure chargen services are not enabled (Scored)

out=$(chkconfig --list | grep -E "^(chargen-dgram|chargen-stream)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

