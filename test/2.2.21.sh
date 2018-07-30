#!/bin/sh
# ** AUTO GENERATED **

# 2.2.21 - Ensure talk server is not enabled (Scored)

systemctl is-enabled ntalk | grep disabled || exit $?
