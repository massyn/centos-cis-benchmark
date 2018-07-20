#!/bin/sh

# 3.1.2 Ensure packet redirect sending is disabled (Scored)

sysctl net.ipv4.conf.all.send_redirects | grep -E "net.ipv4.conf.all.send_redirects = 0" || exit $?

sysctl net.ipv4.conf.default.send_redirects | grep -E "net.ipv4.conf.default.send_redirects = 0" || exit $?

grep "net\.ipv4\.conf\.all\.send_redirects" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.send_redirects = 0" || exit $?
grep "net\.ipv4\.conf\.default\.send_redirects" /etc/sysctl.conf |grep -E "net.ipv4.conf.default.send_redirects = 0" || exit $?

if [[ -f /etc/sysctl.d/* ]]; then
        grep "net\.ipv4\.conf\.all\.send_redirects" /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.send_redirects = 0" || exit $?
    grep "net\.ipv4\.conf\.default\.send_redirects" /etc/sysctl.d/* |grep -E "net.ipv4.conf.default.send_redirects = 0" || exit $?
fi







grep "net\.ipv4\.ip_forward" /etc/sysctl.conf | grep -E "net.ipv4.ip_forward = 0" || exit $?

if [[ -f /etc/sysctl.d/* ]]; then
        grep "net\.ipv4\.ip_forward" /etc/sysctl.d/* | grep -E "net.ipv4.ip_forward = 0" || exit $?
fi
