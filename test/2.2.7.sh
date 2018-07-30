#!/bin/sh
# ** AUTO GENERATED **

# 2.2.7 - Ensure NFS and RPC are not enabled (Scored)

out=$(chkconfig --list | grep -E "^(nfs|nfs-server|rpcbind)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

