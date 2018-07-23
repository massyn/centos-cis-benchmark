#!/bin/sh
# ** AUTO GENERATED **

# 2.2.9 - Ensure FTP Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "^vsftpd\s")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "^vsftpd\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

