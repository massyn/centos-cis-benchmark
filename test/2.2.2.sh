#!/bin/sh
# ** AUTO GENERATED **

# 2.2.2 - Ensure X Window System is not installed (Scored)

out=$(rpm -qa xorg-x11*)
[[ -z "${out}" ]] || exit 1
