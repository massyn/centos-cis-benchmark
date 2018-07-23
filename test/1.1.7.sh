#!/bin/sh
# ** AUTO GENERATED **

# 1.1.7 - Ensure separate partition exists for /var/tmp (Scored)

mount | grep /var/tmp || exit $?
