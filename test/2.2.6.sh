#!/bin/sh
# ** AUTO GENERATED **

# 2.2.6 - Ensure LDAP server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(slapd)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

