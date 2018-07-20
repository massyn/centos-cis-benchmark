#!/bin/sh

# 1.6.2 Ensure SELinux is installed (Scored)

rpm -q libselinux |grep -E "libselinux-" || exit $?
