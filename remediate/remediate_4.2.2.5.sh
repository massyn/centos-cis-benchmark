#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.5 - Ensure remote syslog-ng messages are only accepted on designated log hosts (Not Scored)

echo 'source net{ tcp(); };' >> /etc/syslog-ng/syslog-ng.conf
echo 'destination remote { file("/var/log/remote/${FULLHOST}-log"); };' >> /etc/syslog-ng/syslog-ng.conf
echo 'log { source(net); destination(remote); };' >> /etc/syslog-ng/syslog-ng.conf

