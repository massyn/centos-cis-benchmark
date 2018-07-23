#!/bin/sh
# ** AUTO GENERATED **

# 2.2.11 - Ensure IMAP and POP3 server is not enabled (Scored)

out=$(chkconfig --list | grep -E "dovecot")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "dovecot" |grep ":on")
[[ -z "${out}" ]] || exit 1

