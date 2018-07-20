#!/bin/sh

# 2.1.10 Ensure rsync service is not enabled (Scored)

out=$(chkconfig --list | grep -E "rsync")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "rsync" |grep ":on")
[[ -z "${out}" ]] || exit 1
