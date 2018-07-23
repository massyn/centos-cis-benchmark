#!/bin/sh
# ** AUTO GENERATED **

# 3.2.6 - Ensure bogus ICMP responses are ignored (Scored)

echo net.ipv4.icmp_ignore_bogus_error_responses = 1>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1
sysctl -w net.ipv4.route.flush=1


