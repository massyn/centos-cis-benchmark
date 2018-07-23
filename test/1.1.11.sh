#!/bin/sh
# ** AUTO GENERATED **

# 1.1.11 - Ensure separate partition exists for /var/log (Scored)

mount | grep /var/log || exit $?
