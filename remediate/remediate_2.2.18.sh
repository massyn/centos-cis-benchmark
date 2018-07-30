#!/bin/sh
# ** AUTO GENERATED **

# 2.2.18 - Ensure telnet server is not enabled (Scored)

systemctl disable telnet.socket
