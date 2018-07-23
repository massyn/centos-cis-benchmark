#!/bin/sh
# ** AUTO GENERATED **

# 2.2.12 - Ensure Samba is not enabled (Scored)

out=$(chkconfig --list | grep -E "^(smb)\s")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "^(smb)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

