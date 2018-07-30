#!/bin/sh
# ** AUTO GENERATED **

# 2.2.3 - Ensure Avahi Server is not enabled (Scored)

systemctl is-enabled avahi-daemon | grep disabled || exit $?
