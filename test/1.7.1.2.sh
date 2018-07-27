#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.2 - Ensure local login warning banner is configured properly (Not Scored)

out=$(egrep '(\\v|\\r|\\m|\\s)' /etc/issue)
[[ -z "${out}" ]] || exit 1
