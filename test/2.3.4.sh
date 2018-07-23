#!/bin/sh
# ** AUTO GENERATED **

# 2.3.4 - Ensure telnet client is not installed (Scored)

rpm -q telnet | grep -E "package telnet is not installed" || exit $1
