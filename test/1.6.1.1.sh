#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.1 - Ensure SELinux is not disabled in bootloader configuration (Scored)

out=$(grep "^\s*kernel" /boot/grub2/grub.cfg | grep -E "selinux=0|enforcing=0")
[[ -z "${out}" ]] || exit 1
