#!/bin/sh
# ** AUTO GENERATED **

# 1.1.10 - Ensure noexec option set on /var/tmp partition (Scored)

mount | grep /var/tmp | grep noexec || exit $?
