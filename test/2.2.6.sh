#!/bin/sh
# ** AUTO GENERATED **

# 2.2.6 - Ensure LDAP server is not enabled (Scored)

out=$(chkconfig --list | grep -E "slapd")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "slapd" |grep ":on")
[[ -z "${out}" ]] || exit 1

