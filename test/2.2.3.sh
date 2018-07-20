#!/bin/sh

# 2.2.3 Ensure Avahi Server is not enabled (Scored)

chkconfig --list avahi-daemon 2>&1 | grep -E "0:off\s*1:off\s*2:off\s*3:off\s*4:off\s*5:off\s*6:off|error reading" || exit $?
