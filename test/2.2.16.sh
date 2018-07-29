#!/bin/sh
# ** AUTO GENERATED **

# 2.2.16 - Ensure NIS Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(ypserv)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

