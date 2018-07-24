#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.3 - Ensure syslog-ng default file permissions configured (Scored)

if [[ ! -d /etc/syslog-ng ]]; then
        mkdir /etc/syslog-ng
fi
echo "options { chain_hostnames(off); flush_lines(0); perm(0640); stats_freq(3600); threaded(yes); };" >> /etc/syslog-ng/syslog-ng.conf
