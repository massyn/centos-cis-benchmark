#!/bin/sh
# ** AUTO GENERATED **

# 2.2.4 - Ensure CUPS is not enabled (Scored)

out=$(chkconfig --list | grep -E "cups")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "cups" |grep ":on")
[[ -z "${out}" ]] || exit 1

