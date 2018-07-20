#!/bin/sh

# 2.1.4 Ensure echo services are not enabled (Scored)

out=$(chkconfig --list | grep -E "echo-dgram|echo-stream")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "echo-dgram|echo-stream" |grep ":on")
[[ -z "${out}" ]] || exit 1
