#!/bin/sh
# ** AUTO GENERATED **

# 5.2.10 - Ensure SSH PermitUserEnvironment is disabled (Scored)

cat /etc/ssh/sshd_config | grep -v PermitUserEnvironment > /etc/ssh/sshd_config.new
echo "PermitUserEnvironment no">>/etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
