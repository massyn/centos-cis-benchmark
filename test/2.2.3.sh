#!/bin/sh
# ** AUTO GENERATED **

# 2.2.3 - Ensure Avahi Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^avahi-daemon\s")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "^avahi-daemon\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

