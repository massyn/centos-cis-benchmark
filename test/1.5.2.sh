#!/bin/sh

# 1.5.2 Ensure XD/NX support is enabled (Not Scored)

dmesg | grep NX | grep "NX (Execute Disable) protection: active" || exit $1
