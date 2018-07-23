#!/bin/sh
# ** AUTO GENERATED **

# 1.1.22 - Disable Automounting (Scored)

out=$(chkconfig --list | grep -E "autofs")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "autofs" |grep ":on")
[[ -z "${out}" ]] || exit 1

