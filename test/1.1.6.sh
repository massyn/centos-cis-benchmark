#!/bin/sh
# ** AUTO GENERATED **

# 1.1.6 - Ensure separate partition exists for /var (Scored)

mount | grep /var || exit $?
