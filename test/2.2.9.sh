#!/bin/sh
# ** AUTO GENERATED **

# 2.2.9 - Ensure FTP Server is not enabled (Scored)

out=$(chkconfig --list | grep -E "vsftpd")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "vsftpd" |grep ":on")
[[ -z "${out}" ]] || exit 1

