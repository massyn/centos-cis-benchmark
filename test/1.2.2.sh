#!/bin/sh

# 1.2.2 - Ensure GPG keys are configured (Not Scored)

rpm -q gpg-pubkey --qf '%{name}-%{version}-%{release}' |grep 'gpg-pubkey-c105b9de-4e0fd3a3' || exit 1
