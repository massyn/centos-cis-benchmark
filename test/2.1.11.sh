#!/bin/sh

# 2.1.11 Ensure xinetd is not enabled (Scored)

out=$(chkconfig --list | grep -E "xinetd")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "xinetd" |grep ":on")
[[ -z "${out}" ]] || exit 1
