#!/bin/sh
# ** AUTO GENERATED **

# 3.6.1 - Ensure iptables is installed (Scored)

rpm -q iptables |grep -E "iptables-" || exit $?
