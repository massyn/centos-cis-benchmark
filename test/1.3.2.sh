#!/bin/sh

# 1.3.2 Ensure filesystem integrity is regularly checked (Scored)

crontab -u root -l | grep aide
if [[ $? -ne 0 ]]; then
        grep -r aide /etc/cron.* /etc/crontab || exit $?
fi
