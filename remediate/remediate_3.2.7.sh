#!/bin/sh
# ** AUTO GENERATED **

# 3.2.7 - Ensure Reverse Path Filtering is enabled (Scored)

echo net.ipv4.conf.all.rp_filter = 1>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.all.rp_filter=1
sysctl -w net.ipv4.route.flush=1

echo net.ipv4.conf.default.rp_filter = 1>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.default.rp_filter=1
sysctl -w net.ipv4.route.flush=1


