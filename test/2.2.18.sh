#!/bin/sh
# ** AUTO GENERATED **

# 2.2.18 - Ensure telnet server is not enabled (Scored)

systemctl is-enabled telnet.socket | grep disabled || exit $?
