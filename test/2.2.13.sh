#!/bin/sh
# ** AUTO GENERATED **

# 2.2.13 - Ensure HTTP Proxy Server is not enabled (Scored)

systemctl is-enabled squid 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
