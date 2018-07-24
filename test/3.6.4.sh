#!/bin/sh

# 3.6.4 Ensure outbound and established connections are configured (Not Scored)

iptables -L -v -n

exit 1
