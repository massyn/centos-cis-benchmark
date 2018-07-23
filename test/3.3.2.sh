#!/bin/sh
# ** AUTO GENERATED **

# 3.3.2 - Ensure IPv6 redirects are not accepted (Not Scored)

sysctl net.ipv6.conf.all.accept_redirects | grep -E "net.ipv6.conf.all.accept_redirects = 0" || exit $?

grep "net.ipv6.conf.all.accept_redirects" /etc/sysctl.conf | grep -E "net.ipv6.conf.all.accept_redirects = 0" || exit $?

if [[ -f /etc/sysctl.d/* ]]; then
        grep "net.ipv6.conf.all.accept_redirects" /etc/sysctl.d/* | grep -E "net.ipv6.conf.all.accept_redirects = 0" || exit $?
fi

sysctl net.ipv6.conf.default.accept_redirects | grep -E "net.ipv6.conf.default.accept_redirects = 0" || exit $?

grep "net.ipv6.conf.default.accept_redirects" /etc/sysctl.conf | grep -E "net.ipv6.conf.default.accept_redirects = 0" || exit $?

if [[ -f /etc/sysctl.d/* ]]; then
        grep "net.ipv6.conf.default.accept_redirects" /etc/sysctl.d/* | grep -E "net.ipv6.conf.default.accept_redirects = 0" || exit $?
fi


