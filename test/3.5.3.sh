#!/bin/sh

# 3.5.3 Ensure RDS is disabled (Not Scored)

modprobe -n -v rds | grep -E "install /bin/true" || exit $?