#!/bin/sh
# ** AUTO GENERATED **

# 3.2.8 - Ensure TCP SYN Cookies is enabled (Scored)

echo net.ipv4.tcp_syncookies = 1>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.tcp_syncookies=1
sysctl -w net.ipv4.route.flush=1


