#!/bin/sh

# 1.2.3 Ensure gpgcheck is globally activated (Scored)

grep ^gpgcheck /etc/yum.conf | grep -E "gpgcheck=1" || exit $?

gpg=$(grep ^gpgcheck /etc/yum.repos.d/* | grep -v "gpgcheck=1")
[[ -z "${gpg}" ]] || exit 1
