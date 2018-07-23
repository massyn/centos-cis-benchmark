#!/bin/sh
# ** AUTO GENERATED **

# 2.2.5 - Ensure DHCP Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "dhcpd")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "dhcpd" |grep ":on")
[[ -z "${out}" ]] || exit 1

