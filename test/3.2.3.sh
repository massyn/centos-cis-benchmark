#!/bin/sh
# ** AUTO GENERATED **

# 3.2.3 - Ensure secure ICMP redirects are not accepted (Scored)

sysctl net.ipv4.conf.all.secure_redirects | grep -E "net.ipv4.conf.all.secure_redirects = 0"
if [[ $? == 0 ]]; then
        exit 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.all.secure_redirects" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.secure_redirects = 0" || exit $?
else
        grep "net.ipv4.conf.all.secure_redirects" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.secure_redirects = 0" || exit $?
fi

sysctl net.ipv4.conf.default.secure_redirects | grep -E "net.ipv4.conf.default.secure_redirects = 0"
if [[ $? == 0 ]]; then
        exit 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.default.secure_redirects" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.default.secure_redirects = 0" || exit $?
else
        grep "net.ipv4.conf.default.secure_redirects" /etc/sysctl.conf | grep -E "net.ipv4.conf.default.secure_redirects = 0" || exit $?
fi


