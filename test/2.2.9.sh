#!/bin/sh
# ** AUTO GENERATED **

# 2.2.9 - Ensure FTP Server is not enabled (Scored)

systemctl is-enabled vsftpd | grep disabled || exit $?
