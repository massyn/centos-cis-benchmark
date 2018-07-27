#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.2 - Ensure the SELinux state is enforcing (Scored)

grep SELINUX=enforcing /etc/selinux/config || exit $1

sestatus | grep -E "SELinux status:\s*enabled" || exit $1
sestatus | grep -E "Current mode:\s*enforcing" || exit $1
sestatus | grep -E "Mode from config file:\s*enforcing" || exit $1
