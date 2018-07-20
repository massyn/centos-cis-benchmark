#!/bin/sh

# 4.1.3 Ensure auditing for processes that start prior to auditd is enabled (Scored)

grep_grub="$(grep "^[[:space:]]*linux" /boot/grub/grub.conf | grep -v 'audit=1')"
[[ -z "${grep_grub}" ]] || exit 1
