#!/bin/sh
# ** AUTO GENERATED **

# 1.4.4 - Ensure interactive boot is not enabled (Scored)

grep ^PROMPT=no /etc/sysconfig/init || exit $1
