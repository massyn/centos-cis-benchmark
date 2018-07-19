#!/bin/sh

# 5.2.1 Ensure permissions on /etc/ssh/sshd_config are configured (Scored)

stat -L -c "%a %u %g" /etc/ssh/sshd_config | grep "600 0 0$" || exit $?
