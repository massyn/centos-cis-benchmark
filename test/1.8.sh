#!/bin/sh
# ** AUTO GENERATED **

# 1.8 - Ensure updates, patches, and additional security software are installed (Scored)

yum check-update --security 2>&1 | grep "No packages needed for security" || exit $?
