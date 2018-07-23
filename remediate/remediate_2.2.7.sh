#!/bin/sh
# ** AUTO GENERATED **

# 2.2.7 - Ensure NFS and RPC are not enabled (Scored)

variable="nfs|rpcbind"
for i in $(echo $variable | sed "s/|/ /g")
do
    chkconfig $i off
done
