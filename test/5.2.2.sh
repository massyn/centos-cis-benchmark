#!/bin/sh

# 5.2.3 Ensure SSH LogLevel is set to INFO (Scored)

grep "^LogLevel" /etc/ssh/sshd_config | grep -q "LogLevel INFO" || exit $?
