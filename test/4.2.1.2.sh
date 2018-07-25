#!/bin/sh
# ** AUTO GENERATED **

# 4.2.1.2 - Ensure logging is configured (Not Scored)

grep "\*.emerg\s*:omusrmsg:\*" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "mail.\*\s*-/var/log/mail" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "mail.info\s*-/var/log/mail.info" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "mail.warning\s*-/var/log/mail.warn" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "mail.err\s*/var/log/mail.err" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "news.crit\s*-/var/log/news/news.crit" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "news.err\s*-/var/log/news/news.err" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "news.notice\s*-/var/log/news/news.notice" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "\*.=warning;\*.=err\s*-/var/log/warn" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "\*.crit\s*/var/log/warn" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "\*.\*;mail.none;news.none\s*-/var/log/messages" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "local0,local1.\*\s*-/var/log/localmessages" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "local2,local3.\*\s*-/var/log/localmessages" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "local4,local5.\*\s*-/var/log/localmessages" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
grep "local6,local7.\*\s*-/var/log/localmessages" /etc/rsyslog.conf /etc/rsyslog.d/*.conf || exit 1
