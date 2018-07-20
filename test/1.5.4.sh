#!/bin/sh

# 1.5.4 Ensure prelink is disabled (Scored)

rpm -q prelink | grep -E "package prelink is not installed" || exit $1
