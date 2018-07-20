#!/bin/sh

# 1.6.1.3 Ensure SELinux policy is configured (Scored)

grep SELINUXTYPE=targeted /etc/selinux/config || exit $1

sestatus | grep -E "Policy from config file: targeted" || exit $1
