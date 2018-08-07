#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.2 - Ensure mounting of freevxfs filesystems is disabled (Scored)

echo "install freevxfs /bin/true" >> /etc/modprobe.d/CIS.conf
rmmod freevxfs
