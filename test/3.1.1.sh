#!/bin/sh
# ** AUTO GENERATED **

# 3.1.1 - Ensure IP forwarding is disabled (Scored)

sysctl net.ipv4.ip_forward | grep -E "net.ipv4.ip_forward = 0" || exit $?

grep "net.ipv4.ip_forward" /etc/sysctl.conf | grep -E "net.ipv4.ip_forward = 0" || exit $?

if [[ -f /etc/sysctl.d/* ]]; then
        grep "net.ipv4.ip_forward" /etc/sysctl.d/* | grep -E "net.ipv4.ip_forward = 0" || exit $?
fi


