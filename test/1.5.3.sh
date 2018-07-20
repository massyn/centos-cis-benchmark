#!/bin/sh

# 1.5.3 Ensure address space layout randomization (ASLR) is enabled (Scored)

sysctl kernel.randomize_va_space | grep -E "kernel.randomize_va_space = 2" && exit $1

grep "kernel\.randomize_va_space" /etc/sysctl.conf | grep -E "kernel.randomize_va_space = 2" || exit $1

if [[ -f /etc/sysctl.d/* ]]; then
        grep "kernel\.randomize_va_space" /etc/sysctl.d/* | grep -E "kernel.randomize_va_space = 2" || exit $1
fi
