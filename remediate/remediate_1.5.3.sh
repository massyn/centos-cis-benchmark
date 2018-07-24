#!/bin/sh
# ** AUTO GENERATED **

# 1.5.3 - Ensure address space layout randomization (ASLR) is enabled (Scored)

echo kernel.randomize_va_space = 2>/etc/sysctl.d/CIS.conf
sysctl -w kernel.randomize_va_space=2
sysctl -w net.ipv4.route.flush=1


