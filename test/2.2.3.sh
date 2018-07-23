#!/bin/sh
# ** AUTO GENERATED **

# 2.2.3 - Ensure Avahi Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "avahi-daemon")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "avahi-daemon" |grep ":on")
[[ -z "${out}" ]] || exit 1

