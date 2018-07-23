#!/bin/sh
# ** AUTO GENERATED **

# 2.1.7 - Ensure talk server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^talk\s")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "^talk\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

