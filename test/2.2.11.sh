#!/bin/sh
# ** AUTO GENERATED **

# 2.2.11 - Ensure IMAP and POP3 server is not enabled (Scored)

systemctl is-enabled dovecot 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
