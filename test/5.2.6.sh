#!/bin/sh

# 5.2.6 Ensure SSH IgnoreRhosts is enabled (Scored)

grep "^IgnoreRhosts" /etc/ssh/sshd_config | grep -q "IgnoreRhosts yes" || exit $?
