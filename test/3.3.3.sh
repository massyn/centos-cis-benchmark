#!/bin/sh

# 3.3.3 Ensure IPv6 is disabled (Not Scored)

grep "^s*kernel" /boot/grub/grub.conf | grep -E "ipv6.disable=1" || exit $?
