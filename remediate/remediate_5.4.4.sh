#!/bin/sh
# ** AUTO GENERATED **

# 5.4.4 - Ensure default user umask is 027 or more restrictive (Scored)

echo umask 027 >> /etc/bashrc
echo umask 027 >> /etc/profile
