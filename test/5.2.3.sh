#!/bin/sh
# ** AUTO GENERATED **

# 5.2.3 - Ensure SSH LogLevel is set to INFO (Scored)

grep "^\s*LogLevel" /etc/ssh/sshd_config | grep -q "LogLevel\s*INFO" || exit $?
