#!/bin/sh
# ** AUTO GENERATED **

# 2.1.6 - Ensure tftp server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(tftp)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

