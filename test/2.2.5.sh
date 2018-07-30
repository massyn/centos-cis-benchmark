#!/bin/sh
# ** AUTO GENERATED **

# 2.2.5 - Ensure DHCP Server is not enabled (Scored)

systemctl is-enabled dhcpd | grep disabled || exit $?
