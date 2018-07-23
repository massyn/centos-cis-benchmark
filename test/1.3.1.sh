#!/bin/sh
# ** AUTO GENERATED **

# 1.3.1 - Ensure AIDE is installed (Scored)

rpm -q aide |grep -E "aide-" || exit $?
