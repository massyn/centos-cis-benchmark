#!/bin/sh
# ** AUTO GENERATED **

# 3.3.1 - Ensure IPv6 router advertisements are not accepted (Not Scored)

echo net.ipv6.conf.all.accept_ra = 0>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv6.conf.all.accept_ra=0
sysctl -w net.ipv4.route.flush=1

echo net.ipv6.conf.default.accept_ra = 0>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv6.conf.default.accept_ra=0
sysctl -w net.ipv4.route.flush=1


