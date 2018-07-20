#!/bin/sh

# 2.2.7 Ensure NFS and RPC are not enabled (Scored)

chkconfig --list nfs 2>&1 | grep -E "0:off\s*1:off\s*2:off\s*3:off\s*4:off\s*5:off\s*6:off|error reading" || exit $?

chkconfig --list rpcbind 2>&1 | grep -E "0:off\s*1:off\s*2:off\s*3:off\s*4:off\s*5:off\s*6:off|error reading" || exit $?
