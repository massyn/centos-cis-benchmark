#!/bin/sh

# 5.1.8 Ensure at/cron is restricted to authorized users (Scored)

if [[ -f /etc/cron.deny ]]; then
  echo /etc/cron.deny exists
  exit 1
fi

if [[ -f /etc/at.deny ]]; then
  echo /etc/at.deny exists
  exit 1
fi

stat -L -c "%a %u %g" /etc/cron.allow  | grep "600 0 0$" || exit $?
stat -L -c "%a %u %g" /etc/at.allow  | grep "600 0 0$" || exit $?
