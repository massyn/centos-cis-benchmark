#!/bin/sh

# 3.5.4 - Ensure TIPC is disabled (Not Scored)

modprobe -n -v tipc | grep -E "install /bin/true" || exit $?
[[ -z "$(lsmod | grep tipc)" ]] || exit 1
