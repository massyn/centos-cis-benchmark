#!/bin/sh
# ** AUTO GENERATED **

# 5.2.2 - Ensure SSH Protocol is set to 2 (Scored)

cat /etc/ssh/sshd_config | grep -v Protocol > /etc/ssh/sshd_config.new
echo "Protocol 2">>/etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
