#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.5 - Ensure mounting of hfsplus filesystems is disabled (Scored)

echo "install hfsplus /bin/true" >> /etc/modprobe.d/CIS.conf
rmmod hfsplus
