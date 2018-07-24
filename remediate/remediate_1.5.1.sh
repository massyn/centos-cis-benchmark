#!/bin/sh
# ** AUTO GENERATED **

# 1.5.1 - Ensure core dumps are restricted (Scored)

echo fs.suid_dumpable = 0>/etc/sysctl.d/CIS.conf
sysctl -w fs.suid_dumpable=0
sysctl -w net.ipv4.route.flush=1


