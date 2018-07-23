#!/bin/sh
# ** AUTO GENERATED **

# 2.1.8 - Ensure telnet server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(telnet)\s")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "^(telnet)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

