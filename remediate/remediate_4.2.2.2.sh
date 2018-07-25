#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.2 - Ensure logging is configured (Not Scored)

echo "log { source(src); source(chroots); filter(f_console); destination(console); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_console); destination(xconsole); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_newscrit); destination(newscrit); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_newserr); destination(newserr); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_newsnotice); destination(newsnotice); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_mailinfo); destination(mailinfo); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_mailwarn); destination(mailwarn); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_mailerr); destination(mailerr); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_mail); destination(mail); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_acpid); destination(acpid); flags(final); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_acpid_full); destination(devnull); flags(final); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_acpid_old); destination(acpid); flags(final); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_netmgm); destination(netmgm); flags(final); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_local); destination(localmessages); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_messages); destination(messages); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_iptables); destination(firewall); };" >> /etc/syslog-ng/syslog-ng.conf
echo "log { source(src); source(chroots); filter(f_warn); destination(warn); };" >> /etc/syslog-ng/syslog-ng.conf

