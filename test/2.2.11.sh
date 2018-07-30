#!/bin/sh
# ** AUTO GENERATED **

# 2.2.11 - Ensure IMAP and POP3 server is not enabled (Scored)

systemctl is-enabled dovecot | grep disabled || exit $?
