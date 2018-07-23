#!/bin/sh
# ** AUTO GENERATED **

# 2.2.13 - Ensure HTTP Proxy Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "squid")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "squid" |grep ":on")
[[ -z "${out}" ]] || exit 1

