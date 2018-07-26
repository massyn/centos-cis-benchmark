#!/bin/sh
# ** AUTO GENERATED **

# 3.5.3 - Ensure RDS is disabled (Not Scored)

modprobe -n -v rds | grep -E "(install /bin/true|FATAL: Module rds not found.)" || exit $?
