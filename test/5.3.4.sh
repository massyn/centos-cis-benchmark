#!/bin/sh
# ** AUTO GENERATED **

# 5.3.4 - Ensure password hashing algorithm is SHA-512 (Scored)

egrep '^password\s+sufficient\s+pam_unix.so' /etc/pam.d/password-auth | grep sha512 || exit $?

egrep '^password\s+sufficient\s+pam_unix.so' /etc/pam.d/system-auth | grep sha512 || exit $?
