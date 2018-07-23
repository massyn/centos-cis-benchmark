#!/bin/sh
# ** AUTO GENERATED **

# 2.2.16 - Ensure NIS Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "ypserv")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "ypserv" |grep ":on")
[[ -z "${out}" ]] || exit 1

