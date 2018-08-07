#!/bin/sh
# ** AUTO GENERATED **

# 2.2.9 - Ensure FTP Server is not enabled (Scored)

systemctl is-enabled vsftpd 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
