#!/bin/sh
# ** AUTO GENERATED **

# 3.3.3 - Ensure IPv6 is disabled (Not Scored)

echo 'GRUB_CMDLINE_LINUX="ipv6.disable=1"' >> /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
