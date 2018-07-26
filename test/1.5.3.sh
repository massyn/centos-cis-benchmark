#!/bin/sh
# ** AUTO GENERATED **

# 1.5.3 - Ensure address space layout randomization (ASLR) is enabled (Scored)

sysctl kernel.randomize_va_space | grep -E "kernel.randomize_va_space = 2"
if [[ $? == 0 ]]; then
        exit 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "kernel.randomize_va_space" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "kernel.randomize_va_space = 2" || exit $?
else
        grep "kernel.randomize_va_space" /etc/sysctl.conf | grep -E "kernel.randomize_va_space = 2" || exit $?
fi


