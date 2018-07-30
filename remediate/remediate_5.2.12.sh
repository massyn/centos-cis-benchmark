#!/bin/sh
# ** AUTO GENERATED **

# 5.2.12 - Ensure SSH Idle Timeout Interval is configured (Scored)

echo "ClientAliveInterval 300" >> /etc/ssh/sshd_config
echo "ClientAliveCountMax 0" >> /etc/ssh/sshd_config
