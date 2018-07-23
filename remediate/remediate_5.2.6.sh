#!/bin/sh
# ** AUTO GENERATED **

# 5.2.6 - Ensure SSH IgnoreRhosts is enabled (Scored)

cat /etc/ssh/sshd_config | grep -v IgnoreRhosts > /etc/ssh/sshd_config.new
echo "IgnoreRhosts yes">>/etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
