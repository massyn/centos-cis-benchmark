#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.7 - Ensure mounting of udf filesystems is disabled (Scored)

echo "install udf /bin/true" >> /etc/modprobe.d/CIS.conf
rmmod udf
