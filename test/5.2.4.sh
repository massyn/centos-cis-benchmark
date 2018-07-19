#!/bin/sh

# 5.2.4 Ensure SSH X11 forwarding is disabled (Scored)

grep "^X11Forwarding" /etc/ssh/sshd_config | grep -q "X11Forwarding no" || exit $?
