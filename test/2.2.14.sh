#!/bin/sh
# ** AUTO GENERATED **

# 2.2.14 - Ensure SNMP Server is not enabled (Scored)

systemctl is-enabled snmpd 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
