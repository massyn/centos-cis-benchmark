#!/bin/sh
# ** AUTO GENERATED **

# 2.2.19 - Ensure tftp server is not enabled (Scored)

systemctl disable tftp.socket
