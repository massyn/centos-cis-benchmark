#!/bin/sh
# ** AUTO GENERATED **

# 2.2.8 - Ensure DNS Server is not enabled (Scored)

systemctl is-enabled named | grep disabled || exit $?
