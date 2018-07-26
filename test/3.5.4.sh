#!/bin/sh
# ** AUTO GENERATED **

# 3.5.4 - Ensure TIPC is disabled (Not Scored)

modprobe -n -v tipc | grep -E "(install /bin/true|FATAL: Module tipc not found.)" || exit $?
