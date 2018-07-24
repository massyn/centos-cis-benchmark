#!/bin/sh

# 4.2.1.5 - Ensure remote rsyslog messages are only accepted on designated log hosts. (Not Scored)

grep '$ModLoad imtcp' /etc/rsyslog.conf /etc/rsyslog.d/*.conf | grep '$ModLoad imtcp' || exit 1
grep '$InputTCPServerRun' /etc/rsyslog.conf /etc/rsyslog.d/*.conf | grep '$InputTCPServerRun 514' || exit 1
