#!/bin/sh
# ** AUTO GENERATED **

# 3.3.3 - Ensure IPv6 is disabled (Not Scored)

grep "^\s*kernel" /boot/grub/grub.conf | grep -E "ipv6.disable\s*=\s*1" || exit $?
