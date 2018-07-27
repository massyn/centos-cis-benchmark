#!/bin/sh
# ** AUTO GENERATED **

# 2.2.1.1 - Ensure time synchronization is in use (Not Scored)

rpm -q ntp | grep -E "^ntp-"
app1=$?
rpm -q chrony | grep -E "^chrony-"
app2=$?

if [[ $app1 -eq 1 && $app2 -eq 1 ]]; then
        exit 1
fi
