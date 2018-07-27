#!/bin/sh
# ** AUTO GENERATED **

# 1.4.2 - Ensure bootloader password is set (Scored)

grep "^password" /boot/grub/grub.conf || exit $?
