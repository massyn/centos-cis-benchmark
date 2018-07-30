#!/bin/sh
# ** AUTO GENERATED **

# 2.2.20 - Ensure rsync service is not enabled (Scored)

systemctl is-enabled rsync | grep disabled || exit $?
