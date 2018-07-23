#!/bin/sh
# ** AUTO GENERATED **

# 3.3.1 - Ensure IPv6 router advertisements are not accepted (Not Scored)

sysctl net.ipv6.conf.all.accept_ra | grep -E "net.ipv6.conf.all.accept_ra = 0" || exit $?

grep "net.ipv6.conf.all.accept_ra" /etc/sysctl.conf | grep -E "net.ipv6.conf.all.accept_ra = 0" || exit $?

if [[ -f /etc/sysctl.d/* ]]; then
        grep "net.ipv6.conf.all.accept_ra" /etc/sysctl.d/* | grep -E "net.ipv6.conf.all.accept_ra = 0" || exit $?
fi

sysctl net.ipv6.conf.default.accept_ra | grep -E "net.ipv6.conf.default.accept_ra = 0" || exit $?

grep "net.ipv6.conf.default.accept_ra" /etc/sysctl.conf | grep -E "net.ipv6.conf.default.accept_ra = 0" || exit $?

if [[ -f /etc/sysctl.d/* ]]; then
        grep "net.ipv6.conf.default.accept_ra" /etc/sysctl.d/* | grep -E "net.ipv6.conf.default.accept_ra = 0" || exit $?
fi
