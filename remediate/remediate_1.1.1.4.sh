#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.4 - Ensure mounting of hfs filesystems is disabled (Scored)

echo "install hfs /bin/true" >> /etc/modprobe.d/CIS.conf
rmmod hfs
