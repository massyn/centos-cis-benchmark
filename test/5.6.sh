#!/bin/sh
# ** AUTO GENERATED **

# 5.6 - Ensure access to the su command is restricted (Scored)

grep pam_wheel.so /etc/pam.d/su | grep -qE "^auth\s*required\s*pam_wheel.so\s*use_uid\s*$" || exit $?
