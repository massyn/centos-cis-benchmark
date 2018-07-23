#!/bin/sh
# ** AUTO GENERATED **

# 2.2.10 - Ensure HTTP server is not enabled (Scored)

out=$(chkconfig --list | grep -E "httpd")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "httpd" |grep ":on")
[[ -z "${out}" ]] || exit 1

