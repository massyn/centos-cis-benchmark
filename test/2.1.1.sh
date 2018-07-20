#!/bin/sh

# 2.1.1 Ensure chargen services are not enabled (Scored)

out=$(chkconfig --list | grep -E "chargen-dgram|chargen-stream")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "chargen-dgram|chargen-stream" |grep ":on")
[[ -z "${out}" ]] || exit 1
