#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.3 - Ensure SELinux policy is configured (Scored)

grep SELINUXTYPE=targeted /etc/selinux/config || exit $1

sestatus | grep -E "Policy from config file:\s*targeted" || exit $1
