#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.8 - Ensure mounting of FAT filesystems is disabled (Scored)

echo "install vfat /bin/true" >> /etc/modprobe.d/CIS.conf
rmmod vfat
