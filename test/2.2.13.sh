#!/bin/sh
# ** AUTO GENERATED **

# 2.2.13 - Ensure HTTP Proxy Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(squid)\s")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "^(squid)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

