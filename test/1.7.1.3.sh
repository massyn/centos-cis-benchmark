#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.3 - Ensure remote login warning banner is configured properly (Not Scored)

out=$(egrep '(\\v|\\r|\\m|\\s)' /etc/issue.net)
[[ -z "${out}" ]] || exit 1
