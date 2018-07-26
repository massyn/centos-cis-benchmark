#!/bin/sh
# ** AUTO GENERATED **

# 3.1.2 - Ensure packet redirect sending is disabled (Scored)

sysctl net.ipv4.conf.all.send_redirects | grep -E "net.ipv4.conf.all.send_redirects = 0"
if [[ $? == 0 ]]; then
        exit 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.all.send_redirects" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.send_redirects = 0" || exit $?
else
        grep "net.ipv4.conf.all.send_redirects" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.send_redirects = 0" || exit $?
fi

sysctl net.ipv4.conf.default.send_redirects | grep -E "net.ipv4.conf.default.send_redirects = 0"
if [[ $? == 0 ]]; then
        exit 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.default.send_redirects" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.default.send_redirects = 0" || exit $?
else
        grep "net.ipv4.conf.default.send_redirects" /etc/sysctl.conf | grep -E "net.ipv4.conf.default.send_redirects = 0" || exit $?
fi


