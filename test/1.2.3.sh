#!/bin/sh
# ** AUTO GENERATED **

# 1.2.3 - Ensure gpgcheck is globally activated (Scored)

if [[ $(ls -A /etc/yum.repos.d/) ]] ; then
        grep ^gpgcheck /etc/yum.conf /etc/yum.repos.d/* | grep -E "gpgcheck=1" || exit $?
else
        grep ^gpgcheck /etc/yum.conf | grep -E "gpgcheck=1" || exit $?
fi
