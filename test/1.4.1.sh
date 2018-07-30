#!/bin/sh
# ** AUTO GENERATED **

# 1.4.1 - Ensure permissions on bootloader config are configured (Scored)

stat -L -c "%a %u %g" /boot/grub2/grub.cfg | grep -q "600 0 0$" || exit $?
