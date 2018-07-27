#!/bin/sh
# ** AUTO GENERATED **

# 4.2.4 - Ensure permissions on all logfiles are configured (Scored)

[[ $(find /var/log -type f -ls | grep -v "\-r\-\-\-\-\-\-\-\-" | grep -v "\-rw\-\-\-\-\-\-\-" | grep -v "\-rw\-r\-\-\-\-\-" | wc -l) -eq 0 ]] || exit 1
