#!/bin/sh
# ** AUTO GENERATED **

# 3.3.3 - Ensure IPv6 is disabled (Not Scored)

grep "^\s*linux" /boot/grub2/grub.cfg | grep -E "ipv6.disable\s*=\s*1" || exit $?
