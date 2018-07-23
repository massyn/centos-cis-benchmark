#!/bin/sh
# ** AUTO GENERATED **

# 3.4.1 - Ensure TCP Wrappers is installed (Scored)

rpm -q tcp_wrappers |grep -E "tcp_wrappers-" || exit $?
rpm -q tcp_wrappers-libs |grep -E "tcp_wrappers-libs-" || exit $?
