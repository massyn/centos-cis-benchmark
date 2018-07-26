#!/bin/sh
# ** AUTO GENERATED **

# 3.5.2 - Ensure SCTP is disabled (Not Scored)

modprobe -n -v sctp | grep -E "(install /bin/true|FATAL: Module sctp not found.)" || exit $?
