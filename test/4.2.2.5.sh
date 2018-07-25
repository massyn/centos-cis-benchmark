#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.5 - Ensure remote syslog-ng messages are only accepted on designated log hosts (Not Scored)

grep "source net{ tcp(); };" /etc/syslog-ng/syslog-ng.conf || exit 1
grep "destination remote { file\(\"/var/log/remote/${FULLHOST}-log\"\); };" /etc/syslog-ng/syslog-ng.conf || exit 1
grep "log { source(net); destination(remote); };" /etc/syslog-ng/syslog-ng.conf || exit 1
