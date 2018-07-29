#!/bin/sh
# ** AUTO GENERATED **

# 2.2.10 - Ensure HTTP server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(httpd)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

