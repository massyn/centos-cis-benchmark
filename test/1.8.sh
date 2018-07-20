#!/bin/sh

# 1.8 Ensure updates, patches, and additional security software are installed (Not Scored)

out=$(yum check-update)
[[ -z "${out}" ]] || exit 1
