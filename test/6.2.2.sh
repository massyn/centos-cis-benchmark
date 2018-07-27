#!/bin/sh
# ** AUTO GENERATED **

# 6.2.2 - Ensure no legacy "+" entries exist in /etc/passwd (Scored)

if [[ -r /etc/passwd ]]; then
   if [[ $(grep '^\+:' /etc/passwd) -eq '' ]] ; then
      exit 0
   else
      exit 1
   fi
else
      exit 1
fi
