#!/bin/sh
# ** AUTO GENERATED **

# 3.2.1 - Ensure source routed packets are not accepted (Scored)

sysctl net.ipv4.conf.all.accept_source_route | grep -E "net.ipv4.conf.all.accept_source_route = 0"
if [[ $? == 0 ]]; then
        exit 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.all.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.accept_source_route = 0" || exit $?
else
        grep "net.ipv4.conf.all.accept_source_route" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.accept_source_route = 0" || exit $?
fi

sysctl net.ipv4.conf.default.accept_source_route | grep -E "net.ipv4.conf.default.accept_source_route = 0"
if [[ $? == 0 ]]; then
        exit 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.default.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.default.accept_source_route = 0" || exit $?
else
        grep "net.ipv4.conf.default.accept_source_route" /etc/sysctl.conf | grep -E "net.ipv4.conf.default.accept_source_route = 0" || exit $?
fi


