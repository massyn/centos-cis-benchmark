#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.6 - Ensure mounting of squashfs filesystems is disabled (Scored)

echo "install squashfs /bin/true" >> /etc/modprobe.d/CIS.conf
rmmod squashfs
