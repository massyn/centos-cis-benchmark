#!/bin/sh
# ** AUTO GENERATED **

# 2.2.12 - Ensure Samba is not enabled (Scored)

systemctl is-enabled smb 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
