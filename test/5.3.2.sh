#!/bin/sh
# ** AUTO GENERATED **

# 5.3.2 - Ensure lockout for failed password attempts is configured (Scored)

cat /etc/pam.d/password-auth | grep -E "auth\s*required\s*pam_faillock.so" || exit $?
cat /etc/pam.d/password-auth | grep -E "auth\s*\[success=1\s*default=bad\]\s*pam_unix.so" || exit $?
cat /etc/pam.d/password-auth | grep -E "auth\s*\[default=die\]\s*pam_faillock.so" ||exit $?
cat /etc/pam.d/password-auth | grep -E "auth\s*sufficient\s*pam_faillock.so" || exit $?

cat /etc/pam.d/system-auth | grep -E "auth\s*required\s*pam_faillock.so" || exit $?
cat /etc/pam.d/system-auth | grep -E "auth\s*\[success=1\s*default=bad\]\s*pam_unix.so" || exit $?
cat /etc/pam.d/system-auth | grep -E "auth\s*\[default=die\]\s*pam_faillock.so" ||exit $?
cat /etc/pam.d/system-auth | grep -E "auth\s*sufficient\s*pam_faillock.so" || exit $?
