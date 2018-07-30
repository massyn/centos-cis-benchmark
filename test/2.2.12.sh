#!/bin/sh
# ** AUTO GENERATED **

# 2.2.12 - Ensure Samba is not enabled (Scored)

systemctl is-enabled smb | grep disabled || exit $?
