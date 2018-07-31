#!/bin/sh
# ** AUTO GENERATED **

# 4.1.3 - Ensure auditing for processes that start prior to auditd is enabled (Scored)

echo 'GRUB_CMDLINE_LINUX="audit=1"' >> /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
