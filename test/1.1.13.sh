#!/bin/sh

# 1.1.13 Ensure separate partition exists for /home (Scored)

mount | grep /home || exit $?
