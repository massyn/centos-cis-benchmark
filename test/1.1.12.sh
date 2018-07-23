#!/bin/sh
# ** AUTO GENERATED **

# 1.1.12 - Ensure separate partition exists for /var/log/audit (Scored)

mount | grep /var/log/audit || exit $?
