#!/bin/sh
# ** AUTO GENERATED **

# 2.1.9 - Ensure tftp server is not enabled (Scored)

out=$(chkconfig --list | grep -E "tftp")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "tftp" |grep ":on")
[[ -z "${out}" ]] || exit 1

