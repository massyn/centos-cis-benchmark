#!/bin/sh

# 2.1.8 Ensure telnet server is not enabled (Scored)

out=$(chkconfig --list | grep -E "telnet")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "telnet" |grep ":on")
[[ -z "${out}" ]] || exit 1
