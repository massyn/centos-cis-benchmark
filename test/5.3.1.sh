#!/bin/sh
# ** AUTO GENERATED **

# 5.3.1 - Ensure password creation requirements are configured (Scored)

grep pam_cracklib.so /etc/pam.d/password-auth | grep -E "try_first_pass\s*retry=3\s*minlen=14" || exit $1

grep pam_cracklib.so /etc/pam.d/system-auth | grep -E "try_first_pass\s*retry=3\s*minlen=14" || exit $1
