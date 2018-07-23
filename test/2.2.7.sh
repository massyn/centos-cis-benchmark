#!/bin/sh
# ** AUTO GENERATED **

# 2.2.7 - Ensure NFS and RPC are not enabled (Scored)

out=$(chkconfig --list | grep -E "^(nfs|rpcbind)\s")
[[ -z "${out}" ]] || exit 1

out=$(chkconfig --list | grep -E "^(nfs|rpcbind)\s" |grep ":on")
[[ -z "${out}" ]] || exit 1

