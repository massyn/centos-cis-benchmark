#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.1 - Ensure mounting of cramfs filesystems is disabled (Scored)

echo "install cramfs /bin/true" >> /etc/modprobe.d/CIS.conf
rmmod cramfs
