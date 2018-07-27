#!/bin/sh
# ** AUTO GENERATED **

# 6.1.12 - Ensure no ungrouped files or directories exist (Scored)

df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -nogroup || exit $?
