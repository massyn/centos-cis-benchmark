#!/bin/sh
# ** AUTO GENERATED **

# 2.3.3 - Ensure talk client is not installed (Scored)

rpm -q talk | grep -E "package talk is not installed" || exit $1
