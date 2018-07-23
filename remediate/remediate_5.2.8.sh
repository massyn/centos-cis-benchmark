#!/bin/sh
# ** AUTO GENERATED **

# 5.2.8 - Ensure SSH root login is disabled (Scored)

cat /etc/ssh/sshd_config | grep -v PermitRootLogin > /etc/ssh/sshd_config.new
echo "PermitRootLogin no">>/etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
