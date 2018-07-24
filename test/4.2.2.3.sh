#!/bin/sh

# 4.2.2.3 Ensure syslog-ng default file permissions configured (Scored)

perm=$(grep ^options /etc/syslog-ng/syslog-ng.conf | sed "s/^.* perm\(([0-9]*)\).*$/\1/" | sed "s/[^0-9]//g")

[[ "$perm" =~ 0[0-6][0-4]0$ ]] || exit;

echo perm is $perm

exit 0

# remediate

if [[ ! -d /etc/syslog-ng ]]; then
        mkdir /etc/syslog-ng
fi
echo "options { chain_hostnames(off); flush_lines(0); perm(0640); stats_freq(3600); threaded(yes); };" >> /etc/syslog-ng/syslog-ng.conf
