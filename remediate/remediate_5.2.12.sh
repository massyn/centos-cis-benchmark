#!/bin/sh
# ** AUTO GENERATED **

# 5.2.12 - Ensure SSH Idle Timeout Interval is configured (Scored)

cat /etc/ssh/sshd_config | grep -v "ClientAliveInternal"| grep -v "ClientAliveCountMax" > /etc/ssh/sshd_config.new
mv /etc/ssh/sshd_config.new /etc/ssh/sshd_config
echo "ClientAliveInterval 300" >> /etc/ssh/sshd_config
echo "ClientAliveCountMax 0" >> /etc/ssh/sshd_config
