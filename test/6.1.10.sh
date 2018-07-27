#!/bin/sh
# ** AUTO GENERATED **

# 6.1.10 - Ensure no world writable files exist (Scored)

df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type f -perm -0002 || exit $?
