#!/bin/sh
# ** AUTO GENERATED **

# 3.2.4 - Ensure suspicious packets are logged (Scored)

sysctl net.ipv4.conf.all.log_martians | grep -E "net.ipv4.conf.all.log_martians = 1"
if [[ $? == 0 ]]; then
        exit 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.all.log_martians" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.log_martians = 1" || exit $?
else
        grep "net.ipv4.conf.all.log_martians" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.log_martians = 1" || exit $?
fi

sysctl net.ipv4.conf.default.log_martians | grep -E "net.ipv4.conf.default.log_martians = 1"
if [[ $? == 0 ]]; then
        exit 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.default.log_martians" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.default.log_martians = 1" || exit $?
else
        grep "net.ipv4.conf.default.log_martians" /etc/sysctl.conf | grep -E "net.ipv4.conf.default.log_martians = 1" || exit $?
fi


