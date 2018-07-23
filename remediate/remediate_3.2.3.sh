#!/bin/sh
# ** AUTO GENERATED **

# 3.2.3 - Ensure secure ICMP redirects are not accepted (Scored)

echo net.ipv4.conf.all.secure_redirects = 0>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.all.secure_redirects=0
sysctl -w net.ipv4.route.flush=1

echo net.ipv4.conf.default.secure_redirects = 0>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.default.secure_redirects=0
sysctl -w net.ipv4.route.flush=1


