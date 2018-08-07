#!/bin/sh
# ** AUTO GENERATED **

# 5.1.8 - Ensure at/cron is restricted to authorized users (Scored)

rm /etc/cron.deny
rm /etc/at.deny
touch /etc/cron.allow
chown root:root /etc/cron.allow
chmod 600 /etc/cron.allow
chown root:root /etc/at.allow
touch /etc/at.allow
chmod 600 /etc/at.allow
