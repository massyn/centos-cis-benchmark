#!/bin/sh
# ** AUTO GENERATED **

# 3.2.6 - Ensure bogus ICMP responses are ignored (Scored)

sysctl net.ipv4.icmp_ignore_bogus_error_responses | grep -E "net.ipv4.icmp_ignore_bogus_error_responses = 1"
if [[ $? == 0 ]]; then
        exit 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.icmp_ignore_bogus_error_responses" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.icmp_ignore_bogus_error_responses = 1" || exit $?
else
        grep "net.ipv4.icmp_ignore_bogus_error_responses" /etc/sysctl.conf | grep -E "net.ipv4.icmp_ignore_bogus_error_responses = 1" || exit $?
fi


