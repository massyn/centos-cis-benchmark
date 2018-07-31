#!/bin/sh
# ** AUTO GENERATED **

# 2.2.10 - Ensure HTTP server is not enabled (Scored)

systemctl is-enabled httpd 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
