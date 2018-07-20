#!/bin/sh

# 2.3.5 "Ensure LDAP client is not installed (Scored)"

rpm -q openldap-clients | grep -E "package openldap-clients is not installed" || exit $1
