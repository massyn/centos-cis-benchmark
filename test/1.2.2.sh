#!/bin/sh
# ** AUTO GENERATED **

# 1.2.2 - Ensure GPG keys are configured (Not Scored)

rpm -q gpg-pubkey --qf '%{name}-%{version}-%{release}' |grep 'gpg-pubkey-f4a80eb5-53a7ff4b' || exit 1
