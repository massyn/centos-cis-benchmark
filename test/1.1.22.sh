#!/bin/sh

# 1.1.22 Disable Automounting (Scored)

chkconfig --list autofs | grep -E "0:off\s*1:off\s*2:off\s*3:off\s*4:off\s*5:off\s*6:off" || exit $?
