#!/bin/sh
# ** AUTO GENERATED **

# 3.2.1 - Ensure source routed packets are not accepted (Scored)

echo net.ipv4.conf.all.accept_source_route = 0>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.all.accept_source_route=0
sysctl -w net.ipv4.route.flush=1

echo net.ipv4.conf.default.accept_source_route = 0>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.default.accept_source_route=0
sysctl -w net.ipv4.route.flush=1


