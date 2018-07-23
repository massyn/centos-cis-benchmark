#!/bin/sh
# ** AUTO GENERATED **

# 3.2.5 - Ensure broadcast ICMP requests are ignored (Scored)

echo net.ipv4.icmp_echo_ignore_broadcasts = 1>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1
sysctl -w net.ipv4.route.flush=1


