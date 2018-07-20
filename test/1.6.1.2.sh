#!/bin/sh

# 1.6.1.2 Ensure the SELinux state is enforcing (Scored)

grep SELINUX=enforcing /etc/selinux/config || exit $1

sestatus | grep -E "SELinux status: enabled" || exit $1
sestatus | grep -E "Current mode: enforcing" || exit $1
sestatus | grep -E "Mode from config file: enforcing" || exit $1
