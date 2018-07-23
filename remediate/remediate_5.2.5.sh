#!/bin/sh
# ** AUTO GENERATED **

# 5.2.5 - Ensure SSH MaxAuthTries is set to 4 or less (Scored)

cat /etc/ssh/sshd_config | grep -v MaxAuthTries > /etc/ssh/sshd_config.new
echo "MaxAuthTries 4">>/etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
