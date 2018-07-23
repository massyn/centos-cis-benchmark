#!/bin/sh
# ** AUTO GENERATED **

# 1.8 - Ensure updates, patches, and additional security software are installed (Not Scored)

out=$(yum check-update | grep -vE " \* (base|extras|updates)" | grep -vE "^Load")
[[ -z "${out}" ]] || exit 1
