#!/bin/sh
# ** AUTO GENERATED **

# 2.2.6 - Ensure LDAP server is not enabled (Scored)

systemctl is-enabled slapd 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
