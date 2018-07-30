#!/bin/sh
# ** AUTO GENERATED **

# 2.2.6 - Ensure LDAP server is not enabled (Scored)

systemctl is-enabled slapd | grep disabled || exit $?
