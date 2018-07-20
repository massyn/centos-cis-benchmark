#!/bin/sh

# 1.3.1 Ensure AIDE is installed (Scored)

rpm -q aide | grep aide || exit $1
