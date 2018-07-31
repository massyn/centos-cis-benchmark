#!/bin/sh
# ** AUTO GENERATED **

# 1.5.1 - Ensure core dumps are restricted (Scored)

echo "hard core 0" >> /etc/security/limits.d/CIS.conf
echo "fs.suid_dumpable = 0" >> /etc/sysctl.d/CIS.conf
sysctl -w fs.suid_dumpable=0
