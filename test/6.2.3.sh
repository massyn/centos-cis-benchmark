#!/bin/sh
# ** AUTO GENERATED **

# 6.2.3 - Ensure no legacy "+" entries exist in /etc/shadow (Scored)

if [[ -r /etc/shadow ]]; then
   if [[ $(grep '^\+:' /etc/shadow) -eq '' ]] ; then
      exit 0
   else
      exit 1
   fi
else
   exit 1
fi
