#!/bin/sh

# 1.6.1.5 Ensure the MCS Translation Service (mcstrans) is not installed (Scored)

rpm -q mcstrans | grep -E "package mcstrans is not installed" || exit $1
