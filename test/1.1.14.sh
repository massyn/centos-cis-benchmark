#!/bin/sh

# 1.1.14 Ensure nodev option set on /home partition (Scored)

mount | grep "/home" | grep "nodev" || exit $?
