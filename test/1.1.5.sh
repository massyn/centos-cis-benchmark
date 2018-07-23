#!/bin/sh
# ** AUTO GENERATED **

# 1.1.5 - Ensure noexec option set on /tmp partition (Scored)

mount | grep /tmp | grep noexec || exit $?
