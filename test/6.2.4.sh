#!/bin/sh
# ** AUTO GENERATED **

# 6.2.4 - Ensure no legacy "+" entries exist in /etc/group (Scored)

if [[ $(grep '^\+:' /etc/group) -eq '' ]] ; then
   exit 0
else
   exit 1
fi
