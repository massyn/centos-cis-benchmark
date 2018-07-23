#!/bin/sh
# ** AUTO GENERATED **

# 2.2.12 - Ensure Samba is not enabled (Scored)

out=$(chkconfig --list | grep -E "smb")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "smb" |grep ":on")
[[ -z "${out}" ]] || exit 1

