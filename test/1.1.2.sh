#!/bin/sh
# ** AUTO GENERATED **

# 1.1.2 - Ensure separate partition exists for /tmp (Scored)

mount | grep /tmp || exit $?
