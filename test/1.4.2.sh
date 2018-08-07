#!/bin/sh
# ** AUTO GENERATED **

# 1.4.2 - Ensure bootloader password is set (Scored)

grep "^GRUB2_PASSWORD" /boot/grub2/grub.cfg || exit $?
