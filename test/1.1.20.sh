#!/bin/sh
# ** AUTO GENERATED **

# 1.1.20 - Ensure noexec option set on removable media partitions (Not Scored)

MEDIA=$(mount -l -t vfat,iso9660,ext)

if [[ -z $MEDIA ]]; then
        exit 0
else
        echo $MEDIA | grep "noexec" || exit $?
fi
