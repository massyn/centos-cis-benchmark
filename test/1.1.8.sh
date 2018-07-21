#!/bin/sh

# 1.1.8 Ensure nodev option set on /var/tmp partition (Scored)

mount | grep "/var/tmp" | grep "nodev" || exit $?
