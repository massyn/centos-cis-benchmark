#!/bin/sh
# ** AUTO GENERATED **

# 5.4.5 - Ensure default user shell timeout is 900 seconds or less (Scored)

echo export TMOUT=600>>/etc/bashrc
echo export TMOUT=600>>/etc/profile
