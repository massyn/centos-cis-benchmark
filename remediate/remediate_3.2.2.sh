#!/bin/sh
# ** AUTO GENERATED **

# 3.2.2 - Ensure ICMP redirects are not accepted (Scored)

echo net.ipv4.conf.all.accept_redirects = 0>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.all.accept_redirects=0
sysctl -w net.ipv4.route.flush=1

echo net.ipv4.conf.default.accept_redirects = 0>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.default.accept_redirects=0
sysctl -w net.ipv4.route.flush=1


