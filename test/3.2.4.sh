#!/bin/sh
# ** AUTO GENERATED **

# 3.2.4 - Ensure suspicious packets are logged (Scored)

sysctl net.ipv4.conf.all.log_martians | grep -E "net.ipv4.conf.all.log_martians = 1" || exit $?

grep "net.ipv4.conf.all.log_martians" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.log_martians = 1" || exit $?

if [[ -f /etc/sysctl.d/* ]]; then
        grep "net.ipv4.conf.all.log_martians" /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.log_martians = 1" || exit $?
fi

sysctl net.ipv4.conf.default.log_martians | grep -E "net.ipv4.conf.default.log_martians = 1" || exit $?

grep "net.ipv4.conf.default.log_martians" /etc/sysctl.conf | grep -E "net.ipv4.conf.default.log_martians = 1" || exit $?

if [[ -f /etc/sysctl.d/* ]]; then
        grep "net.ipv4.conf.default.log_martians" /etc/sysctl.d/* | grep -E "net.ipv4.conf.default.log_martians = 1" || exit $?
fi


