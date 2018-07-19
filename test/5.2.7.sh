#!/bin/sh

# 5.2.7 Ensure SSH HostbasedAuthentication is disabled (Scored)

grep "^HostbasedAuthentication" /etc/ssh/sshd_config | grep -q "HostbasedAuthentication no" || exit $?
