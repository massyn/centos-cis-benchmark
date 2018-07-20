#!/bin/sh

# 2.1.3 Ensure discard services are not enabled (Scored)

out=$(chkconfig --list | grep -E "discard-dgram|discard-stream")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "discard-dgram|discard-stream" |grep ":on")
[[ -z "${out}" ]] || exit 1
