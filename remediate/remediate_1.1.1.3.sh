#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.3 - Ensure mounting of jffs2 filesystems is disabled (Scored)

echo "install jffs2 /bin/true" >> /etc/modprobe.d/CIS.conf
rmmod jffs2
