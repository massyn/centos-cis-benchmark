#!/bin/sh
# ** AUTO GENERATED **

# 1.5.1 - Ensure core dumps are restricted (Scored)

sysctl fs.suid_dumpable | grep -E "fs.suid_dumpable = 0" || exit $?

grep "fs.suid_dumpable" /etc/sysctl.conf | grep -E "fs.suid_dumpable = 0" || exit $?

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "fs.suid_dumpable" /etc/sysctl.d/* | grep -E "fs.suid_dumpable = 0" || exit $?
fi


