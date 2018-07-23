#!/bin/sh
# ** AUTO GENERATED **

# 5.2.3 - Ensure SSH LogLevel is set to INFO (Scored)

cat /etc/ssh/sshd_config | grep -v LogLevel > /etc/ssh/sshd_config.new
echo "LogLevel INFO">>/etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
