#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.1 - Ensure SELinux is not disabled in bootloader configuration (Scored)

echo 'GRUB_CMDLINE_LINUX_DEFAULT="quiet"' >> /etc/default/grub
echo 'GRUB_CMDLINE_LINUX=""' >> /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
