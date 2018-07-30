#!/bin/sh
# ** AUTO GENERATED **

# 2.1.7 - Ensure xinetd is not enabled (Scored)

systemctl is-enabled xinetd | grep disabled || exit $?
