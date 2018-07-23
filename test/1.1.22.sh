#!/bin/sh
# ** AUTO GENERATED **

# 1.1.22 - Disable Automounting (Scored)

out=$(chkconfig --list | grep -E "^(autofs)\s")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "^(autofs)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

