#!/bin/sh

# 2.2.1.2 Ensure ntp is configured (Scored)

grep "^restrict -6 default kod nomodify notrap nopeer noquery" /etc/ntp.conf || exit $1

grep "^(server|pool)" /etc/ntp.conf || exit $1
