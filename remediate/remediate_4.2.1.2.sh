#!/bin/sh
# ** AUTO GENERATED **

# 4.2.1.2 - Ensure logging is configured (Not Scored)

echo '*.emerg :omusrmsg:*' >> /etc/rsyslog.d/CIS.conf
echo 'mail.* -/var/log/mail' >> /etc/rsyslog.d/CIS.conf
echo 'mail.info -/var/log/mail.info' >> /etc/rsyslog.d/CIS.conf
echo 'mail.warning -/var/log/mail.warn' >> /etc/rsyslog.d/CIS.conf
echo 'mail.err /var/log/mail.err' >> /etc/rsyslog.d/CIS.conf
echo 'news.crit -/var/log/news/news.crit' >> /etc/rsyslog.d/CIS.conf
echo 'news.err -/var/log/news/news.err' >> /etc/rsyslog.d/CIS.conf
echo 'news.notice -/var/log/news/news.notice' >> /etc/rsyslog.d/CIS.conf
echo '*.=warning;*.=err -/var/log/warn' >> /etc/rsyslog.d/CIS.conf
echo '*.crit /var/log/warn' >> /etc/rsyslog.d/CIS.conf
echo '*.*;mail.none;news.none -/var/log/messages' >> /etc/rsyslog.d/CIS.conf
echo 'local0,local1.* -/var/log/localmessages' >> /etc/rsyslog.d/CIS.conf
echo 'local2,local3.* -/var/log/localmessages' >> /etc/rsyslog.d/CIS.conf
echo 'local4,local5.* -/var/log/localmessages' >> /etc/rsyslog.d/CIS.conf
echo 'local6,local7.* -/var/log/localmessages' >> /etc/rsyslog.d/CIS.conf
