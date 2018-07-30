#!/bin/sh
# ** AUTO GENERATED **

# 2.2.16 - Ensure NIS Server is not enabled (Scored)

systemctl is-enabled ypserv | grep disabled || exit $?
