#!/bin/sh
# ** AUTO GENERATED **

# 5.2.7 - Ensure SSH HostbasedAuthentication is disabled (Scored)

cat /etc/ssh/sshd_config | grep -v HostbasedAuthentication > /etc/ssh/sshd_config.new
echo "HostbasedAuthentication no">>/etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
