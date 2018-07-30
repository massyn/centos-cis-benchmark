#!/bin/sh
# ** AUTO GENERATED **

# 2.2.4 - Ensure CUPS is not enabled (Scored)

systemctl is-enabled cups | grep disabled || exit $?
