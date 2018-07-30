#!/bin/sh
# ** AUTO GENERATED **

# 2.2.14 - Ensure SNMP Server is not enabled (Scored)

systemctl is-enabled snmpd | grep disabled || exit $?
