#!/bin/sh
# ** AUTO GENERATED **

# 2.2.7 - Ensure NFS and RPC are not enabled (Scored)

variable="nfs|nfs-server|rpcbind"
for i in $(echo $variable | sed "s/|/ /g")
do
    systemctl is-enabled $i 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
done
