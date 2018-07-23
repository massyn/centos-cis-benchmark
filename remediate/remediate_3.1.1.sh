#!/bin/sh
# ** AUTO GENERATED **

# 3.1.1 - Ensure IP forwarding is disabled (Scored)

echo net.ipv4.ip_forward = 0>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.ip_forward=0
sysctl -w net.ipv4.route.flush=1


