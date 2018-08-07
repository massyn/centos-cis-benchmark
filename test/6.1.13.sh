#!/bin/sh
# ** AUTO GENERATED **

# 6.1.13 - Audit SUID executables (Not Scored)

df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type f -perm -4000 || exit $?
