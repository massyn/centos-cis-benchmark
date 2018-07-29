#!/bin/sh
# ** AUTO GENERATED **

# 2.2.14 - Ensure SNMP Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(snmpd)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

