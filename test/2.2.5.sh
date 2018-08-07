#!/bin/sh
# ** AUTO GENERATED **

# 2.2.5 - Ensure DHCP Server is not enabled (Scored)

systemctl is-enabled dhcpd 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
