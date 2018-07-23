#!/bin/sh
# ** AUTO GENERATED **

# 2.2.14 - Ensure SNMP Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "snmpd")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "snmpd" |grep ":on")
[[ -z "${out}" ]] || exit 1

