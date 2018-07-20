#!/bin/sh

# 1.6.1.4 Ensure SETroubleshoot is not installed (Scored)

rpm -q setroubleshoot | grep -E "package setroubleshoot is not installed" || exit $?
