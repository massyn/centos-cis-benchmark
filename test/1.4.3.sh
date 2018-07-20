#!/bin/sh

# 1.4.3 Ensure authentication required for single user mode (Scored)

grep ^SINGLE=/sbin/sulogin /etc/sysconfig/init || exit $1
