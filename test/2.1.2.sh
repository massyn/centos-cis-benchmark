#!/bin/sh

# 2.1.2 Ensure daytime services are not enabled (Scored)

out=$(chkconfig --list | grep -E "daytime-dgram|daytime-stream")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "daytime-dgram|daytime-stream" |grep ":on")
[[ -z "${out}" ]] || exit 1
