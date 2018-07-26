#!/bin/sh
# ** AUTO GENERATED **

# 3.2.8 - Ensure TCP SYN Cookies is enabled (Scored)

sysctl net.ipv4.tcp_syncookies | grep -E "net.ipv4.tcp_syncookies = 1"
if [[ $? == 0 ]]; then
        exit 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.tcp_syncookies" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.tcp_syncookies = 1" || exit $?
else
        grep "net.ipv4.tcp_syncookies" /etc/sysctl.conf | grep -E "net.ipv4.tcp_syncookies = 1" || exit $?
fi


