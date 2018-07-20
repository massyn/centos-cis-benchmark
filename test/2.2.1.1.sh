#!/bin/sh

# 2.2.1.1 Ensure time synchronization is in use (Not Scored)

rpm -q ntp | grep -E "^ntp-"
ntp=$?
rpm -q chrony | grep -E "^chrony-"
chrony=$?

if [[ $chrony -eq 1 && $ntp -eq 1 ]]; then
        exit 1
fi
